
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DBG_SCRATCH ;
 int PDEBUG (int ,char*,int) ;
 int scratch_buf_size ;

__attribute__((used)) static void scratch_inc_extra_ptr(int *ptr, int len)
{
 *ptr = (*ptr + len) % scratch_buf_size;

 PDEBUG(DBG_SCRATCH, "ptr=%d\n", *ptr);
}
