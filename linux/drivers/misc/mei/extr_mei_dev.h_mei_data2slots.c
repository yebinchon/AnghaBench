
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int DIV_ROUND_UP (size_t,int ) ;
 int MEI_SLOT_SIZE ;

__attribute__((used)) static inline u32 mei_data2slots(size_t length)
{
 return DIV_ROUND_UP(length, MEI_SLOT_SIZE);
}
