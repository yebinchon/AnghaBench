
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {unsigned int base_addr; int name; } ;
struct mii_ioctl_data {int phy_id; int reg_num; int val_in; int val_out; } ;
struct local_info {int mohawk; } ;
struct TYPE_2__ {int ifrn_name; } ;
struct ifreq {TYPE_1__ ifr_ifrn; } ;


 int EOPNOTSUPP ;



 struct mii_ioctl_data* if_mii (struct ifreq*) ;
 int mii_rd (unsigned int,int,int) ;
 int mii_wr (unsigned int,int,int,int ,int) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int pr_debug (char*,int ,int ,int,int,int,int ,int ) ;

__attribute__((used)) static int
do_ioctl(struct net_device *dev, struct ifreq *rq, int cmd)
{
    struct local_info *local = netdev_priv(dev);
    unsigned int ioaddr = dev->base_addr;
    struct mii_ioctl_data *data = if_mii(rq);

    pr_debug("%s: ioctl(%-.6s, %#04x) %04x %04x %04x %04x\n",
   dev->name, rq->ifr_ifrn.ifrn_name, cmd,
   data->phy_id, data->reg_num, data->val_in, data->val_out);

    if (!local->mohawk)
 return -EOPNOTSUPP;

    switch(cmd) {
      case 130:
 data->phy_id = 0;

      case 129:
 data->val_out = mii_rd(ioaddr, data->phy_id & 0x1f,
          data->reg_num & 0x1f);
 break;
      case 128:
 mii_wr(ioaddr, data->phy_id & 0x1f, data->reg_num & 0x1f, data->val_in,
        16);
 break;
      default:
 return -EOPNOTSUPP;
    }
    return 0;
}
