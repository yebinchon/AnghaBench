
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nand_chip {int bbt_options; int options; struct nand_bbt_descr* badblock_pattern; int badblockpos; } ;
struct nand_bbt_descr {int options; int len; int pattern; int offs; } ;


 int BADBLOCK_SCAN_MASK ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int NAND_BBT_DYNAMICSTRUCT ;
 int NAND_BUSWIDTH_16 ;
 struct nand_bbt_descr* kzalloc (int,int ) ;
 int pr_warn (char*) ;
 int scan_ff_pattern ;

__attribute__((used)) static int nand_create_badblock_pattern(struct nand_chip *this)
{
 struct nand_bbt_descr *bd;
 if (this->badblock_pattern) {
  pr_warn("Bad block pattern already allocated; not replacing\n");
  return -EINVAL;
 }
 bd = kzalloc(sizeof(*bd), GFP_KERNEL);
 if (!bd)
  return -ENOMEM;
 bd->options = this->bbt_options & BADBLOCK_SCAN_MASK;
 bd->offs = this->badblockpos;
 bd->len = (this->options & NAND_BUSWIDTH_16) ? 2 : 1;
 bd->pattern = scan_ff_pattern;
 bd->options |= NAND_BBT_DYNAMICSTRUCT;
 this->badblock_pattern = bd;
 return 0;
}
