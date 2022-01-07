
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ CONTROL ;
 int CTL_POWERDOWN ;
 scalar_t__ INT_MASK ;
 scalar_t__ RCR ;
 int RCR_CLEAR ;
 int SMC_SELECT_BANK (int) ;
 scalar_t__ TCR ;
 int TCR_CLEAR ;
 int inw (scalar_t__) ;
 int outb (int ,scalar_t__) ;
 int outw (int ,int ,scalar_t__) ;

__attribute__((used)) static void smc_shutdown( int ioaddr )
{

 SMC_SELECT_BANK( 2 );
 outb( 0, ioaddr + INT_MASK );


 SMC_SELECT_BANK( 0 );
 outb( RCR_CLEAR, ioaddr + RCR );
 outb( TCR_CLEAR, ioaddr + TCR );





}
