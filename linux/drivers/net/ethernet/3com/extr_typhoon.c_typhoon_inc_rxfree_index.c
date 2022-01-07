
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int RXFREE_ENTRIES ;
 int typhoon_inc_index (int *,int const,int ) ;

__attribute__((used)) static inline void
typhoon_inc_rxfree_index(u32 *index, const int count)
{
 typhoon_inc_index(index, count, RXFREE_ENTRIES);
}
