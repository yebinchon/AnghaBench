
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct ifreq {TYPE_1__ ifr_settings; int * ifr_data; } ;
struct fstioc_write {scalar_t__ size; scalar_t__ offset; } ;
struct fstioc_info {scalar_t__ size; scalar_t__ offset; } ;
struct fst_port_info {int mode; struct fst_card_info* card; } ;
struct fst_card_info {int state; int card_no; int card_lock; scalar_t__ mem; } ;
typedef int info ;


 int CAP_NET_ADMIN ;
 int DBG_IOCTL ;
 int EFAULT ;
 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int EPERM ;





 int FST_DOWNLOAD ;
 int FST_GEN_HDLC ;
 scalar_t__ FST_MEMSIZE ;
 int FST_RAW ;
 int FST_RESET ;
 int FST_RUNNING ;
 int FST_STARTING ;
 int FST_WRB (struct fst_card_info*,int ,int) ;
 int IS_ERR (void*) ;
 int PTR_ERR (void*) ;

 int capable (int ) ;
 int check_started_ok (struct fst_card_info*) ;
 int copy_from_user (struct fstioc_write*,int *,int) ;
 int copy_to_user (int *,struct fstioc_write*,int) ;
 int dbg (int ,char*,int,...) ;
 struct fst_port_info* dev_to_port (struct net_device*) ;
 int fst_cpurelease (struct fst_card_info*) ;
 int fst_cpureset (struct fst_card_info*) ;
 int fst_enable_intr (struct fst_card_info*) ;
 int fst_get_iface (struct fst_card_info*,struct fst_port_info*,struct ifreq*) ;
 int fst_set_iface (struct fst_card_info*,struct fst_port_info*,struct ifreq*) ;
 int gather_conf_info (struct fst_card_info*,struct fst_port_info*,struct fstioc_write*) ;
 int hdlc_ioctl (struct net_device*,struct ifreq*,int) ;
 int interruptHandshake ;
 int kfree (void*) ;
 int memcpy_toio (scalar_t__,void*,scalar_t__) ;
 void* memdup_user (int ,scalar_t__) ;
 int pr_err (char*,int ,int ) ;
 int set_conf_from_info (struct fst_card_info*,struct fst_port_info*,struct fstioc_write*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int
fst_ioctl(struct net_device *dev, struct ifreq *ifr, int cmd)
{
 struct fst_card_info *card;
 struct fst_port_info *port;
 struct fstioc_write wrthdr;
 struct fstioc_info info;
 unsigned long flags;
 void *buf;

 dbg(DBG_IOCTL, "ioctl: %x, %p\n", cmd, ifr->ifr_data);

 port = dev_to_port(dev);
 card = port->card;

 if (!capable(CAP_NET_ADMIN))
  return -EPERM;

 switch (cmd) {
 case 142:
  fst_cpureset(card);
  card->state = FST_RESET;
  return 0;

 case 143:
  fst_cpurelease(card);
  card->state = FST_STARTING;
  return 0;

 case 139:




  if (ifr->ifr_data == ((void*)0)) {
   return -EINVAL;
  }
  if (copy_from_user(&wrthdr, ifr->ifr_data,
       sizeof (struct fstioc_write))) {
   return -EFAULT;
  }




  if (wrthdr.size > FST_MEMSIZE || wrthdr.offset > FST_MEMSIZE ||
      wrthdr.size + wrthdr.offset > FST_MEMSIZE) {
   return -ENXIO;
  }



  buf = memdup_user(ifr->ifr_data + sizeof(struct fstioc_write),
      wrthdr.size);
  if (IS_ERR(buf))
   return PTR_ERR(buf);

  memcpy_toio(card->mem + wrthdr.offset, buf, wrthdr.size);
  kfree(buf);




  if (card->state == FST_RESET) {
   card->state = FST_DOWNLOAD;
  }
  return 0;

 case 141:




  if (card->state == FST_STARTING) {
   check_started_ok(card);


   if (card->state == FST_RUNNING) {
    spin_lock_irqsave(&card->card_lock, flags);
    fst_enable_intr(card);
    FST_WRB(card, interruptHandshake, 0xEE);
    spin_unlock_irqrestore(&card->card_lock, flags);
   }
  }

  if (ifr->ifr_data == ((void*)0)) {
   return -EINVAL;
  }

  gather_conf_info(card, port, &info);

  if (copy_to_user(ifr->ifr_data, &info, sizeof (info))) {
   return -EFAULT;
  }
  return 0;

 case 140:






  if (card->state != FST_RUNNING) {
   pr_err("Attempt to configure card %d in non-running state (%d)\n",
          card->card_no, card->state);
   return -EIO;
  }
  if (copy_from_user(&info, ifr->ifr_data, sizeof (info))) {
   return -EFAULT;
  }

  return set_conf_from_info(card, port, &info);

 case 128:
  switch (ifr->ifr_settings.type) {
  case 138:
   return fst_get_iface(card, port, ifr);

  case 135:
  case 132:
  case 133:
  case 131:
  case 130:
  case 134:
  case 136:
   return fst_set_iface(card, port, ifr);

  case 129:
   port->mode = FST_RAW;
   return 0;

  case 137:
   if (port->mode == FST_RAW) {
    ifr->ifr_settings.type = 129;
    return 0;
   }
   return hdlc_ioctl(dev, ifr, cmd);

  default:
   port->mode = FST_GEN_HDLC;
   dbg(DBG_IOCTL, "Passing this type to hdlc %x\n",
       ifr->ifr_settings.type);
   return hdlc_ioctl(dev, ifr, cmd);
  }

 default:

  return hdlc_ioctl(dev, ifr, cmd);
 }
}
