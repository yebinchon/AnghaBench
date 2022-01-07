
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct hnae3_handle {TYPE_2__* pdev; TYPE_1__* ae_algo; } ;
struct hnae3_ae_ops {int (* set_fec ) (struct hnae3_handle*,int ) ;} ;
struct ethtool_fecparam {int fec; } ;
struct TYPE_4__ {int revision; } ;
struct TYPE_3__ {struct hnae3_ae_ops* ops; } ;


 int EOPNOTSUPP ;
 int drv ;
 int eth_to_loc_fec (int ) ;
 struct hnae3_handle* hns3_get_handle (struct net_device*) ;
 int netif_dbg (struct hnae3_handle*,int ,struct net_device*,char*,int ) ;
 int stub1 (struct hnae3_handle*,int ) ;

__attribute__((used)) static int hns3_set_fecparam(struct net_device *netdev,
        struct ethtool_fecparam *fec)
{
 struct hnae3_handle *handle = hns3_get_handle(netdev);
 const struct hnae3_ae_ops *ops = handle->ae_algo->ops;
 u32 fec_mode;

 if (handle->pdev->revision == 0x20)
  return -EOPNOTSUPP;

 if (!ops->set_fec)
  return -EOPNOTSUPP;
 fec_mode = eth_to_loc_fec(fec->fec);

 netif_dbg(handle, drv, netdev, "set fecparam: mode=%u\n", fec_mode);

 return ops->set_fec(handle, fec_mode);
}
