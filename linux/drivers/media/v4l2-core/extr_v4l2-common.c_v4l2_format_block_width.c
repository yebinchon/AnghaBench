
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_format_info {unsigned int* block_w; } ;



__attribute__((used)) static inline unsigned int v4l2_format_block_width(const struct v4l2_format_info *info, int plane)
{
 if (!info->block_w[plane])
  return 1;
 return info->block_w[plane];
}
