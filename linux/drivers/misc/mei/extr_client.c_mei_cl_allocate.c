
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;


 int GFP_KERNEL ;
 struct mei_cl* kmalloc (int,int ) ;
 int mei_cl_init (struct mei_cl*,struct mei_device*) ;

struct mei_cl *mei_cl_allocate(struct mei_device *dev)
{
 struct mei_cl *cl;

 cl = kmalloc(sizeof(struct mei_cl), GFP_KERNEL);
 if (!cl)
  return ((void*)0);

 mei_cl_init(cl, dev);

 return cl;
}
