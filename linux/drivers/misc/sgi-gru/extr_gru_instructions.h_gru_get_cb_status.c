
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gru_control_block_status {int istatus; } ;



__attribute__((used)) static inline int gru_get_cb_status(void *cb)
{
 struct gru_control_block_status *cbs = (void *)cb;

 return cbs->istatus;
}
