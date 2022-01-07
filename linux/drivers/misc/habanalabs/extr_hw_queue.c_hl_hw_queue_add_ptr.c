
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef scalar_t__ u16 ;


 int HL_QUEUE_LENGTH ;

inline u32 hl_hw_queue_add_ptr(u32 ptr, u16 val)
{
 ptr += val;
 ptr &= ((HL_QUEUE_LENGTH << 1) - 1);
 return ptr;
}
