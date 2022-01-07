
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int BIT (int) ;

__attribute__((used)) static inline u8 get_streams(int mask)
{
 return !!(mask & BIT(0)) + !!(mask & BIT(1)) + !!(mask & BIT(2));
}
