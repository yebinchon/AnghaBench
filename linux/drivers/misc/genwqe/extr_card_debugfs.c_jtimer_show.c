
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct seq_file {struct genwqe_dev* private; } ;
struct genwqe_dev {unsigned int num_vfs; int * vf_jobtimeout_msec; } ;


 int GENWQE_PF_JOBTIMEOUT_MSEC ;
 int IO_SLC_VF_APPJOB_TIMEOUT ;
 int genwqe_read_vreg (struct genwqe_dev*,int ,unsigned int) ;
 int seq_printf (struct seq_file*,char*,unsigned int,int ,...) ;

__attribute__((used)) static int jtimer_show(struct seq_file *s, void *unused)
{
 struct genwqe_dev *cd = s->private;
 unsigned int vf_num;
 u64 jtimer;

 jtimer = genwqe_read_vreg(cd, IO_SLC_VF_APPJOB_TIMEOUT, 0);
 seq_printf(s, "  PF   0x%016llx %d msec\n", jtimer,
     GENWQE_PF_JOBTIMEOUT_MSEC);

 for (vf_num = 0; vf_num < cd->num_vfs; vf_num++) {
  jtimer = genwqe_read_vreg(cd, IO_SLC_VF_APPJOB_TIMEOUT,
       vf_num + 1);
  seq_printf(s, "  VF%-2d 0x%016llx %d msec\n", vf_num, jtimer,
      cd->vf_jobtimeout_msec[vf_num]);
 }
 return 0;
}
