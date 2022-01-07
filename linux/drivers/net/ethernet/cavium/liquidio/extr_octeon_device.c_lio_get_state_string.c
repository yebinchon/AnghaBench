
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t s32 ;
typedef int atomic_t ;


 size_t OCT_DEV_STATES ;
 size_t OCT_DEV_STATE_INVALID ;
 int atomic_read (int *) ;
 char** oct_dev_state_str ;

char *lio_get_state_string(atomic_t *state_ptr)
{
 s32 istate = (s32)atomic_read(state_ptr);

 if (istate > OCT_DEV_STATES || istate < 0)
  return oct_dev_state_str[OCT_DEV_STATE_INVALID];
 return oct_dev_state_str[istate];
}
