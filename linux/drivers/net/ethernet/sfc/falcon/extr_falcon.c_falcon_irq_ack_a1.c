
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_nic {int dummy; } ;
typedef int ef4_dword_t ;


 int EF4_POPULATE_DWORD_1 (int ,int ,int) ;
 int FRF_AA_INT_ACK_KER_FIELD ;
 int FR_AA_INT_ACK_KER ;
 int FR_AA_WORK_AROUND_BROKEN_PCI_READS ;
 int ef4_readd (struct ef4_nic*,int *,int ) ;
 int ef4_writed (struct ef4_nic*,int *,int ) ;

__attribute__((used)) static inline void falcon_irq_ack_a1(struct ef4_nic *efx)
{
 ef4_dword_t reg;

 EF4_POPULATE_DWORD_1(reg, FRF_AA_INT_ACK_KER_FIELD, 0xb7eb7e);
 ef4_writed(efx, &reg, FR_AA_INT_ACK_KER);
 ef4_readd(efx, &reg, FR_AA_WORK_AROUND_BROKEN_PCI_READS);
}
