
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct rtl8366_mib_counter {int length; scalar_t__ offset; } ;
struct realtek_smi {int map; } ;
typedef int port ;


 int EBUSY ;
 int EIO ;
 int RTL8366RB_MIB_COUNTER_BASE ;
 int RTL8366RB_MIB_COUNTER_PORT_OFFSET ;
 int RTL8366RB_MIB_CTRL_BUSY_MASK ;
 int RTL8366RB_MIB_CTRL_REG ;
 int RTL8366RB_MIB_CTRL_RESET_MASK ;
 int regmap_read (int ,int,int*) ;
 int regmap_write (int ,int,int ) ;

__attribute__((used)) static int rtl8366rb_get_mib_counter(struct realtek_smi *smi,
         int port,
         struct rtl8366_mib_counter *mib,
         u64 *mibvalue)
{
 u32 addr, val;
 int ret;
 int i;

 addr = RTL8366RB_MIB_COUNTER_BASE +
  RTL8366RB_MIB_COUNTER_PORT_OFFSET * (port) +
  mib->offset;




 ret = regmap_write(smi->map, addr, 0);
 if (ret)
  return ret;


 ret = regmap_read(smi->map, RTL8366RB_MIB_CTRL_REG, &val);
 if (ret)
  return -EIO;

 if (val & RTL8366RB_MIB_CTRL_BUSY_MASK)
  return -EBUSY;

 if (val & RTL8366RB_MIB_CTRL_RESET_MASK)
  return -EIO;


 *mibvalue = 0;
 for (i = mib->length; i > 0; i--) {
  ret = regmap_read(smi->map, addr + (i - 1), &val);
  if (ret)
   return ret;
  *mibvalue = (*mibvalue << 16) | (val & 0xFFFF);
 }
 return 0;
}
