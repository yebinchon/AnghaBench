
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xgene_enet_pdata {scalar_t__ ring_csr_addr; } ;


 scalar_t__ CLKEN_ADDR ;
 scalar_t__ SRST_ADDR ;
 scalar_t__ ioread32 (scalar_t__) ;

bool xgene_ring_mgr_init(struct xgene_enet_pdata *p)
{
 if (!ioread32(p->ring_csr_addr + CLKEN_ADDR))
  return 0;

 if (ioread32(p->ring_csr_addr + SRST_ADDR))
  return 0;

 return 1;
}
