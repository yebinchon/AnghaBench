
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_info {scalar_t__ priv; } ;
struct erase_info {int addr; int len; } ;


 int EINVAL ;
 scalar_t__ check_offs_len (struct mtd_info*,int,int ) ;
 int memset (char*,int,int ) ;

__attribute__((used)) static int ram_erase(struct mtd_info *mtd, struct erase_info *instr)
{
 if (check_offs_len(mtd, instr->addr, instr->len))
  return -EINVAL;
 memset((char *)mtd->priv + instr->addr, 0xff, instr->len);

 return 0;
}
