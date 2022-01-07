
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int s64 ;


 int H_COPY_RDMA ;
 int dma_wmb () ;
 long plpar_hcall_norets (int ,int ,int ,int ,int ,int ) ;
 int pr_debug (char*,long,...) ;

__attribute__((used)) static inline long h_copy_rdma(s64 length, u64 sliobn, u64 slioba,
          u64 dliobn, u64 dlioba)
{
 long rc = 0;


 dma_wmb();
 pr_debug("ibmvmc: h_copy_rdma(0x%llx, 0x%llx, 0x%llx, 0x%llx, 0x%llx\n",
   length, sliobn, slioba, dliobn, dlioba);
 rc = plpar_hcall_norets(H_COPY_RDMA, length, sliobn, slioba,
    dliobn, dlioba);
 pr_debug("ibmvmc: h_copy_rdma rc = 0x%lx\n", rc);

 return rc;
}
