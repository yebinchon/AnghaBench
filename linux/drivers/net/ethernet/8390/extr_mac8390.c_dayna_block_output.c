
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int WD_START_PG ;
 int dayna_memcpy_tocard (struct net_device*,long,unsigned char const*,int) ;

__attribute__((used)) static void dayna_block_output(struct net_device *dev, int count,
          const unsigned char *buf,
          int start_page)
{
 long shmem = (start_page - WD_START_PG)<<8;

 dayna_memcpy_tocard(dev, shmem, buf, count);
}
