
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct genwqe_dev {int dummy; } ;


 unsigned long GENWQE_PF_JOBTIMEOUT_MSEC ;
 int IO_SLC_VF_APPJOB_TIMEOUT ;
 int genwqe_T_psec (struct genwqe_dev*) ;
 int genwqe_write_vreg (struct genwqe_dev*,int ,int,int ) ;
 int ilog2 (unsigned long) ;

__attribute__((used)) static bool genwqe_setup_pf_jtimer(struct genwqe_dev *cd)
{
 u32 T = genwqe_T_psec(cd);
 u64 x;

 if (GENWQE_PF_JOBTIMEOUT_MSEC == 0)
  return 0;


 x = ilog2(GENWQE_PF_JOBTIMEOUT_MSEC *
    16000000000uL/(T * 15)) - 10;

 genwqe_write_vreg(cd, IO_SLC_VF_APPJOB_TIMEOUT,
     0xff00 | (x & 0xff), 0);
 return 1;
}
