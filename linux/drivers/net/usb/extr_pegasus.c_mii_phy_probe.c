
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pegasus_t ;
typedef int __u8 ;
typedef int __u16 ;


 int BMSR_MEDIA ;
 int MII_BMSR ;
 int read_mii_word (int *,int,int ,int*) ;

__attribute__((used)) static __u8 mii_phy_probe(pegasus_t *pegasus)
{
 int i;
 __u16 tmp;

 for (i = 0; i < 32; i++) {
  read_mii_word(pegasus, i, MII_BMSR, &tmp);
  if (tmp == 0 || tmp == 0xffff || (tmp & BMSR_MEDIA) == 0)
   continue;
  else
   return i;
 }

 return 0xff;
}
