
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct fman {TYPE_1__* state; } ;
struct TYPE_2__ {int bmi_max_fifo_size; } ;



u32 fman_get_bmi_max_fifo_size(struct fman *fman)
{
 return fman->state->bmi_max_fifo_size;
}
