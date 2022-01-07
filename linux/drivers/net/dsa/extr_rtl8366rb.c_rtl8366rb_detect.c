
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int num_mib_counters; int mib_counters; int num_vlan_mc; int num_ports; int cpu_port; int map; struct device* dev; } ;
struct device {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int RTL8366RB_NUM_PORTS ;
 int RTL8366RB_NUM_VLANS ;
 int RTL8366RB_PORT_NUM_CPU ;
 int dev_err (struct device*,char*,...) ;
 int dev_info (struct device*,char*,...) ;
 int regmap_read (int ,int,int*) ;
 int rtl8366rb_mib_counters ;
 int rtl8366rb_reset_chip (struct realtek_smi*) ;

__attribute__((used)) static int rtl8366rb_detect(struct realtek_smi *smi)
{
 struct device *dev = smi->dev;
 int ret;
 u32 val;


 ret = regmap_read(smi->map, 0x5c, &val);
 if (ret) {
  dev_err(dev, "can't get chip ID (%d)\n", ret);
  return ret;
 }

 switch (val) {
 case 0x6027:
  dev_info(dev, "found an RTL8366S switch\n");
  dev_err(dev, "this switch is not yet supported, submit patches!\n");
  return -ENODEV;
 case 0x5937:
  dev_info(dev, "found an RTL8366RB switch\n");
  smi->cpu_port = RTL8366RB_PORT_NUM_CPU;
  smi->num_ports = RTL8366RB_NUM_PORTS;
  smi->num_vlan_mc = RTL8366RB_NUM_VLANS;
  smi->mib_counters = rtl8366rb_mib_counters;
  smi->num_mib_counters = ARRAY_SIZE(rtl8366rb_mib_counters);
  break;
 default:
  dev_info(dev, "found an Unknown Realtek switch (id=0x%04x)\n",
    val);
  break;
 }

 ret = rtl8366rb_reset_chip(smi);
 if (ret)
  return ret;

 return 0;
}
