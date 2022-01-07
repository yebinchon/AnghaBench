
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ICE_DESCS_FOR_SKB_DATA_PTR ;

__attribute__((used)) static unsigned int ice_txd_use_count(unsigned int size)
{
 return ((size * 85) >> 20) + ICE_DESCS_FOR_SKB_DATA_PTR;
}
