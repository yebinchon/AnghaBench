
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct octeon_mgmt {int dummy; } ;


 int octeon_mgmt_clean_tx_buffers (struct octeon_mgmt*) ;
 int octeon_mgmt_enable_tx_irq (struct octeon_mgmt*) ;

__attribute__((used)) static void octeon_mgmt_clean_tx_tasklet(unsigned long arg)
{
 struct octeon_mgmt *p = (struct octeon_mgmt *)arg;
 octeon_mgmt_clean_tx_buffers(p);
 octeon_mgmt_enable_tx_irq(p);
}
