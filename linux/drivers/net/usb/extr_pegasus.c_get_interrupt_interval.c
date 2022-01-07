
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_8__ {int intr_interval; int net; TYPE_1__* usb; } ;
typedef TYPE_2__ pegasus_t ;
struct TYPE_7__ {scalar_t__ speed; } ;


 scalar_t__ USB_SPEED_HIGH ;
 int netif_info (TYPE_2__*,int ,int ,char*,int,int) ;
 int read_eprom_word (TYPE_2__*,int,int*) ;
 int timer ;
 int write_eprom_word (TYPE_2__*,int,int) ;

__attribute__((used)) static inline void get_interrupt_interval(pegasus_t *pegasus)
{
 u16 data;
 u8 interval;

 read_eprom_word(pegasus, 4, &data);
 interval = data >> 8;
 if (pegasus->usb->speed != USB_SPEED_HIGH) {
  if (interval < 0x80) {
   netif_info(pegasus, timer, pegasus->net,
       "intr interval changed from %ums to %ums\n",
       interval, 0x80);
   interval = 0x80;
   data = (data & 0x00FF) | ((u16)interval << 8);



  }
 }
 pegasus->intr_interval = interval;
}
