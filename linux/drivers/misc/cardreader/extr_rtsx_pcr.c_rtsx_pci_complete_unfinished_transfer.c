
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtsx_pcr {struct completion* finish_me; int remove_pci; scalar_t__ done; } ;
struct completion {int dummy; } ;


 int complete (scalar_t__) ;
 int init_completion (struct completion*) ;
 int msecs_to_jiffies (int) ;
 int rtsx_pci_stop_cmd (struct rtsx_pcr*) ;
 int wait_for_completion_interruptible_timeout (struct completion*,int ) ;

void rtsx_pci_complete_unfinished_transfer(struct rtsx_pcr *pcr)
{
 struct completion finish;

 pcr->finish_me = &finish;
 init_completion(&finish);

 if (pcr->done)
  complete(pcr->done);

 if (!pcr->remove_pci)
  rtsx_pci_stop_cmd(pcr);

 wait_for_completion_interruptible_timeout(&finish,
   msecs_to_jiffies(2));
 pcr->finish_me = ((void*)0);
}
