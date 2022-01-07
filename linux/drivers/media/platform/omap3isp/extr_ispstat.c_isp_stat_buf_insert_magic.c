
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ispstat_buffer {scalar_t__ const virt_addr; } ;
struct ispstat {scalar_t__ buf_size; } ;


 scalar_t__ AF_EXTRA_DATA ;
 int DMA_BIDIRECTIONAL ;
 int DMA_FROM_DEVICE ;
 scalar_t__ IS_H3A_AF (struct ispstat*) ;
 int MAGIC_NUM ;
 int MAGIC_SIZE ;
 int isp_stat_buf_sync_magic_for_cpu (struct ispstat*,struct ispstat_buffer*,scalar_t__ const,int ) ;
 int isp_stat_buf_sync_magic_for_device (struct ispstat*,struct ispstat_buffer*,scalar_t__ const,int ) ;
 int memset (scalar_t__ const,int ,int ) ;

__attribute__((used)) static void isp_stat_buf_insert_magic(struct ispstat *stat,
          struct ispstat_buffer *buf)
{
 const u32 buf_size = IS_H3A_AF(stat) ?
        stat->buf_size + AF_EXTRA_DATA : stat->buf_size;

 isp_stat_buf_sync_magic_for_cpu(stat, buf, buf_size, DMA_FROM_DEVICE);







 memset(buf->virt_addr, MAGIC_NUM, MAGIC_SIZE);
 memset(buf->virt_addr + buf_size, MAGIC_NUM, MAGIC_SIZE);

 isp_stat_buf_sync_magic_for_device(stat, buf, buf_size,
        DMA_BIDIRECTIONAL);
}
