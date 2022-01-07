
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union enetc_tx_bd {int dummy; } enetc_tx_bd ;


 int memset (union enetc_tx_bd*,int ,int) ;

__attribute__((used)) static inline void enetc_clear_tx_bd(union enetc_tx_bd *txbd)
{
 memset(txbd, 0, sizeof(*txbd));
}
