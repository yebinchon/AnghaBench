
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct realtek_smi {int num_ports; int cpu_port; int dev; } ;


 int BIT (int) ;
 int GENMASK (int,int ) ;
 int dev_info (int ,char*,int,int,int) ;
 int rtl8366_enable_vlan (struct realtek_smi*,int) ;
 int rtl8366_reset_vlan (struct realtek_smi*) ;
 int rtl8366_set_pvid (struct realtek_smi*,int,int) ;
 int rtl8366_set_vlan (struct realtek_smi*,int,int,int,int ) ;

int rtl8366_init_vlan(struct realtek_smi *smi)
{
 int port;
 int ret;

 ret = rtl8366_reset_vlan(smi);
 if (ret)
  return ret;




 for (port = 0; port < smi->num_ports; port++) {
  u32 mask;

  if (port == smi->cpu_port)



   mask = GENMASK(smi->num_ports - 1, 0);
  else



   mask = BIT(port) | BIT(smi->cpu_port);






  dev_info(smi->dev, "VLAN%d port mask for port %d, %08x\n",
    (port + 1), port, mask);
  ret = rtl8366_set_vlan(smi, (port + 1), mask, mask, 0);
  if (ret)
   return ret;

  dev_info(smi->dev, "VLAN%d port %d, PVID set to %d\n",
    (port + 1), port, (port + 1));
  ret = rtl8366_set_pvid(smi, port, (port + 1));
  if (ret)
   return ret;
 }

 return rtl8366_enable_vlan(smi, 1);
}
