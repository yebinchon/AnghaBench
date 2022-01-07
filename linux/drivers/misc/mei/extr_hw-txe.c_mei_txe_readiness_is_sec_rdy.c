
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int HICR_SEC_IPC_READINESS_SEC_RDY ;

__attribute__((used)) static inline bool mei_txe_readiness_is_sec_rdy(u32 readiness)
{
 return !!(readiness & HICR_SEC_IPC_READINESS_SEC_RDY);
}
