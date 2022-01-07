
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wl3501_card {scalar_t__ base_addr; } ;


 int WL3501_GCR_ECINT ;
 scalar_t__ WL3501_NIC_GCR ;
 int wl3501_outb (int ,scalar_t__) ;

__attribute__((used)) static inline void wl3501_ack_interrupt(struct wl3501_card *this)
{
 wl3501_outb(WL3501_GCR_ECINT, this->base_addr + WL3501_NIC_GCR);
}
