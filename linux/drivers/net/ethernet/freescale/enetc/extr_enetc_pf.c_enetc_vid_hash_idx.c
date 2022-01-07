
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int BIT (int) ;
 int hweight8 (unsigned int) ;

__attribute__((used)) static int enetc_vid_hash_idx(unsigned int vid)
{
 int res = 0;
 int i;

 for (i = 0; i < 6; i++)
  res |= (hweight8(vid & (BIT(i) | BIT(i + 6))) & 0x1) << i;

 return res;
}
