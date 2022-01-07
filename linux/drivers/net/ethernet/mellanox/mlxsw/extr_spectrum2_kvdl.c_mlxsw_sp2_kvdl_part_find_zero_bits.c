
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxsw_sp2_kvdl_part {int last_allocated_bit; unsigned int usage_bit_count; int usage; } ;


 int ENOBUFS ;
 unsigned int find_next_zero_bit (int ,unsigned int,unsigned int) ;
 scalar_t__ test_bit (unsigned int,int ) ;

__attribute__((used)) static int mlxsw_sp2_kvdl_part_find_zero_bits(struct mlxsw_sp2_kvdl_part *part,
           unsigned int bit_count,
           unsigned int *p_bit)
{
 unsigned int start_bit;
 unsigned int bit;
 unsigned int i;
 bool wrap = 0;

 start_bit = part->last_allocated_bit + 1;
 if (start_bit == part->usage_bit_count)
  start_bit = 0;
 bit = start_bit;
again:
 bit = find_next_zero_bit(part->usage, part->usage_bit_count, bit);
 if (!wrap && bit + bit_count >= part->usage_bit_count) {
  wrap = 1;
  bit = 0;
  goto again;
 }
 if (wrap && bit + bit_count >= start_bit)
  return -ENOBUFS;
 for (i = 0; i < bit_count; i++) {
  if (test_bit(bit + i, part->usage)) {
   bit += bit_count;
   goto again;
  }
 }
 *p_bit = bit;
 return 0;
}
