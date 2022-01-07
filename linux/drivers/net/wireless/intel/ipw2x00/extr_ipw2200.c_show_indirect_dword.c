
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ipw_priv {int status; int indirect_dword; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int STATUS_INDIRECT_DWORD ;
 struct ipw_priv* dev_get_drvdata (struct device*) ;
 int ipw_read_reg32 (struct ipw_priv*,int ) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t show_indirect_dword(struct device *d,
       struct device_attribute *attr, char *buf)
{
 u32 reg = 0;
 struct ipw_priv *priv = dev_get_drvdata(d);

 if (priv->status & STATUS_INDIRECT_DWORD)
  reg = ipw_read_reg32(priv, priv->indirect_dword);
 else
  reg = 0;

 return sprintf(buf, "0x%08x\n", reg);
}
