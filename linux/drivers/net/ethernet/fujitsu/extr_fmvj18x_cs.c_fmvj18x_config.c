
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* u_char ;
typedef void* u8 ;
struct pcmcia_device {int io_lines; int manf_id; int config_base; int config_index; int dev; TYPE_1__** resource; int irq; int card_id; struct net_device* priv; } ;
struct net_device {unsigned int base_addr; void** dev_addr; int irq; } ;
struct local_info {int cardtype; } ;
typedef enum cardtype { ____Placeholder_cardtype } cardtype ;
struct TYPE_2__ {int end; unsigned int start; } ;


 int BANK_0 ;
 int BANK_0U ;
 int CISTPL_FUNCE ;
 int CONFIG0_RST ;
 int CONFIG0_RST_1 ;
 scalar_t__ CONFIG_0 ;
 scalar_t__ CONFIG_1 ;

 int ENODEV ;


 int MAC_ID ;
 int PRODID_FUJITSU_MBH10302 ;
 int PRODID_FUJITSU_MBH10304 ;
 int PRODID_TDK_GN3410 ;
 int PRODID_TDK_MN3200 ;
 int PRODID_TDK_NP9610 ;
 int SET_NETDEV_DEV (struct net_device*,int *) ;


 int UNGERMANN_MAC_ID ;

 int dev_dbg (int *,char*) ;
 int fjn_interrupt ;
 int fmvj18x_get_hwinfo (struct pcmcia_device*,void**) ;
 int fmvj18x_ioprobe ;
 int fmvj18x_release (struct pcmcia_device*) ;
 int fmvj18x_setup_mfc (struct pcmcia_device*) ;
 void* inb (int ) ;
 int kfree (void**) ;
 int mfc_try_io_port (struct pcmcia_device*) ;
 int netdev_info (struct net_device*,char*,char*,char*,unsigned int,int ,void**) ;
 struct local_info* netdev_priv (struct net_device*) ;
 int outb (int ,scalar_t__) ;
 int pcmcia_enable_device (struct pcmcia_device*) ;
 int pcmcia_get_mac_from_cis (struct pcmcia_device*,struct net_device*) ;
 size_t pcmcia_get_tuple (struct pcmcia_device*,int ,void***) ;
 int pcmcia_loop_config (struct pcmcia_device*,int ,int *) ;
 int pcmcia_request_io (struct pcmcia_device*) ;
 int pcmcia_request_irq (struct pcmcia_device*,int ) ;
 int pr_notice (char*) ;
 scalar_t__ register_netdev (struct net_device*) ;
 scalar_t__ resource_size (TYPE_1__*) ;
 scalar_t__ sram_config ;
 int ungermann_try_io_port (struct pcmcia_device*) ;

