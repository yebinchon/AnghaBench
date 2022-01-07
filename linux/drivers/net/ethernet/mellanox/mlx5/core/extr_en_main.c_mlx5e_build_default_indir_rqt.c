
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



void mlx5e_build_default_indir_rqt(u32 *indirection_rqt, int len,
       int num_channels)
{
 int i;

 for (i = 0; i < len; i++)
  indirection_rqt[i] = i % num_channels;
}
