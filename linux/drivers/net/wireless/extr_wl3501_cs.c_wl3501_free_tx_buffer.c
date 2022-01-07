
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* u16 ;
struct wl3501_card {void* tx_buffer_tail; int tx_buffer_cnt; void* tx_buffer_head; } ;
typedef int ptr ;
typedef int next ;


 int wl3501_get_from_wla (struct wl3501_card*,void*,void**,int) ;
 int wl3501_set_to_wla (struct wl3501_card*,void*,void**,int) ;

__attribute__((used)) static void wl3501_free_tx_buffer(struct wl3501_card *this, u16 ptr)
{

 if (!this->tx_buffer_head)
  this->tx_buffer_head = ptr;
 else
  wl3501_set_to_wla(this, this->tx_buffer_tail,
      &ptr, sizeof(ptr));
 while (ptr) {
  u16 next;

  this->tx_buffer_cnt++;
  wl3501_get_from_wla(this, ptr, &next, sizeof(next));
  this->tx_buffer_tail = ptr;
  ptr = next;
 }
}
