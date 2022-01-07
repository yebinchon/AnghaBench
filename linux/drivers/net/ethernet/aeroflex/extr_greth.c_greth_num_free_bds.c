
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;


 scalar_t__ GRETH_TXBD_NUM ;

__attribute__((used)) static inline u16 greth_num_free_bds(u16 tx_last, u16 tx_next)
{
 if (tx_next < tx_last)
  return (tx_last - tx_next) - 1;
 else
  return GRETH_TXBD_NUM - (tx_next - tx_last) - 1;
}
