
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int BDCtl; int BuffData; } ;
struct TYPE_3__ {int FDCtl; int FDStat; int FDSystem; int FDNext; } ;
struct TxFD {TYPE_2__ bd; TYPE_1__ fd; } ;


 int le32_to_cpu (int ) ;
 int printk (char*,...) ;

__attribute__((used)) static void
dump_txfd(struct TxFD *fd)
{
 printk("TxFD(%p): %08x %08x %08x %08x\n", fd,
        le32_to_cpu(fd->fd.FDNext),
        le32_to_cpu(fd->fd.FDSystem),
        le32_to_cpu(fd->fd.FDStat),
        le32_to_cpu(fd->fd.FDCtl));
 printk("BD: ");
 printk(" %08x %08x",
        le32_to_cpu(fd->bd.BuffData),
        le32_to_cpu(fd->bd.BDCtl));
 printk("\n");
}