__attribute__((used)) static int fmvj18x_config(struct pcmcia_device *link)
{
    struct net_device *dev = link->priv;
    struct local_info *lp = netdev_priv(dev);
    int i, ret;
    unsigned int ioaddr;
    enum cardtype cardtype;
    char *card_name = "unknown";
    u8 *buf;
    size_t len;
    u_char buggybuf[32];

    dev_dbg(&link->dev, "fmvj18x_config\n");

    link->io_lines = 5;

    len = pcmcia_get_tuple(link, CISTPL_FUNCE, &buf);
    kfree(buf);

    if (len) {

 ret = pcmcia_loop_config(link, fmvj18x_ioprobe, ((void*)0));
 if (ret != 0)
  goto failed;

 switch (link->manf_id) {
 case 135:
     cardtype = 130;
     if (link->card_id == PRODID_TDK_GN3410 ||
  link->card_id == PRODID_TDK_NP9610 ||
  link->card_id == PRODID_TDK_MN3200) {

  link->config_base = 0x800;
  link->config_index = 0x47;
  link->resource[1]->end = 8;
     }
     break;
 case 136:
     cardtype = 131;
     link->config_base = 0x800;
     link->config_index = 0x47;
     link->resource[1]->end = 8;
     break;
 case 137:
     cardtype = 141;
     link->config_base = 0x800;
     link->config_index = 0x47;
     link->resource[1]->end = 8;
     break;
 case 139:
     cardtype = 142;
     break;
 case 138:
     if (link->config_base == 0x0fe0)
  cardtype = 133;
     else if (link->card_id == PRODID_FUJITSU_MBH10302)


  cardtype = 132;
     else if (link->card_id == PRODID_FUJITSU_MBH10304)
  cardtype = 132;
     else
  cardtype = 140;
     break;
 default:
     cardtype = 132;
 }
    } else {

 switch (link->manf_id) {
 case 138:
     if (link->card_id == PRODID_FUJITSU_MBH10304) {
  cardtype = 128;
  link->config_index = 0x20;
     } else {
  cardtype = 133;
  link->config_index = 1;
     }
     break;
 case 134:
     cardtype = 129;
     break;
 default:
     cardtype = 133;
     link->config_index = 1;
 }
    }

    if (link->resource[1]->end != 0) {
 ret = mfc_try_io_port(link);
 if (ret != 0) goto failed;
    } else if (cardtype == 129) {
 ret = ungermann_try_io_port(link);
 if (ret != 0) goto failed;
    } else {
     ret = pcmcia_request_io(link);
     if (ret)
      goto failed;
    }
    ret = pcmcia_request_irq(link, fjn_interrupt);
    if (ret)
     goto failed;
    ret = pcmcia_enable_device(link);
    if (ret)
     goto failed;

    dev->irq = link->irq;
    dev->base_addr = link->resource[0]->start;

    if (resource_size(link->resource[1]) != 0) {
 ret = fmvj18x_setup_mfc(link);
 if (ret != 0) goto failed;
    }

    ioaddr = dev->base_addr;


    if (sram_config == 0)
 outb(CONFIG0_RST, ioaddr + CONFIG_0);
    else
 outb(CONFIG0_RST_1, ioaddr + CONFIG_0);


    if (cardtype == 133)
 outb(BANK_0, ioaddr + CONFIG_1);
    else
 outb(BANK_0U, ioaddr + CONFIG_1);


    switch (cardtype) {
    case 132:
    case 130:
    case 140:
    case 142:
    case 131:
    case 141:
 if (cardtype == 132) {
     card_name = "FMV-J182";

     len = pcmcia_get_tuple(link, CISTPL_FUNCE, &buf);
     if (len < 11) {
      kfree(buf);
      goto failed;
     }

     for (i = 0; i < 6; i++)
      dev->dev_addr[i] = buf[i + 5];
     kfree(buf);
 } else {
     if (pcmcia_get_mac_from_cis(link, dev))
  goto failed;
     if( cardtype == 130 ) {
  card_name = "TDK LAK-CD021";
     } else if( cardtype == 140 ) {
  card_name = "LA501";
     } else if( cardtype == 131 ) {
  card_name = "PK-UG-J001";
     } else if( cardtype == 141 ) {
  card_name = "Panasonic";
     } else {
  card_name = "C-NET(PC)C";
     }
 }
 break;
    case 129:

 for (i = 0; i < 6; i++)
     dev->dev_addr[i] = inb(ioaddr + UNGERMANN_MAC_ID + i);
 card_name = "Access/CARD";
 break;
    case 128:

 if (fmvj18x_get_hwinfo(link, buggybuf) == -1) {
     pr_notice("unable to read hardware net address\n");
     goto failed;
 }
 for (i = 0 ; i < 6; i++) {
     dev->dev_addr[i] = buggybuf[i];
 }
 card_name = "FMV-J182";
 break;
    case 133:
    default:

 for (i = 0; i < 6; i++)
     dev->dev_addr[i] = inb(ioaddr + MAC_ID + i);
 card_name = "FMV-J181";
 break;
    }

    lp->cardtype = cardtype;
    SET_NETDEV_DEV(dev, &link->dev);

    if (register_netdev(dev) != 0) {
 pr_notice("register_netdev() failed\n");
 goto failed;
    }


    netdev_info(dev, "%s, sram %s, port %#3lx, irq %d, hw_addr %pM\n",
  card_name, sram_config == 0 ? "4K TX*2" : "8K TX*2",
  dev->base_addr, dev->irq, dev->dev_addr);

    return 0;

failed:
    fmvj18x_release(link);
    return -ENODEV;
}
