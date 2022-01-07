
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int octeon_console_free_bytes (int,int,int) ;

__attribute__((used)) static inline int octeon_console_avail_bytes(u32 buffer_size,
          u32 wr_idx,
          u32 rd_idx)
{
 if (rd_idx >= buffer_size || wr_idx >= buffer_size)
  return -1;

 return buffer_size - 1 -
        octeon_console_free_bytes(buffer_size, wr_idx, rd_idx);
}
