
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct niu {int dummy; } ;


 int EINVAL ;
 unsigned long FCRAM_NUM_PARTITIONS ;
 unsigned long FCRAM_SIZE ;
 int HASH_TBL_ADDR (unsigned long) ;
 int HASH_TBL_DATA (unsigned long) ;
 int hash_addr_regval (unsigned long,unsigned long) ;
 int nw64 (int ,int ) ;

__attribute__((used)) static int hash_write(struct niu *np, unsigned long partition,
        unsigned long index, unsigned long num_entries,
        u64 *data)
{
 u64 val = hash_addr_regval(index, num_entries);
 unsigned long i;

 if (partition >= FCRAM_NUM_PARTITIONS ||
     index + (num_entries * 8) > FCRAM_SIZE)
  return -EINVAL;

 nw64(HASH_TBL_ADDR(partition), val);
 for (i = 0; i < num_entries; i++)
  nw64(HASH_TBL_DATA(partition), data[i]);

 return 0;
}
