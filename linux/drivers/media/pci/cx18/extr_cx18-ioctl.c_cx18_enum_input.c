
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct v4l2_input {int index; } ;
struct file {int dummy; } ;
struct cx18 {int dummy; } ;
struct TYPE_2__ {struct cx18* cx; } ;


 int cx18_get_input (struct cx18*,int ,struct v4l2_input*) ;
 TYPE_1__* fh2id (void*) ;

__attribute__((used)) static int cx18_enum_input(struct file *file, void *fh, struct v4l2_input *vin)
{
 struct cx18 *cx = fh2id(fh)->cx;


 return cx18_get_input(cx, vin->index, vin);
}
