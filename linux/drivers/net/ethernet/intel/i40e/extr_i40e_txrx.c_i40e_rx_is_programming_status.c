
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int I40E_RXD_QW1_LENGTH_SPH_MASK ;

__attribute__((used)) static inline bool i40e_rx_is_programming_status(u64 qw)
{





 return qw & I40E_RXD_QW1_LENGTH_SPH_MASK;
}
