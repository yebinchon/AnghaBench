
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_isi {int complete; } ;


 int ETIMEDOUT ;
 int ISI_CTRL ;
 int ISI_CTRL_DIS ;
 int ISI_CTRL_SRST ;
 int ISI_INTEN ;
 int init_completion (int *) ;
 int isi_writel (struct atmel_isi*,int ,int ) ;
 int msecs_to_jiffies (int) ;
 unsigned long wait_for_completion_timeout (int *,int ) ;

__attribute__((used)) static int atmel_isi_wait_status(struct atmel_isi *isi, int wait_reset)
{
 unsigned long timeout;




 init_completion(&isi->complete);

 if (wait_reset) {
  isi_writel(isi, ISI_INTEN, ISI_CTRL_SRST);
  isi_writel(isi, ISI_CTRL, ISI_CTRL_SRST);
 } else {
  isi_writel(isi, ISI_INTEN, ISI_CTRL_DIS);
  isi_writel(isi, ISI_CTRL, ISI_CTRL_DIS);
 }

 timeout = wait_for_completion_timeout(&isi->complete,
   msecs_to_jiffies(500));
 if (timeout == 0)
  return -ETIMEDOUT;

 return 0;
}
