
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mib_status; int mib_value; } ;
struct wl3501_card {TYPE_1__ sig_get_confirm; int wait; } ;


 int memcpy (void*,int ,int) ;
 int wait_event_interruptible (int ,int) ;
 int wl3501_request_mib (struct wl3501_card*,int ,void*) ;

__attribute__((used)) static int wl3501_get_mib_value(struct wl3501_card *this, u8 index,
    void *bf, int size)
{
 int rc;

 rc = wl3501_request_mib(this, index, bf);
 if (rc)
  return rc;

 rc = wait_event_interruptible(this->wait,
  this->sig_get_confirm.mib_status != 255);
 if (rc)
  return rc;

 memcpy(bf, this->sig_get_confirm.mib_value, size);
 return 0;
}
