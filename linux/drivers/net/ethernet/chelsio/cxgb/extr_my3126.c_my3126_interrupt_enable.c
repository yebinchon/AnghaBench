
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cphy {int elmer_gpo; int adapter; int phy_update; } ;


 int A_ELMER0_GPO ;
 int HZ ;
 int schedule_delayed_work (int *,int) ;
 int t1_tpi_read (int ,int ,int *) ;

__attribute__((used)) static int my3126_interrupt_enable(struct cphy *cphy)
{
 schedule_delayed_work(&cphy->phy_update, HZ/30);
 t1_tpi_read(cphy->adapter, A_ELMER0_GPO, &cphy->elmer_gpo);
 return 0;
}
