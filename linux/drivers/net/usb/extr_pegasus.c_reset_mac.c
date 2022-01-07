
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int features; size_t dev_index; } ;
typedef TYPE_1__ pegasus_t ;
typedef int __u8 ;
typedef int __u16 ;
struct TYPE_9__ {scalar_t__ vendor; } ;


 int DEFAULT_GPIO_SET ;
 int ETIMEDOUT ;
 int EthCtrl1 ;
 int Gpio0 ;
 int Gpio1 ;
 int HAS_HOME_PNA ;
 int REG_TIMEOUT ;
 scalar_t__ VENDOR_DLINK ;
 scalar_t__ VENDOR_ELCON ;
 scalar_t__ VENDOR_LINKSYS ;
 int get_registers (TYPE_1__*,int ,int,int*) ;
 scalar_t__ loopback ;
 scalar_t__ mii_mode ;
 int read_mii_word (TYPE_1__*,int,int,int*) ;
 int set_register (TYPE_1__*,int ,int) ;
 TYPE_3__* usb_dev_id ;
 int write_mii_word (TYPE_1__*,int,int,int*) ;

__attribute__((used)) static inline int reset_mac(pegasus_t *pegasus)
{
 __u8 data = 0x8;
 int i;

 set_register(pegasus, EthCtrl1, data);
 for (i = 0; i < REG_TIMEOUT; i++) {
  get_registers(pegasus, EthCtrl1, 1, &data);
  if (~data & 0x08) {
   if (loopback)
    break;
   if (mii_mode && (pegasus->features & HAS_HOME_PNA))
    set_register(pegasus, Gpio1, 0x34);
   else
    set_register(pegasus, Gpio1, 0x26);
   set_register(pegasus, Gpio0, pegasus->features);
   set_register(pegasus, Gpio0, DEFAULT_GPIO_SET);
   break;
  }
 }
 if (i == REG_TIMEOUT)
  return -ETIMEDOUT;

 if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_LINKSYS ||
     usb_dev_id[pegasus->dev_index].vendor == VENDOR_DLINK) {
  set_register(pegasus, Gpio0, 0x24);
  set_register(pegasus, Gpio0, 0x26);
 }
 if (usb_dev_id[pegasus->dev_index].vendor == VENDOR_ELCON) {
  __u16 auxmode;
  read_mii_word(pegasus, 3, 0x1b, &auxmode);
  auxmode |= 4;
  write_mii_word(pegasus, 3, 0x1b, &auxmode);
 }

 return 0;
}
