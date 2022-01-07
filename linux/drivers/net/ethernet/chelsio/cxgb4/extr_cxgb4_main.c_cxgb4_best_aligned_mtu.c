
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NMTUS ;

unsigned int cxgb4_best_aligned_mtu(const unsigned short *mtus,
        unsigned short header_size,
        unsigned short data_size_max,
        unsigned short data_size_align,
        unsigned int *mtu_idxp)
{
 unsigned short max_mtu = header_size + data_size_max;
 unsigned short data_size_align_mask = data_size_align - 1;
 int mtu_idx, aligned_mtu_idx;






 for (mtu_idx = 0, aligned_mtu_idx = -1; mtu_idx < NMTUS; mtu_idx++) {
  unsigned short data_size = mtus[mtu_idx] - header_size;




  if ((data_size & data_size_align_mask) == 0)
   aligned_mtu_idx = mtu_idx;





  if (mtu_idx+1 < NMTUS && mtus[mtu_idx+1] > max_mtu)
   break;
 }




 if (mtu_idx == NMTUS)
  mtu_idx--;





 if (aligned_mtu_idx >= 0 &&
     mtu_idx - aligned_mtu_idx <= 1)
  mtu_idx = aligned_mtu_idx;




 if (mtu_idxp)
  *mtu_idxp = mtu_idx;
 return mtus[mtu_idx];
}
