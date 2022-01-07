
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz_device {int * regmap; } ;


 int REG_SW_VLAN_CTRL ;
 unsigned int VLAN_START ;
 int regmap_read_poll_timeout (int ,int ,unsigned int,int,int,int) ;

__attribute__((used)) static int ksz9477_wait_vlan_ctrl_ready(struct ksz_device *dev)
{
 unsigned int val;

 return regmap_read_poll_timeout(dev->regmap[0], REG_SW_VLAN_CTRL,
     val, !(val & VLAN_START), 10, 1000);
}
