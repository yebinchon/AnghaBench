
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_device {int dummy; } ;


 int DEBUG_EXTRA ;
 int DEBUG_HW ;
 int PDEBUG (int ,char*,...) ;
 int dev_info ;
 int prism2_config (struct pcmcia_device*) ;

__attribute__((used)) static int hostap_cs_probe(struct pcmcia_device *p_dev)
{
 int ret;

 PDEBUG(DEBUG_HW, "%s: setting Vcc=33 (constant)\n", dev_info);

 ret = prism2_config(p_dev);
 if (ret) {
  PDEBUG(DEBUG_EXTRA, "prism2_config() failed\n");
 }

 return ret;
}
