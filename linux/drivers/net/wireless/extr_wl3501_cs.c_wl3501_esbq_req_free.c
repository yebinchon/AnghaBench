
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
typedef int tmp ;
struct wl3501_card {scalar_t__ esbq_req_head; scalar_t__ esbq_req_tail; scalar_t__ esbq_req_end; scalar_t__ esbq_req_start; } ;
typedef int addr ;


 int wl3501_free_tx_buffer (struct wl3501_card*,int) ;
 int wl3501_get_from_wla (struct wl3501_card*,scalar_t__,int*,int) ;

__attribute__((used)) static void wl3501_esbq_req_free(struct wl3501_card *this)
{
 u8 tmp;
 u16 addr;

 if (this->esbq_req_head == this->esbq_req_tail)
  goto out;
 wl3501_get_from_wla(this, this->esbq_req_tail + 3, &tmp, sizeof(tmp));
 if (!(tmp & 0x80))
  goto out;
 wl3501_get_from_wla(this, this->esbq_req_tail, &addr, sizeof(addr));
 wl3501_free_tx_buffer(this, addr);
 this->esbq_req_tail += 4;
 if (this->esbq_req_tail >= this->esbq_req_end)
  this->esbq_req_tail = this->esbq_req_start;
out:
 return;
}
