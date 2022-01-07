
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CUDBG_QTYPE_CRYPTO_RXQ ;
 int CUDBG_QTYPE_ISCSIT_RXQ ;
 int CUDBG_QTYPE_ISCSI_RXQ ;
 int CUDBG_QTYPE_RDMA_RXQ ;
 int CUDBG_QTYPE_TLS_RXQ ;
 int CUDBG_QTYPE_UNKNOWN ;






__attribute__((used)) static inline u32 cudbg_uld_rxq_to_qtype(u32 uld)
{
 switch (uld) {
 case 129:
  return CUDBG_QTYPE_RDMA_RXQ;
 case 131:
  return CUDBG_QTYPE_ISCSI_RXQ;
 case 130:
  return CUDBG_QTYPE_ISCSIT_RXQ;
 case 132:
  return CUDBG_QTYPE_CRYPTO_RXQ;
 case 128:
  return CUDBG_QTYPE_TLS_RXQ;
 }

 return CUDBG_QTYPE_UNKNOWN;
}
