
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srq_data {int srq_size; int lock; int comp; } ;


 int GFP_KERNEL ;
 int init_completion (int *) ;
 struct srq_data* kvzalloc (int,int ) ;
 int mutex_init (int *) ;

struct srq_data *t4_init_srq(int srq_size)
{
 struct srq_data *s;

 s = kvzalloc(sizeof(*s), GFP_KERNEL);
 if (!s)
  return ((void*)0);

 s->srq_size = srq_size;
 init_completion(&s->comp);
 mutex_init(&s->lock);

 return s;
}
