
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cxl_afu {TYPE_1__* guest; } ;
struct TYPE_2__ {int handle; } ;


 int EIO ;
 int H_STATE_DISABLE ;
 int H_STATE_NORMAL ;
 int H_STATE_PERM_UNAVAILABLE ;
 int H_STATE_TEMP_UNAVAILABLE ;
 int WARN_ON (int) ;
 int cxl_h_read_error_state (int ,int*) ;

__attribute__((used)) static int afu_read_error_state(struct cxl_afu *afu, int *state_out)
{
 u64 state;
 int rc = 0;

 if (!afu)
  return -EIO;

 rc = cxl_h_read_error_state(afu->guest->handle, &state);
 if (!rc) {
  WARN_ON(state != H_STATE_NORMAL &&
   state != H_STATE_DISABLE &&
   state != H_STATE_TEMP_UNAVAILABLE &&
   state != H_STATE_PERM_UNAVAILABLE);
  *state_out = state & 0xffffffff;
 }
 return rc;
}
