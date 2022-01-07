
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ivtv {unsigned int active_input; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int ivtv_g_input(struct file *file, void *fh, unsigned int *i)
{
 struct ivtv *itv = fh2id(fh)->itv;

 *i = itv->active_input;

 return 0;
}
