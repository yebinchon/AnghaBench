
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ab8500 {int transfer_ongoing; } ;


 int EINVAL ;
 scalar_t__ atomic_read (int *) ;

int ab8500_suspend(struct ab8500 *ab8500)
{
 if (atomic_read(&ab8500->transfer_ongoing))
  return -EINVAL;

 return 0;
}
