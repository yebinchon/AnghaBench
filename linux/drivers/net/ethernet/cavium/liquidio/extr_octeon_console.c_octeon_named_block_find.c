
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct octeon_device {int dummy; } ;
struct cvmx_bootmem_named_block_desc {int size; int base_addr; } ;


 struct cvmx_bootmem_named_block_desc* __cvmx_bootmem_find_named_block_flags (struct octeon_device*,char const*,int ) ;
 int octeon_remote_lock () ;
 int octeon_remote_unlock () ;

__attribute__((used)) static int octeon_named_block_find(struct octeon_device *oct, const char *name,
       u64 *base_addr, u64 *size)
{
 const struct cvmx_bootmem_named_block_desc *named_block;

 octeon_remote_lock();
 named_block = __cvmx_bootmem_find_named_block_flags(oct, name, 0);
 octeon_remote_unlock();
 if (named_block) {
  *base_addr = named_block->base_addr;
  *size = named_block->size;
  return 0;
 }
 return 1;
}
