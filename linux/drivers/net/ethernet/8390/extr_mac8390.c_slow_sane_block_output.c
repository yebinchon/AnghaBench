
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {scalar_t__ mem_start; } ;


 int WD_START_PG ;
 int word_memcpy_tocard (scalar_t__,unsigned char const*,int) ;

__attribute__((used)) static void slow_sane_block_output(struct net_device *dev, int count,
       const unsigned char *buf, int start_page)
{
 long shmem = (start_page - WD_START_PG)<<8;

 word_memcpy_tocard(dev->mem_start + shmem, buf, count);
}
