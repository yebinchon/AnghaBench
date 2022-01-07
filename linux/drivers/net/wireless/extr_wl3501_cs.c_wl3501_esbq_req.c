
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
typedef int tmp ;
struct wl3501_card {scalar_t__ esbq_req_head; scalar_t__ esbq_req_end; scalar_t__ esbq_req_start; } ;


 int wl3501_set_to_wla (struct wl3501_card*,scalar_t__,int *,int) ;

__attribute__((used)) static void wl3501_esbq_req(struct wl3501_card *this, u16 *ptr)
{
 u16 tmp = 0;

 wl3501_set_to_wla(this, this->esbq_req_head, ptr, 2);
 wl3501_set_to_wla(this, this->esbq_req_head + 2, &tmp, sizeof(tmp));
 this->esbq_req_head += 4;
 if (this->esbq_req_head >= this->esbq_req_end)
  this->esbq_req_head = this->esbq_req_start;
}
