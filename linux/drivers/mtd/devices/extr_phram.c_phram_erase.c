
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mtd_info {int * priv; } ;
struct erase_info {int addr; int len; } ;


 int memset (int *,int,int ) ;

__attribute__((used)) static int phram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 u_char *start = mtd->priv;

 memset(start + instr->addr, 0xff, instr->len);

 return 0;
}
