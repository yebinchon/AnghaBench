
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dev; } ;
struct netsec_priv {int freq; } ;


 int CONFIG_ACPI ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 int dev_err (int *,char*) ;
 int device_property_read_u32 (int *,char*,int *) ;

__attribute__((used)) static int netsec_acpi_probe(struct platform_device *pdev,
        struct netsec_priv *priv, u32 *phy_addr)
{
 int ret;

 if (!IS_ENABLED(CONFIG_ACPI))
  return -ENODEV;

 ret = device_property_read_u32(&pdev->dev, "phy-channel", phy_addr);
 if (ret) {
  dev_err(&pdev->dev,
   "missing required property 'phy-channel'\n");
  return ret;
 }

 ret = device_property_read_u32(&pdev->dev,
           "socionext,phy-clock-frequency",
           &priv->freq);
 if (ret)
  dev_err(&pdev->dev,
   "missing required property 'socionext,phy-clock-frequency'\n");
 return ret;
}
