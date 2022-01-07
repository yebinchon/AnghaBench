
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct genwqe_file {struct genwqe_dev* cd; } ;
struct genwqe_dev {int dummy; } ;
struct file {scalar_t__ private_data; } ;


 int genwqe_del_file (struct genwqe_dev*,struct genwqe_file*) ;
 int genwqe_fasync (int,struct file*,int ) ;
 int genwqe_remove_mappings (struct genwqe_file*) ;
 int genwqe_remove_pinnings (struct genwqe_file*) ;
 int kfree (struct genwqe_file*) ;

__attribute__((used)) static int genwqe_release(struct inode *inode, struct file *filp)
{
 struct genwqe_file *cfile = (struct genwqe_file *)filp->private_data;
 struct genwqe_dev *cd = cfile->cd;


 genwqe_remove_mappings(cfile);
 genwqe_remove_pinnings(cfile);


 genwqe_fasync(-1, filp, 0);






 genwqe_del_file(cd, cfile);
 kfree(cfile);
 return 0;
}
