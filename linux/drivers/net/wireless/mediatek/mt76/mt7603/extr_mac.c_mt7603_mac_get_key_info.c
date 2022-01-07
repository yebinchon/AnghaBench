
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_key_conf {int keylen; int cipher; int key; } ;
typedef enum mt7603_cipher_type { ____Placeholder_mt7603_cipher_type } mt7603_cipher_type ;


 int MT_CIPHER_AES_CCMP ;
 int MT_CIPHER_NONE ;
 int MT_CIPHER_TKIP ;
 int MT_CIPHER_WEP104 ;
 int MT_CIPHER_WEP40 ;




 int memcpy (int *,int ,int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static enum mt7603_cipher_type
mt7603_mac_get_key_info(struct ieee80211_key_conf *key, u8 *key_data)
{
 memset(key_data, 0, 32);
 if (!key)
  return MT_CIPHER_NONE;

 if (key->keylen > 32)
  return MT_CIPHER_NONE;

 memcpy(key_data, key->key, key->keylen);

 switch (key->cipher) {
 case 128:
  return MT_CIPHER_WEP40;
 case 129:
  return MT_CIPHER_WEP104;
 case 130:

  memcpy(key_data + 16, key->key + 24, 8);
  memcpy(key_data + 24, key->key + 16, 8);
  return MT_CIPHER_TKIP;
 case 131:
  return MT_CIPHER_AES_CCMP;
 default:
  return MT_CIPHER_NONE;
 }
}
