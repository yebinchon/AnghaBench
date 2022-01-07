
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef scalar_t__ u16 ;
struct ath_keyval {int kv_type; scalar_t__ kv_len; scalar_t__ kv_mic; scalar_t__ kv_txmic; scalar_t__ kv_val; } ;
struct ath_common {scalar_t__ keymax; int crypt_caps; void* ah; } ;


 int ANY ;
 int AR_KEYTABLE_KEY0 (scalar_t__) ;
 int AR_KEYTABLE_KEY1 (scalar_t__) ;
 int AR_KEYTABLE_KEY2 (scalar_t__) ;
 int AR_KEYTABLE_KEY3 (scalar_t__) ;
 int AR_KEYTABLE_KEY4 (scalar_t__) ;
 int AR_KEYTABLE_MAC0 (scalar_t__) ;
 int AR_KEYTABLE_MAC1 (scalar_t__) ;
 int AR_KEYTABLE_TYPE (scalar_t__) ;
 int AR_KEYTABLE_TYPE_104 ;
 int AR_KEYTABLE_TYPE_128 ;
 int AR_KEYTABLE_TYPE_40 ;
 int AR_KEYTABLE_TYPE_AES ;
 int AR_KEYTABLE_TYPE_CCM ;
 int AR_KEYTABLE_TYPE_CLR ;
 int AR_KEYTABLE_TYPE_TKIP ;





 int ATH_CRYPT_CAP_CIPHER_AESCCM ;
 int ATH_CRYPT_CAP_MIC_COMBINED ;
 int ENABLE_REGWRITE_BUFFER (void*) ;
 int REGWRITE_BUFFER_FLUSH (void*) ;
 int REG_WRITE (void*,int ,int) ;
 scalar_t__ WLAN_KEY_LEN_WEP104 ;
 scalar_t__ WLAN_KEY_LEN_WEP40 ;
 int ath_dbg (struct ath_common*,int ,char*,...) ;
 int ath_err (struct ath_common*,char*,scalar_t__) ;
 int ath_hw_keysetmac (struct ath_common*,scalar_t__,int const*) ;
 int get_unaligned_le16 (scalar_t__) ;
 int get_unaligned_le32 (scalar_t__) ;

