
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct octeon_mbox {int dummy; } ;
struct cavium_wk {scalar_t__ ctxptr; } ;


 int octeon_mbox_process_message (struct octeon_mbox*) ;

__attribute__((used)) static void cn23xx_vf_mbox_thread(struct work_struct *work)
{
 struct cavium_wk *wk = (struct cavium_wk *)work;
 struct octeon_mbox *mbox = (struct octeon_mbox *)wk->ctxptr;

 octeon_mbox_process_message(mbox);
}
