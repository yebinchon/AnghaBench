
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvneta_port {int dummy; } ;


 int MVNETA_INTR_MISC_MASK ;
 int MVNETA_INTR_NEW_MASK ;
 int MVNETA_INTR_OLD_MASK ;
 int mvreg_write (struct mvneta_port*,int ,int ) ;

__attribute__((used)) static void mvneta_percpu_mask_interrupt(void *arg)
{
 struct mvneta_port *pp = arg;




 mvreg_write(pp, MVNETA_INTR_NEW_MASK, 0);
 mvreg_write(pp, MVNETA_INTR_OLD_MASK, 0);
 mvreg_write(pp, MVNETA_INTR_MISC_MASK, 0);
}
