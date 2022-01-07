
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int __le16 ;


 int PRISM2_PDA_SIZE ;
 int le16_to_cpu (int ) ;

__attribute__((used)) static int prism2_pda_ok(u8 *buf)
{
 __le16 *pda = (__le16 *) buf;
 int pos;
 u16 len, pdr;

 if (buf[0] == 0xff && buf[1] == 0x00 && buf[2] == 0xff &&
     buf[3] == 0x00)
  return 0;

 pos = 0;
 while (pos + 1 < PRISM2_PDA_SIZE / 2) {
  len = le16_to_cpu(pda[pos]);
  pdr = le16_to_cpu(pda[pos + 1]);
  if (len == 0 || pos + len > PRISM2_PDA_SIZE / 2)
   return 0;

  if (pdr == 0x0000 && len == 2) {

   return 1;
  }

  pos += len + 1;
 }

 return 0;
}
