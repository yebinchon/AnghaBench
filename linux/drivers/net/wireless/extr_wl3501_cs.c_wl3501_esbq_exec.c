
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct wl3501_card {int dummy; } ;


 int EIO ;
 int wl3501_esbq_req (struct wl3501_card*,scalar_t__*) ;
 scalar_t__ wl3501_esbq_req_test (struct wl3501_card*) ;
 scalar_t__ wl3501_get_tx_buffer (struct wl3501_card*,int) ;
 int wl3501_set_to_wla (struct wl3501_card*,scalar_t__,void*,int) ;

__attribute__((used)) static int wl3501_esbq_exec(struct wl3501_card *this, void *sig, int sig_size)
{
 int rc = -EIO;

 if (wl3501_esbq_req_test(this)) {
  u16 ptr = wl3501_get_tx_buffer(this, sig_size);
  if (ptr) {
   wl3501_set_to_wla(this, ptr, sig, sig_size);
   wl3501_esbq_req(this, &ptr);
   rc = 0;
  }
 }
 return rc;
}
