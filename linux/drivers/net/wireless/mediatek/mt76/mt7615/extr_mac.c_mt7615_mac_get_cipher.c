
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum mt7615_cipher_type { ____Placeholder_mt7615_cipher_type } mt7615_cipher_type ;


 int MT_CIPHER_AES_CCMP ;
 int MT_CIPHER_BIP_CMAC_128 ;
 int MT_CIPHER_CCMP_256 ;
 int MT_CIPHER_GCMP ;
 int MT_CIPHER_GCMP_256 ;
 int MT_CIPHER_NONE ;
 int MT_CIPHER_TKIP ;
 int MT_CIPHER_WAPI ;
 int MT_CIPHER_WEP104 ;
 int MT_CIPHER_WEP40 ;
__attribute__((used)) static enum mt7615_cipher_type
mt7615_mac_get_cipher(int cipher)
{
 switch (cipher) {
 case 128:
  return MT_CIPHER_WEP40;
 case 129:
  return MT_CIPHER_WEP104;
 case 130:
  return MT_CIPHER_TKIP;
 case 136:
  return MT_CIPHER_BIP_CMAC_128;
 case 135:
  return MT_CIPHER_AES_CCMP;
 case 134:
  return MT_CIPHER_CCMP_256;
 case 133:
  return MT_CIPHER_GCMP;
 case 132:
  return MT_CIPHER_GCMP_256;
 case 131:
  return MT_CIPHER_WAPI;
 default:
  return MT_CIPHER_NONE;
 }
}
