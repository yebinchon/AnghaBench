
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct nand_subop {TYPE_3__* instrs; } ;
struct nand_chip {int dummy; } ;
struct TYPE_4__ {int timeout_ms; } ;
struct TYPE_5__ {TYPE_1__ waitrdy; } ;
struct TYPE_6__ {TYPE_2__ ctx; } ;


 int nand_soft_waitrdy (struct nand_chip*,int ) ;

__attribute__((used)) static int sunxi_nfc_soft_waitrdy(struct nand_chip *nand,
      const struct nand_subop *subop)
{
 return nand_soft_waitrdy(nand,
     subop->instrs[0].ctx.waitrdy.timeout_ms);
}
