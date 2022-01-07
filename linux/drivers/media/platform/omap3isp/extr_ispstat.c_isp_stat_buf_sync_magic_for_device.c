
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ispstat_buffer {int dummy; } ;
struct ispstat {int dummy; } ;
typedef enum dma_data_direction { ____Placeholder_dma_data_direction } dma_data_direction ;


 scalar_t__ ISP_STAT_USES_DMAENGINE (struct ispstat*) ;
 int __isp_stat_buf_sync_magic (struct ispstat*,struct ispstat_buffer*,int ,int,int ) ;
 int dma_sync_single_range_for_device ;

__attribute__((used)) static void isp_stat_buf_sync_magic_for_device(struct ispstat *stat,
            struct ispstat_buffer *buf,
            u32 buf_size,
            enum dma_data_direction dir)
{
 if (ISP_STAT_USES_DMAENGINE(stat))
  return;

 __isp_stat_buf_sync_magic(stat, buf, buf_size, dir,
      dma_sync_single_range_for_device);
}
