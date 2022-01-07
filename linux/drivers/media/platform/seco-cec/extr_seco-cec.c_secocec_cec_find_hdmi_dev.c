
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
struct cec_dmi_match {char* conn; int devname; int product_name; int sys_vendor; } ;


 int ARRAY_SIZE (struct cec_dmi_match*) ;
 int DMI_PRODUCT_NAME ;
 int DMI_SYS_VENDOR ;
 int EINVAL ;
 int EPROBE_DEFER ;
 struct device* ERR_PTR (int ) ;
 struct device* bus_find_device_by_name (int *,int *,int ) ;
 scalar_t__ dmi_match (int ,int ) ;
 int pci_bus_type ;
 int put_device (struct device*) ;
 struct cec_dmi_match* secocec_dmi_match_table ;

__attribute__((used)) static struct device *secocec_cec_find_hdmi_dev(struct device *dev,
      const char **conn)
{
 int i;

 for (i = 0 ; i < ARRAY_SIZE(secocec_dmi_match_table) ; ++i) {
  const struct cec_dmi_match *m = &secocec_dmi_match_table[i];

  if (dmi_match(DMI_SYS_VENDOR, m->sys_vendor) &&
      dmi_match(DMI_PRODUCT_NAME, m->product_name)) {
   struct device *d;


   d = bus_find_device_by_name(&pci_bus_type, ((void*)0),
          m->devname);
   if (!d)
    return ERR_PTR(-EPROBE_DEFER);

   put_device(d);
   *conn = m->conn;
   return d;
  }
 }

 return ERR_PTR(-EINVAL);
}
