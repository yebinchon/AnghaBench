
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int v4l2_std_id ;
struct file {int dummy; } ;
struct cx18 {int std; } ;
struct TYPE_2__ {struct cx18* cx; } ;


 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int cx18_g_std(struct file *file, void *fh, v4l2_std_id *std)
{
 struct cx18 *cx = fh2id(fh)->cx;

 *std = cx->std;
 return 0;
}
