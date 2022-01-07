
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct rr_private {int dummy; } ;
typedef int __be32 ;


 int be32_to_cpu (int ) ;
 int rr_read_eeprom (struct rr_private*,size_t,unsigned char*,int) ;

__attribute__((used)) static u32 rr_read_eeprom_word(struct rr_private *rrpriv,
       size_t offset)
{
 __be32 word;

 if ((rr_read_eeprom(rrpriv, offset,
       (unsigned char *)&word, 4) == 4))
  return be32_to_cpu(word);
 return 0;
}
