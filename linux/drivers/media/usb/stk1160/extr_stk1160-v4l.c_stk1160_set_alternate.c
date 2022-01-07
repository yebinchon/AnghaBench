
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stk1160 {int alt; int num_alt; unsigned int* alt_max_pkt_size; int max_pkt_size; int udev; } ;


 unsigned int STK1160_MIN_PKT_SIZE ;
 int stk1160_dbg (char*,unsigned int,...) ;
 int usb_set_interface (int ,int ,size_t) ;

__attribute__((used)) static bool stk1160_set_alternate(struct stk1160 *dev)
{
 int i, prev_alt = dev->alt;
 unsigned int min_pkt_size;
 bool new_pkt_size;





 min_pkt_size = STK1160_MIN_PKT_SIZE;

 for (i = 0; i < dev->num_alt; i++) {

  if (dev->alt_max_pkt_size[i] >= min_pkt_size) {
   dev->alt = i;
   break;




  } else if (dev->alt_max_pkt_size[i] >
      dev->alt_max_pkt_size[dev->alt])
   dev->alt = i;
 }

 stk1160_dbg("setting alternate %d\n", dev->alt);

 if (dev->alt != prev_alt) {
  stk1160_dbg("minimum isoc packet size: %u (alt=%d)\n",
    min_pkt_size, dev->alt);
  stk1160_dbg("setting alt %d with wMaxPacketSize=%u\n",
          dev->alt, dev->alt_max_pkt_size[dev->alt]);
  usb_set_interface(dev->udev, 0, dev->alt);
 }

 new_pkt_size = dev->max_pkt_size != dev->alt_max_pkt_size[dev->alt];
 dev->max_pkt_size = dev->alt_max_pkt_size[dev->alt];

 return new_pkt_size;
}
