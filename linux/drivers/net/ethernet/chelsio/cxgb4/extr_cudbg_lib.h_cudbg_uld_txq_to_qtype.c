
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int CUDBG_QTYPE_CRYPTO_TXQ ;
 int CUDBG_QTYPE_OFLD_TXQ ;
 int CUDBG_QTYPE_UNKNOWN ;



__attribute__((used)) static inline u32 cudbg_uld_txq_to_qtype(u32 uld)
{
 switch (uld) {
 case 128:
  return CUDBG_QTYPE_OFLD_TXQ;
 case 129:
  return CUDBG_QTYPE_CRYPTO_TXQ;
 }

 return CUDBG_QTYPE_UNKNOWN;
}
