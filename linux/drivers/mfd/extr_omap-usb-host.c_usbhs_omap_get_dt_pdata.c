
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbhs_omap_platform_data {int nports; int* port_mode; int single_ulpi_bypass; } ;
struct device_node {int dummy; } ;
struct device {struct device_node* of_node; } ;
typedef int prop ;


 int ARRAY_SIZE (int ) ;
 int ENODEV ;
 int OMAP3_HS_USB_PORTS ;
 int OMAP_USBHS_PORT_MODE_UNUSED ;
 int dev_dbg (struct device*,char*,int,char const*,int) ;
 int dev_warn (struct device*,char*,int,...) ;
 int match_string (int ,int ,char const*) ;
 int of_property_read_bool (struct device_node*,char*) ;
 int of_property_read_string (struct device_node*,char*,char const**) ;
 int of_property_read_u32 (struct device_node*,char*,int*) ;
 int port_modes ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int usbhs_omap_get_dt_pdata(struct device *dev,
     struct usbhs_omap_platform_data *pdata)
{
 int ret, i;
 struct device_node *node = dev->of_node;

 ret = of_property_read_u32(node, "num-ports", &pdata->nports);
 if (ret)
  pdata->nports = 0;

 if (pdata->nports > OMAP3_HS_USB_PORTS) {
  dev_warn(dev, "Too many num_ports <%d> in device tree. Max %d\n",
    pdata->nports, OMAP3_HS_USB_PORTS);
  return -ENODEV;
 }


 for (i = 0; i < OMAP3_HS_USB_PORTS; i++) {
  char prop[11];
  const char *mode;

  pdata->port_mode[i] = OMAP_USBHS_PORT_MODE_UNUSED;

  snprintf(prop, sizeof(prop), "port%d-mode", i + 1);
  ret = of_property_read_string(node, prop, &mode);
  if (ret < 0)
   continue;


  ret = match_string(port_modes, ARRAY_SIZE(port_modes), mode);
  if (ret < 0) {
   dev_warn(dev, "Invalid port%d-mode \"%s\" in device tree\n",
     i, mode);
   return -ENODEV;
  }

  dev_dbg(dev, "port%d-mode: %s -> %d\n", i, mode, ret);
  pdata->port_mode[i] = ret;
 }


 pdata->single_ulpi_bypass = of_property_read_bool(node,
      "single-ulpi-bypass");

 return 0;
}
