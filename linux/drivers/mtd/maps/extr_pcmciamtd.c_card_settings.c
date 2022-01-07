
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; int bankwidth; char* name; } ;
struct pcmciamtd_dev {char* mtd_name; TYPE_1__ pcmcia_map; } ;
struct pcmcia_device {char** prod_id; } ;


 int CISTPL_DEVICE ;
 int CISTPL_DEVICE_GEO ;
 int CISTPL_FORMAT ;
 int CISTPL_JEDEC_C ;
 int MAX_PCMCIA_ADDR ;
 int bankwidth ;
 int force_size ;
 int pcmcia_loop_tuple (struct pcmcia_device*,int ,int ,struct pcmciamtd_dev*) ;
 int pcmciamtd_cistpl_device ;
 int pcmciamtd_cistpl_format ;
 int pcmciamtd_cistpl_geo ;
 int pcmciamtd_cistpl_jedec ;
 int pr_debug (char*,...) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void card_settings(struct pcmciamtd_dev *dev, struct pcmcia_device *p_dev, int *new_name)
{
 int i;

 if (p_dev->prod_id[0]) {
  dev->mtd_name[0] = '\0';
  for (i = 0; i < 4; i++) {
   if (i)
    strcat(dev->mtd_name, " ");
   if (p_dev->prod_id[i])
    strcat(dev->mtd_name, p_dev->prod_id[i]);
  }
  pr_debug("Found name: %s\n", dev->mtd_name);
 }

 pcmcia_loop_tuple(p_dev, CISTPL_FORMAT, pcmciamtd_cistpl_format, ((void*)0));
 pcmcia_loop_tuple(p_dev, CISTPL_JEDEC_C, pcmciamtd_cistpl_jedec, ((void*)0));
 pcmcia_loop_tuple(p_dev, CISTPL_DEVICE, pcmciamtd_cistpl_device, dev);
 pcmcia_loop_tuple(p_dev, CISTPL_DEVICE_GEO, pcmciamtd_cistpl_geo, dev);

 if(!dev->pcmcia_map.size)
  dev->pcmcia_map.size = MAX_PCMCIA_ADDR;

 if(!dev->pcmcia_map.bankwidth)
  dev->pcmcia_map.bankwidth = 2;

 if(force_size) {
  dev->pcmcia_map.size = force_size << 20;
  pr_debug("size forced to %dM\n", force_size);
 }

 if(bankwidth) {
  dev->pcmcia_map.bankwidth = bankwidth;
  pr_debug("bankwidth forced to %d\n", bankwidth);
 }

 dev->pcmcia_map.name = dev->mtd_name;
 if(!dev->mtd_name[0]) {
  strcpy(dev->mtd_name, "PCMCIA Memory card");
  *new_name = 1;
 }

 pr_debug("Device: Size: %lu Width:%d Name: %s\n",
       dev->pcmcia_map.size,
       dev->pcmcia_map.bankwidth << 3, dev->mtd_name);
}
