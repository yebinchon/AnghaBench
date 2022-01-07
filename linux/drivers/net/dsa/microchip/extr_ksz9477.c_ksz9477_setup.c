
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_table {int dummy; } ;
struct ksz_device {int vlan_cache; int num_vlans; int dev; } ;
struct dsa_switch {int dev; struct ksz_device* priv; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int MULTICAST_STORM_DISABLE ;
 int REG_SW_MAC_CTRL_0 ;
 int REG_SW_MAC_CTRL_1 ;
 int REG_SW_MAC_CTRL_5 ;
 int REG_SW_MAC_CTRL_6 ;
 int REG_SW_OPERATION ;
 int REG_SW_QM_CTRL__4 ;
 int SW_CHECK_LENGTH ;
 int SW_LEGAL_PACKET_DISABLE ;
 int SW_MIB_COUNTER_FREEZE ;
 int SW_OUT_RATE_LIMIT_QUEUE_BASED ;
 int SW_START ;
 int UNICAST_VLAN_BOUNDARY ;
 int dev_err (int ,char*) ;
 int devm_kcalloc (int ,int,int ,int ) ;
 int ksz9477_cfg32 (struct ksz_device*,int ,int ,int) ;
 int ksz9477_config_cpu_port (struct dsa_switch*) ;
 int ksz9477_reset_switch (struct ksz_device*) ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_init_mib_timer (struct ksz_device*) ;

__attribute__((used)) static int ksz9477_setup(struct dsa_switch *ds)
{
 struct ksz_device *dev = ds->priv;
 int ret = 0;

 dev->vlan_cache = devm_kcalloc(dev->dev, sizeof(struct vlan_table),
           dev->num_vlans, GFP_KERNEL);
 if (!dev->vlan_cache)
  return -ENOMEM;

 ret = ksz9477_reset_switch(dev);
 if (ret) {
  dev_err(ds->dev, "failed to reset switch\n");
  return ret;
 }


 ksz9477_cfg32(dev, REG_SW_QM_CTRL__4, UNICAST_VLAN_BOUNDARY,
        1);


 ksz_cfg(dev, REG_SW_MAC_CTRL_0, SW_CHECK_LENGTH, 0);


 ksz_cfg(dev, REG_SW_MAC_CTRL_1, SW_LEGAL_PACKET_DISABLE, 1);

 ksz9477_config_cpu_port(ds);

 ksz_cfg(dev, REG_SW_MAC_CTRL_1, MULTICAST_STORM_DISABLE, 1);


 ksz_cfg(dev, REG_SW_MAC_CTRL_5, SW_OUT_RATE_LIMIT_QUEUE_BASED, 1);


 ksz_cfg(dev, REG_SW_MAC_CTRL_6, SW_MIB_COUNTER_FREEZE, 1);


 ksz_cfg(dev, REG_SW_OPERATION, SW_START, 1);

 ksz_init_mib_timer(dev);

 return 0;
}
