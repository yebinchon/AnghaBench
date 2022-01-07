
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CUDBG_QTYPE_RDMA_CIQ ;
 int CUDBG_QTYPE_UNKNOWN ;


__attribute__((used)) static inline u32 cudbg_uld_ciq_to_qtype(u32 uld)
{
 switch (uld) {
 case 128:
  return CUDBG_QTYPE_RDMA_CIQ;
 }

 return CUDBG_QTYPE_UNKNOWN;
}
