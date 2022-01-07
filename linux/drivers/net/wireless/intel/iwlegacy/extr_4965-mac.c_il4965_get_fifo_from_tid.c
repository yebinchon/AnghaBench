
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;


 size_t ARRAY_SIZE (size_t*) ;
 int EINVAL ;




 scalar_t__ likely (int) ;
 size_t* tid_to_ac ;

__attribute__((used)) static inline int
il4965_get_fifo_from_tid(u16 tid)
{
 static const u8 ac_to_fifo[] = {
  128,
  129,
  131,
  130,
 };

 if (likely(tid < ARRAY_SIZE(tid_to_ac)))
  return ac_to_fifo[tid_to_ac[tid]];


 return -EINVAL;
}
