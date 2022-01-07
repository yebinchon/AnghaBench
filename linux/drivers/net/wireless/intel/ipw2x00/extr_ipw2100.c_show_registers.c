
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct net_device {int dummy; } ;
struct ipw2100_priv {struct net_device* net_dev; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_3__ {int addr; char* name; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 struct ipw2100_priv* dev_get_drvdata (struct device*) ;
 TYPE_1__* hw_data ;
 int read_register (struct net_device*,int,int*) ;
 int sprintf (char*,char*,char*,...) ;

__attribute__((used)) static ssize_t show_registers(struct device *d, struct device_attribute *attr,
         char *buf)
{
 int i;
 struct ipw2100_priv *priv = dev_get_drvdata(d);
 struct net_device *dev = priv->net_dev;
 char *out = buf;
 u32 val = 0;

 out += sprintf(out, "%30s [Address ] : Hex\n", "Register");

 for (i = 0; i < ARRAY_SIZE(hw_data); i++) {
  read_register(dev, hw_data[i].addr, &val);
  out += sprintf(out, "%30s [%08X] : %08X\n",
          hw_data[i].name, hw_data[i].addr, val);
 }

 return out - buf;
}
