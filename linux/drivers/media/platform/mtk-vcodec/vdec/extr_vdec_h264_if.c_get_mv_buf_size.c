
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int HW_MB_STORE_SZ ;
 unsigned int MB_UNIT_LEN ;

__attribute__((used)) static unsigned int get_mv_buf_size(unsigned int width, unsigned int height)
{
 return HW_MB_STORE_SZ * (width/MB_UNIT_LEN) * (height/MB_UNIT_LEN);
}
