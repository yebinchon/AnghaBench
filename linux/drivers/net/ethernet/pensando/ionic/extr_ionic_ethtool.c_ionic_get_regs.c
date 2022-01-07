
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ionic_lif {TYPE_4__* ionic; } ;
struct ethtool_regs {int version; } ;
struct TYPE_7__ {TYPE_1__* dev_cmd_regs; TYPE_2__* dev_info_regs; } ;
struct TYPE_8__ {TYPE_3__ idev; } ;
struct TYPE_6__ {int words; } ;
struct TYPE_5__ {int words; } ;


 int IONIC_DEV_CMD_REG_COUNT ;
 int IONIC_DEV_CMD_REG_VERSION ;
 int IONIC_DEV_INFO_REG_COUNT ;
 int memcpy_fromio (void*,int ,unsigned int) ;
 struct ionic_lif* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ionic_get_regs(struct net_device *netdev, struct ethtool_regs *regs,
      void *p)
{
 struct ionic_lif *lif = netdev_priv(netdev);
 unsigned int size;

 regs->version = IONIC_DEV_CMD_REG_VERSION;

 size = IONIC_DEV_INFO_REG_COUNT * sizeof(u32);
 memcpy_fromio(p, lif->ionic->idev.dev_info_regs->words, size);

 size = IONIC_DEV_CMD_REG_COUNT * sizeof(u32);
 memcpy_fromio(p, lif->ionic->idev.dev_cmd_regs->words, size);
}
