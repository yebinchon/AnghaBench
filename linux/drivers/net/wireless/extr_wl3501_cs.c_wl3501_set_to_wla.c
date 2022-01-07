
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct wl3501_card {scalar_t__ base_addr; } ;


 int WL3501_BSS_SPAGE0 ;
 int WL3501_BSS_SPAGE1 ;
 scalar_t__ WL3501_NIC_IODPA ;
 scalar_t__ WL3501_NIC_LMAH ;
 scalar_t__ WL3501_NIC_LMAL ;
 int wl3501_outb (int,scalar_t__) ;
 int wl3501_outsb (scalar_t__,void*,int) ;
 int wl3501_switch_page (struct wl3501_card*,int ) ;

__attribute__((used)) static void wl3501_set_to_wla(struct wl3501_card *this, u16 dest, void *src,
         int size)
{

 wl3501_switch_page(this, (dest & 0x8000) ? WL3501_BSS_SPAGE1 :
         WL3501_BSS_SPAGE0);

 wl3501_outb(dest & 0xff, this->base_addr + WL3501_NIC_LMAL);
 wl3501_outb(((dest >> 8) & 0x7f), this->base_addr + WL3501_NIC_LMAH);


 wl3501_outsb(this->base_addr + WL3501_NIC_IODPA, src, size);
}
