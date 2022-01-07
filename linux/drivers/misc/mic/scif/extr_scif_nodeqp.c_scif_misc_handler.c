
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;


 int scif_cleanup_zombie_epd () ;
 int scif_rma_destroy_tcw_invalid () ;
 int scif_rma_destroy_windows () ;
 int scif_rma_handle_remote_fences () ;

void scif_misc_handler(struct work_struct *work)
{
 scif_rma_handle_remote_fences();
 scif_rma_destroy_windows();
 scif_rma_destroy_tcw_invalid();
 scif_cleanup_zombie_epd();
}
