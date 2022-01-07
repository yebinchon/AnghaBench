
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int PPOD_IDX_MAX_SIZE ;
 unsigned int PPOD_IDX_SHIFT ;
 unsigned int fls (unsigned int) ;
 int pr_info (char*,unsigned int,unsigned int,unsigned int,int) ;

unsigned int cxgbi_tagmask_set(unsigned int ppmax)
{
 unsigned int bits = fls(ppmax);

 if (bits > PPOD_IDX_MAX_SIZE)
  bits = PPOD_IDX_MAX_SIZE;

 pr_info("ippm: ppmax %u/0x%x -> bits %u, tagmask 0x%x.\n",
  ppmax, ppmax, bits, 1 << (bits + PPOD_IDX_SHIFT));

 return 1 << (bits + PPOD_IDX_SHIFT);
}
