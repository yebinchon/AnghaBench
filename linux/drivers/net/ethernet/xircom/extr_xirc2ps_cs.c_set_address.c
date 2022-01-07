
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct set_address_info {unsigned int ioaddr; int reg_nr; scalar_t__ mohawk; int page_nr; } ;


 int PutByte (int ,char) ;
 int SelectPage (int ) ;

__attribute__((used)) static void set_address(struct set_address_info *sa_info, char *addr)
{
 unsigned int ioaddr = sa_info->ioaddr;
 int i;

 for (i = 0; i < 6; i++) {
  if (sa_info->reg_nr > 15) {
   sa_info->reg_nr = 8;
   sa_info->page_nr++;
   SelectPage(sa_info->page_nr);
  }
  if (sa_info->mohawk)
   PutByte(sa_info->reg_nr++, addr[5 - i]);
  else
   PutByte(sa_info->reg_nr++, addr[i]);
 }
}
