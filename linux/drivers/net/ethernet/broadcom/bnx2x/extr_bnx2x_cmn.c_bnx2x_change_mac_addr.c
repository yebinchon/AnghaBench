
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int addr_len; int dev_addr; } ;
struct bnx2x {int dummy; } ;


 int BNX2X_ERR (char*) ;
 int CURR_CFG_MET_OS ;
 int EINVAL ;
 scalar_t__ IS_MF_STORAGE_ONLY (struct bnx2x*) ;
 scalar_t__ IS_PF (struct bnx2x*) ;
 scalar_t__ SHMEM2_HAS (struct bnx2x*,int ) ;
 int SHMEM2_WR (struct bnx2x*,int ,int ) ;
 int bnx2x_set_eth_mac (struct bnx2x*,int) ;
 int curr_cfg ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct bnx2x* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

int bnx2x_change_mac_addr(struct net_device *dev, void *p)
{
 struct sockaddr *addr = p;
 struct bnx2x *bp = netdev_priv(dev);
 int rc = 0;

 if (!is_valid_ether_addr(addr->sa_data)) {
  BNX2X_ERR("Requested MAC address is not valid\n");
  return -EINVAL;
 }

 if (IS_MF_STORAGE_ONLY(bp)) {
  BNX2X_ERR("Can't change address on STORAGE ONLY function\n");
  return -EINVAL;
 }

 if (netif_running(dev)) {
  rc = bnx2x_set_eth_mac(bp, 0);
  if (rc)
   return rc;
 }

 memcpy(dev->dev_addr, addr->sa_data, dev->addr_len);

 if (netif_running(dev))
  rc = bnx2x_set_eth_mac(bp, 1);

 if (IS_PF(bp) && SHMEM2_HAS(bp, curr_cfg))
  SHMEM2_WR(bp, curr_cfg, CURR_CFG_MET_OS);

 return rc;
}
