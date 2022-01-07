
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dev; } ;


 int b53_possible_cpu_port (struct dsa_switch*,int) ;
 int dev_warn (int ,char*,int) ;

__attribute__((used)) static bool b53_can_enable_brcm_tags(struct dsa_switch *ds, int port)
{
 bool ret = b53_possible_cpu_port(ds, port);

 if (!ret)
  dev_warn(ds->dev, "Port %d is not Broadcom tag capable\n",
    port);
 return ret;
}
