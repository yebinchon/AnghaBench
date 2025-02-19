
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dev; } ;


 int SYS_ERR_MASK_FFLP ;
 int SYS_ERR_MASK_IPP ;
 int SYS_ERR_MASK_MAC ;
 int SYS_ERR_MASK_META1 ;
 int SYS_ERR_MASK_META2 ;
 int SYS_ERR_MASK_PEU ;
 int SYS_ERR_MASK_RDMC ;
 int SYS_ERR_MASK_SMX ;
 int SYS_ERR_MASK_TDMC ;
 int SYS_ERR_MASK_TXC ;
 int SYS_ERR_MASK_ZCP ;
 int netdev_err (int ,char*) ;
 int pr_cont (char*) ;

__attribute__((used)) static void niu_log_device_error(struct niu *np, u64 stat)
{
 netdev_err(np->dev, "Core device errors ( ");

 if (stat & SYS_ERR_MASK_META2)
  pr_cont("META2 ");
 if (stat & SYS_ERR_MASK_META1)
  pr_cont("META1 ");
 if (stat & SYS_ERR_MASK_PEU)
  pr_cont("PEU ");
 if (stat & SYS_ERR_MASK_TXC)
  pr_cont("TXC ");
 if (stat & SYS_ERR_MASK_RDMC)
  pr_cont("RDMC ");
 if (stat & SYS_ERR_MASK_TDMC)
  pr_cont("TDMC ");
 if (stat & SYS_ERR_MASK_ZCP)
  pr_cont("ZCP ");
 if (stat & SYS_ERR_MASK_FFLP)
  pr_cont("FFLP ");
 if (stat & SYS_ERR_MASK_IPP)
  pr_cont("IPP ");
 if (stat & SYS_ERR_MASK_MAC)
  pr_cont("MAC ");
 if (stat & SYS_ERR_MASK_SMX)
  pr_cont("SMX ");

 pr_cont(")\n");
}
