
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct ivtv {int std; } ;
struct file {int dummy; } ;
struct TYPE_2__ {struct ivtv* itv; } ;


 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int ivtv_g_std(struct file *file, void *fh, v4l2_std_id *std)
{
 struct ivtv *itv = fh2id(fh)->itv;

 *std = itv->std;
 return 0;
}
