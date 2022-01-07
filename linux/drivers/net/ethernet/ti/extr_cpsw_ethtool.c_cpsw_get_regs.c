
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct cpsw_common {int ale; int version; } ;


 int cpsw_ale_dump (int ,int *) ;
 struct cpsw_common* ndev_to_cpsw (struct net_device*) ;

void cpsw_get_regs(struct net_device *ndev, struct ethtool_regs *regs, void *p)
{
 u32 *reg = p;
 struct cpsw_common *cpsw = ndev_to_cpsw(ndev);


 regs->version = cpsw->version;

 cpsw_ale_dump(cpsw->ale, reg);
}
