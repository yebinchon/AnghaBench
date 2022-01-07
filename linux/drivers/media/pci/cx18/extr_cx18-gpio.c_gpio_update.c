
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct cx18 {int gpio_val; int gpio_lock; } ;


 int gpio_write (struct cx18*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void gpio_update(struct cx18 *cx, u32 mask, u32 data)
{
 if (mask == 0)
  return;

 mutex_lock(&cx->gpio_lock);
 cx->gpio_val = (cx->gpio_val & ~mask) | (data & mask);
 gpio_write(cx);
 mutex_unlock(&cx->gpio_lock);
}
