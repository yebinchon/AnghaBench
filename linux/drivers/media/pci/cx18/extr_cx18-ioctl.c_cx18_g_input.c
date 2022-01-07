
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct cx18 {unsigned int active_input; } ;
struct TYPE_2__ {struct cx18* cx; } ;


 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int cx18_g_input(struct file *file, void *fh, unsigned int *i)
{
 struct cx18 *cx = fh2id(fh)->cx;

 *i = cx->active_input;
 return 0;
}
