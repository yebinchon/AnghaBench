
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int dummy; } ;


 int MVNETA_INTR_NEW_MASK ;
 int MVNETA_MISCINTR_INTR_MASK ;
 int MVNETA_RX_INTR_MASK_ALL ;
 int MVNETA_TX_INTR_MASK_ALL ;
 int mvreg_write (struct mvneta_port*,int ,int) ;

__attribute__((used)) static void mvneta_percpu_unmask_interrupt(void *arg)
{
 struct mvneta_port *pp = arg;




 mvreg_write(pp, MVNETA_INTR_NEW_MASK,
      MVNETA_RX_INTR_MASK_ALL |
      MVNETA_TX_INTR_MASK_ALL |
      MVNETA_MISCINTR_INTR_MASK);
}
