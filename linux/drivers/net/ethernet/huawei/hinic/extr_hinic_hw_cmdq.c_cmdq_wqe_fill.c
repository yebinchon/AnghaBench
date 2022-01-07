
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int CMDQ_WQE_SIZE ;
 int FIRST_DATA_TO_WRITE_LAST ;
 int memcpy (void*,void*,int) ;
 int wmb () ;

__attribute__((used)) static void cmdq_wqe_fill(void *dst, void *src)
{
 memcpy(dst + FIRST_DATA_TO_WRITE_LAST, src + FIRST_DATA_TO_WRITE_LAST,
        CMDQ_WQE_SIZE - FIRST_DATA_TO_WRITE_LAST);

 wmb();

 *(u64 *)dst = *(u64 *)src;
}