__attribute__((used)) static bool ath_hw_set_keycache_entry(struct ath_common *common, u16 entry,
          const struct ath_keyval *k,
          const u8 *mac)
{
 void *ah = common->ah;
 u32 key0, key1, key2, key3, key4;
 u32 keyType;

 if (entry >= common->keymax) {
  ath_err(common, "set-entry: keycache entry %u out of range\n",
   entry);
  return 0;
 }

 switch (k->kv_type) {
 case 131:
  keyType = AR_KEYTABLE_TYPE_AES;
  break;
 case 132:
  if (!(common->crypt_caps & ATH_CRYPT_CAP_CIPHER_AESCCM)) {
   ath_dbg(common, ANY,
    "AES-CCM not supported by this mac rev\n");
   return 0;
  }
  keyType = AR_KEYTABLE_TYPE_CCM;
  break;
 case 129:
  keyType = AR_KEYTABLE_TYPE_TKIP;
  if (entry + 64 >= common->keymax) {
   ath_dbg(common, ANY,
    "entry %u inappropriate for TKIP\n", entry);
   return 0;
  }
  break;
 case 128:
  if (k->kv_len < WLAN_KEY_LEN_WEP40) {
   ath_dbg(common, ANY, "WEP key length %u too small\n",
    k->kv_len);
   return 0;
  }
  if (k->kv_len <= WLAN_KEY_LEN_WEP40)
   keyType = AR_KEYTABLE_TYPE_40;
  else if (k->kv_len <= WLAN_KEY_LEN_WEP104)
   keyType = AR_KEYTABLE_TYPE_104;
  else
   keyType = AR_KEYTABLE_TYPE_128;
  break;
 case 130:
  keyType = AR_KEYTABLE_TYPE_CLR;
  break;
 default:
  ath_err(common, "cipher %u not supported\n", k->kv_type);
  return 0;
 }

 key0 = get_unaligned_le32(k->kv_val + 0);
 key1 = get_unaligned_le16(k->kv_val + 4);
 key2 = get_unaligned_le32(k->kv_val + 6);
 key3 = get_unaligned_le16(k->kv_val + 10);
 key4 = get_unaligned_le32(k->kv_val + 12);
 if (k->kv_len <= WLAN_KEY_LEN_WEP104)
  key4 &= 0xff;
 if (keyType == AR_KEYTABLE_TYPE_TKIP) {
  u16 micentry = entry + 64;







  REG_WRITE(ah, AR_KEYTABLE_KEY0(entry), ~key0);
  REG_WRITE(ah, AR_KEYTABLE_KEY1(entry), ~key1);


  REG_WRITE(ah, AR_KEYTABLE_KEY2(entry), key2);
  REG_WRITE(ah, AR_KEYTABLE_KEY3(entry), key3);


  REG_WRITE(ah, AR_KEYTABLE_KEY4(entry), key4);
  REG_WRITE(ah, AR_KEYTABLE_TYPE(entry), keyType);


  (void) ath_hw_keysetmac(common, entry, mac);

  if (common->crypt_caps & ATH_CRYPT_CAP_MIC_COMBINED) {
   u32 mic0, mic1, mic2, mic3, mic4;

   mic0 = get_unaligned_le32(k->kv_mic + 0);
   mic2 = get_unaligned_le32(k->kv_mic + 4);
   mic1 = get_unaligned_le16(k->kv_txmic + 2) & 0xffff;
   mic3 = get_unaligned_le16(k->kv_txmic + 0) & 0xffff;
   mic4 = get_unaligned_le32(k->kv_txmic + 4);

   ENABLE_REGWRITE_BUFFER(ah);


   REG_WRITE(ah, AR_KEYTABLE_KEY0(micentry), mic0);
   REG_WRITE(ah, AR_KEYTABLE_KEY1(micentry), mic1);


   REG_WRITE(ah, AR_KEYTABLE_KEY2(micentry), mic2);
   REG_WRITE(ah, AR_KEYTABLE_KEY3(micentry), mic3);


   REG_WRITE(ah, AR_KEYTABLE_KEY4(micentry), mic4);
   REG_WRITE(ah, AR_KEYTABLE_TYPE(micentry),
      AR_KEYTABLE_TYPE_CLR);

   REGWRITE_BUFFER_FLUSH(ah);

  } else {
   u32 mic0, mic2;

   mic0 = get_unaligned_le32(k->kv_mic + 0);
   mic2 = get_unaligned_le32(k->kv_mic + 4);

   ENABLE_REGWRITE_BUFFER(ah);


   REG_WRITE(ah, AR_KEYTABLE_KEY0(micentry), mic0);
   REG_WRITE(ah, AR_KEYTABLE_KEY1(micentry), 0);


   REG_WRITE(ah, AR_KEYTABLE_KEY2(micentry), mic2);
   REG_WRITE(ah, AR_KEYTABLE_KEY3(micentry), 0);


   REG_WRITE(ah, AR_KEYTABLE_KEY4(micentry), 0);
   REG_WRITE(ah, AR_KEYTABLE_TYPE(micentry),
      AR_KEYTABLE_TYPE_CLR);

   REGWRITE_BUFFER_FLUSH(ah);
  }

  ENABLE_REGWRITE_BUFFER(ah);


  REG_WRITE(ah, AR_KEYTABLE_MAC0(micentry), 0);
  REG_WRITE(ah, AR_KEYTABLE_MAC1(micentry), 0);






  REG_WRITE(ah, AR_KEYTABLE_KEY0(entry), key0);
  REG_WRITE(ah, AR_KEYTABLE_KEY1(entry), key1);

  REGWRITE_BUFFER_FLUSH(ah);
 } else {
  ENABLE_REGWRITE_BUFFER(ah);


  REG_WRITE(ah, AR_KEYTABLE_KEY0(entry), key0);
  REG_WRITE(ah, AR_KEYTABLE_KEY1(entry), key1);


  REG_WRITE(ah, AR_KEYTABLE_KEY2(entry), key2);
  REG_WRITE(ah, AR_KEYTABLE_KEY3(entry), key3);


  REG_WRITE(ah, AR_KEYTABLE_KEY4(entry), key4);
  REG_WRITE(ah, AR_KEYTABLE_TYPE(entry), keyType);

  REGWRITE_BUFFER_FLUSH(ah);


  (void) ath_hw_keysetmac(common, entry, mac);
 }

 return 1;
}
