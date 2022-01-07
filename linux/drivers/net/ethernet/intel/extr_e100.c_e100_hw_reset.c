
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nic {TYPE_1__* csr; } ;
struct TYPE_2__ {int port; } ;


 int e100_disable_irq (struct nic*) ;
 int e100_write_flush (struct nic*) ;
 int iowrite32 (int ,int *) ;
 int selective_reset ;
 int software_reset ;
 int udelay (int) ;

__attribute__((used)) static void e100_hw_reset(struct nic *nic)
{


 iowrite32(selective_reset, &nic->csr->port);
 e100_write_flush(nic); udelay(20);


 iowrite32(software_reset, &nic->csr->port);
 e100_write_flush(nic); udelay(20);


 e100_disable_irq(nic);
}
