
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ulong ;
struct pcnet32_private {TYPE_1__* a; } ;
struct TYPE_2__ {int (* read_csr ) (int ,int ) ;int (* write_csr ) (int ,int ,int) ;} ;


 int CSR5 ;
 int CSR5_SUSPEND ;
 int stub1 (int ,int ) ;
 int stub2 (int ,int ,int) ;

__attribute__((used)) static void pcnet32_clr_suspend(struct pcnet32_private *lp, ulong ioaddr)
{
 int csr5 = lp->a->read_csr(ioaddr, CSR5);

 lp->a->write_csr(ioaddr, CSR5, csr5 & ~CSR5_SUSPEND);
}
