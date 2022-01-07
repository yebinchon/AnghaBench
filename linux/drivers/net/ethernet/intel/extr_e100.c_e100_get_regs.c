
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_9__ {int phy_id; } ;
struct nic {TYPE_5__* mem; TYPE_4__ mii; TYPE_3__* csr; TYPE_1__* pdev; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int version; } ;
struct TYPE_10__ {int dump_buf; } ;
struct TYPE_7__ {int status; int cmd_lo; int cmd_hi; } ;
struct TYPE_8__ {TYPE_2__ scb; } ;
struct TYPE_6__ {int revision; } ;


 int E100_PHY_REGS ;
 int e100_dump ;
 int e100_exec_cb (struct nic*,int *,int ) ;
 int ioread16 (int *) ;
 int ioread8 (int *) ;
 int mdio_read (struct net_device*,int ,int) ;
 int memcpy (int*,int ,int) ;
 int memset (int ,int ,int) ;
 int msleep (int) ;
 struct nic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void e100_get_regs(struct net_device *netdev,
 struct ethtool_regs *regs, void *p)
{
 struct nic *nic = netdev_priv(netdev);
 u32 *buff = p;
 int i;

 regs->version = (1 << 24) | nic->pdev->revision;
 buff[0] = ioread8(&nic->csr->scb.cmd_hi) << 24 |
  ioread8(&nic->csr->scb.cmd_lo) << 16 |
  ioread16(&nic->csr->scb.status);
 for (i = E100_PHY_REGS; i >= 0; i--)
  buff[1 + E100_PHY_REGS - i] =
   mdio_read(netdev, nic->mii.phy_id, i);
 memset(nic->mem->dump_buf, 0, sizeof(nic->mem->dump_buf));
 e100_exec_cb(nic, ((void*)0), e100_dump);
 msleep(10);
 memcpy(&buff[2 + E100_PHY_REGS], nic->mem->dump_buf,
  sizeof(nic->mem->dump_buf));
}
