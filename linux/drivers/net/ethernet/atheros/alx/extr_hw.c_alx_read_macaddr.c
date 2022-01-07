
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct alx_hw {int dummy; } ;
typedef int __be32 ;
typedef int __be16 ;


 int ALX_STAD0 ;
 int ALX_STAD1 ;
 int alx_read_mem32 (struct alx_hw*,int ) ;
 int cpu_to_be16 (int ) ;
 int cpu_to_be32 (int ) ;
 int is_valid_ether_addr (int *) ;
 int put_unaligned (int ,int *) ;

__attribute__((used)) static bool alx_read_macaddr(struct alx_hw *hw, u8 *addr)
{
 u32 mac0, mac1;

 mac0 = alx_read_mem32(hw, ALX_STAD0);
 mac1 = alx_read_mem32(hw, ALX_STAD1);


 put_unaligned(cpu_to_be32(mac0), (__be32 *)(addr + 2));
 put_unaligned(cpu_to_be16(mac1), (__be16 *)addr);

 return is_valid_ether_addr(addr);
}
