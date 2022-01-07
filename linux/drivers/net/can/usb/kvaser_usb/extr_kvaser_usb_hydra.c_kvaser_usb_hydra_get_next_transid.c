
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct kvaser_usb_dev_card_data_hydra {scalar_t__ transid; int transid_lock; } ;
struct TYPE_2__ {struct kvaser_usb_dev_card_data_hydra hydra; } ;
struct kvaser_usb {TYPE_1__ card_data; } ;


 scalar_t__ KVASER_USB_HYDRA_MAX_TRANSID ;
 scalar_t__ KVASER_USB_HYDRA_MIN_TRANSID ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static u16 kvaser_usb_hydra_get_next_transid(struct kvaser_usb *dev)
{
 unsigned long flags;
 u16 transid;
 struct kvaser_usb_dev_card_data_hydra *card_data =
       &dev->card_data.hydra;

 spin_lock_irqsave(&card_data->transid_lock, flags);
 transid = card_data->transid;
 if (transid >= KVASER_USB_HYDRA_MAX_TRANSID)
  transid = KVASER_USB_HYDRA_MIN_TRANSID;
 else
  transid++;
 card_data->transid = transid;
 spin_unlock_irqrestore(&card_data->transid_lock, flags);

 return transid;
}
