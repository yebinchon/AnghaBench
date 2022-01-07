
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ INT_MASK ;
 scalar_t__ RCR ;
 int RCR_NORMAL ;
 int SMC_INTERRUPT_MASK ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_NORMAL ;
 int outb (int ,scalar_t__) ;
 int outw (int ,scalar_t__) ;

__attribute__((used)) static void smc_enable( int ioaddr )
{
 SMC_SELECT_BANK( 0 );

 outw( TCR_NORMAL, ioaddr + TCR );
 outw( RCR_NORMAL, ioaddr + RCR );


 SMC_SELECT_BANK( 2 );
 outb( SMC_INTERRUPT_MASK, ioaddr + INT_MASK );
}
