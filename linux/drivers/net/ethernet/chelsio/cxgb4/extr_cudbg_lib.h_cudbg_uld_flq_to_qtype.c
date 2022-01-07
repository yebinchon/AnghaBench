
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CUDBG_QTYPE_CRYPTO_FLQ ;
 int CUDBG_QTYPE_ISCSIT_FLQ ;
 int CUDBG_QTYPE_ISCSI_FLQ ;
 int CUDBG_QTYPE_RDMA_FLQ ;
 int CUDBG_QTYPE_TLS_FLQ ;
 int CUDBG_QTYPE_UNKNOWN ;






__attribute__((used)) static inline u32 cudbg_uld_flq_to_qtype(u32 uld)
{
 switch (uld) {
 case 129:
  return CUDBG_QTYPE_RDMA_FLQ;
 case 131:
  return CUDBG_QTYPE_ISCSI_FLQ;
 case 130:
  return CUDBG_QTYPE_ISCSIT_FLQ;
 case 132:
  return CUDBG_QTYPE_CRYPTO_FLQ;
 case 128:
  return CUDBG_QTYPE_TLS_FLQ;
 }

 return CUDBG_QTYPE_UNKNOWN;
}
