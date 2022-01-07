
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8152 {int flags; } ;


 int ENODEV ;
 int RTL8152_UNPLUG ;
 int r8153_set_rx_early_size (struct r8152*) ;
 int r8153_set_rx_early_timeout (struct r8152*) ;
 int rtl_enable (struct r8152*) ;
 int rtl_set_eee_plus (struct r8152*) ;
 int set_tx_qlen (struct r8152*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static int rtl8153_enable(struct r8152 *tp)
{
 if (test_bit(RTL8152_UNPLUG, &tp->flags))
  return -ENODEV;

 set_tx_qlen(tp);
 rtl_set_eee_plus(tp);
 r8153_set_rx_early_timeout(tp);
 r8153_set_rx_early_size(tp);

 return rtl_enable(tp);
}
