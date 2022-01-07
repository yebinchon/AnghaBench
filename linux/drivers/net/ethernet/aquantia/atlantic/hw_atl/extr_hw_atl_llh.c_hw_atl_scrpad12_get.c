
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct aq_hw_s {int dummy; } ;


 int hw_atl_scrpad_get (struct aq_hw_s*,int) ;

u32 hw_atl_scrpad12_get(struct aq_hw_s *self)
{
 return hw_atl_scrpad_get(self, 0xB);
}
