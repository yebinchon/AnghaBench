
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ASYNC_EVENT_CODE_GRP_5 ;
 int ASYNC_EVENT_CODE_MASK ;
 int ASYNC_EVENT_CODE_SHIFT ;

__attribute__((used)) static inline bool is_grp5_evt(u32 flags)
{
 return ((flags >> ASYNC_EVENT_CODE_SHIFT) & ASYNC_EVENT_CODE_MASK) ==
   ASYNC_EVENT_CODE_GRP_5;
}
