
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar9170 {int dummy; } ;


 int modparam_noht ;
 scalar_t__ unlikely (int ) ;

__attribute__((used)) static inline unsigned int __carl9170_get_queue(struct ar9170 *ar,
      unsigned int queue)
{
 if (unlikely(modparam_noht)) {
  return queue;
 } else {






  return 2;
 }
}
