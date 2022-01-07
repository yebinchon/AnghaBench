
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct sockaddr {int sa_data; } ;
struct net_device {int name; int * dev_addr; } ;
struct TYPE_5__ {int uc_count; scalar_t__ mc_count; int group_prom; int * uc_table; } ;
typedef TYPE_1__ DFX_board_t ;


 int DBG_printk (char*,int ) ;
 scalar_t__ DFX_K_SUCCESS ;
 int FDDI_K_ALEN ;
 scalar_t__ PI_CMD_ADDR_FILTER_K_SIZE ;
 int PI_FSTATE_K_PASS ;
 scalar_t__ dfx_ctl_update_cam (TYPE_1__*) ;
 scalar_t__ dfx_ctl_update_filters (TYPE_1__*) ;
 int memcpy (int *,int ,int ) ;
 TYPE_1__* netdev_priv (struct net_device*) ;

__attribute__((used)) static int dfx_ctl_set_mac_address(struct net_device *dev, void *addr)
 {
 struct sockaddr *p_sockaddr = (struct sockaddr *)addr;
 DFX_board_t *bp = netdev_priv(dev);



 memcpy(dev->dev_addr, p_sockaddr->sa_data, FDDI_K_ALEN);
 memcpy(&bp->uc_table[0], p_sockaddr->sa_data, FDDI_K_ALEN);
 bp->uc_count = 1;
 if ((bp->uc_count + bp->mc_count) > PI_CMD_ADDR_FILTER_K_SIZE)
  {
  bp->group_prom = PI_FSTATE_K_PASS;
  bp->mc_count = 0;



  if (dfx_ctl_update_filters(bp) != DFX_K_SUCCESS)
   {
   DBG_printk("%s: Could not update adapter filters!\n", dev->name);
   }
  else
   {
   DBG_printk("%s: Adapter filters updated!\n", dev->name);
   }
  }



 if (dfx_ctl_update_cam(bp) != DFX_K_SUCCESS)
  {
  DBG_printk("%s: Could not set new MAC address!\n", dev->name);
  }
 else
  {
  DBG_printk("%s: Adapter CAM updated with new MAC address\n", dev->name);
  }
 return 0;
 }
