
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vlan_table {int dummy; } ;
struct ksz_device {int host_mask; int * regmap; int vlan_cache; int num_vlans; int dev; } ;
struct dsa_switch {int dev; struct ksz_device* priv; } ;
struct alu_struct {int is_static; int is_override; int port_forward; int mac; } ;
typedef int alu ;


 int BROADCAST_STORM_PROT_RATE ;
 int BROADCAST_STORM_RATE ;
 int BROADCAST_STORM_VALUE ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int MULTICAST_STORM_DISABLE ;
 int NO_EXC_COLLISION_DROP ;
 int REG_SW_CTRL_1 ;
 int REG_SW_CTRL_2 ;
 int SW_AGGR_BACKOFF ;
 int SW_FLOW_CTRL ;
 int SW_LINK_AUTO_AGING ;
 int SW_MIRROR_RX_TX ;
 int SW_REPLACE_VID ;
 int S_LINK_AGING_CTRL ;
 int S_MIRROR_CTRL ;
 int S_REPLACE_VID_CTRL ;
 int UNICAST_VLAN_BOUNDARY ;
 int VLAN_TABLE_ENTRIES ;
 int dev_err (int ,char*) ;
 int devm_kcalloc (int ,int,int ,int ) ;
 int eth_stp_addr ;
 int ether_addr_copy (int ,int ) ;
 int ksz8795_config_cpu_port (struct dsa_switch*) ;
 int ksz8795_r_vlan_entries (struct ksz_device*,int) ;
 int ksz8795_reset_switch (struct ksz_device*) ;
 int ksz8795_w_sta_mac_table (struct ksz_device*,int ,struct alu_struct*) ;
 int ksz_cfg (struct ksz_device*,int ,int ,int) ;
 int ksz_init_mib_timer (struct ksz_device*) ;
 int memset (struct alu_struct*,int ,int) ;
 int regmap_update_bits (int ,int ,int,int) ;

__attribute__((used)) static int ksz8795_setup(struct dsa_switch *ds)
{
 struct ksz_device *dev = ds->priv;
 struct alu_struct alu;
 int i, ret = 0;

 dev->vlan_cache = devm_kcalloc(dev->dev, sizeof(struct vlan_table),
           dev->num_vlans, GFP_KERNEL);
 if (!dev->vlan_cache)
  return -ENOMEM;

 ret = ksz8795_reset_switch(dev);
 if (ret) {
  dev_err(ds->dev, "failed to reset switch\n");
  return ret;
 }

 ksz_cfg(dev, S_REPLACE_VID_CTRL, SW_FLOW_CTRL, 1);


 ksz_cfg(dev, S_LINK_AGING_CTRL, SW_LINK_AUTO_AGING, 1);


 regmap_update_bits(dev->regmap[0], REG_SW_CTRL_1,
      SW_AGGR_BACKOFF, SW_AGGR_BACKOFF);





 regmap_update_bits(dev->regmap[0], REG_SW_CTRL_2,
      UNICAST_VLAN_BOUNDARY | NO_EXC_COLLISION_DROP,
      UNICAST_VLAN_BOUNDARY | NO_EXC_COLLISION_DROP);

 ksz8795_config_cpu_port(ds);

 ksz_cfg(dev, REG_SW_CTRL_2, MULTICAST_STORM_DISABLE, 1);

 ksz_cfg(dev, S_REPLACE_VID_CTRL, SW_REPLACE_VID, 0);

 ksz_cfg(dev, S_MIRROR_CTRL, SW_MIRROR_RX_TX, 0);


 regmap_update_bits(dev->regmap[1], S_REPLACE_VID_CTRL,
      BROADCAST_STORM_RATE,
      (BROADCAST_STORM_VALUE *
      BROADCAST_STORM_PROT_RATE) / 100);

 for (i = 0; i < VLAN_TABLE_ENTRIES; i++)
  ksz8795_r_vlan_entries(dev, i);


 memset(&alu, 0, sizeof(alu));
 ether_addr_copy(alu.mac, eth_stp_addr);
 alu.is_static = 1;
 alu.is_override = 1;
 alu.port_forward = dev->host_mask;

 ksz8795_w_sta_mac_table(dev, 0, &alu);

 ksz_init_mib_timer(dev);

 return 0;
}
