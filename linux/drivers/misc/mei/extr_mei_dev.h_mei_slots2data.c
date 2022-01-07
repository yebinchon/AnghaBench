
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int MEI_SLOT_SIZE ;

__attribute__((used)) static inline u32 mei_slots2data(int slots)
{
 return slots * MEI_SLOT_SIZE;
}
