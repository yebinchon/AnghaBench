
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int cpsw_ale_get_field (int *,int,int) ;

__attribute__((used)) static inline void cpsw_ale_get_addr(u32 *ale_entry, u8 *addr)
{
 int i;

 for (i = 0; i < 6; i++)
  addr[i] = cpsw_ale_get_field(ale_entry, 40 - 8*i, 8);
}
