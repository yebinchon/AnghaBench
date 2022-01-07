
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long FSCALE ;
 unsigned long IF_OFFSET ;
 int REF_FREQ ;

__attribute__((used)) static unsigned long gemtek_convfreq(unsigned long freq)
{
 return ((freq << FSCALE) + IF_OFFSET + REF_FREQ / 2) / REF_FREQ;
}
