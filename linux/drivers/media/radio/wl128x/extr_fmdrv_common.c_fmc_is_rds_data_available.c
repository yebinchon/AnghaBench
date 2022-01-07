
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct poll_table_struct {int dummy; } ;
struct TYPE_3__ {scalar_t__ rd_idx; scalar_t__ wr_idx; int read_queue; } ;
struct TYPE_4__ {TYPE_1__ rds; } ;
struct fmdev {TYPE_2__ rx; } ;
struct file {int dummy; } ;


 int EAGAIN ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;

int fmc_is_rds_data_available(struct fmdev *fmdev, struct file *file,
    struct poll_table_struct *pts)
{
 poll_wait(file, &fmdev->rx.rds.read_queue, pts);
 if (fmdev->rx.rds.rd_idx != fmdev->rx.rds.wr_idx)
  return 0;

 return -EAGAIN;
}
