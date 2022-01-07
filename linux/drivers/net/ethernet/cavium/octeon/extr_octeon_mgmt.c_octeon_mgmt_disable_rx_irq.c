
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mgmt {int dummy; } ;


 int octeon_mgmt_set_rx_irq (struct octeon_mgmt*,int ) ;

__attribute__((used)) static void octeon_mgmt_disable_rx_irq(struct octeon_mgmt *p)
{
 octeon_mgmt_set_rx_irq(p, 0);
}
