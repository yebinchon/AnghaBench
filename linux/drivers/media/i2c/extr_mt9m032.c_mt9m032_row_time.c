
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mt9m032 {int pix_clock; } ;


 int dev_dbg (int ,char*,int ) ;
 int div_u64 (unsigned long long,int ) ;
 int to_dev (struct mt9m032*) ;

__attribute__((used)) static u32 mt9m032_row_time(struct mt9m032 *sensor, unsigned int width)
{
 unsigned int effective_width;
 u32 ns;

 effective_width = width + 716;
 ns = div_u64(1000000000ULL * effective_width, sensor->pix_clock);
 dev_dbg(to_dev(sensor), "MT9M032 line time: %u ns\n", ns);
 return ns;
}
