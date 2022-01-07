
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ch_tc_flower_entry {int lock; } ;


 int GFP_KERNEL ;
 struct ch_tc_flower_entry* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct ch_tc_flower_entry *allocate_flower_entry(void)
{
 struct ch_tc_flower_entry *new = kzalloc(sizeof(*new), GFP_KERNEL);
 if (new)
  spin_lock_init(&new->lock);
 return new;
}
