
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct pci_dev {int dummy; } ;
struct genwqe_dev {unsigned long* vf_jobtimeout_msec; struct pci_dev* pci_dev; } ;


 int IO_SLC_VF_APPJOB_TIMEOUT ;
 int genwqe_T_psec (struct genwqe_dev*) ;
 int genwqe_write_vreg (struct genwqe_dev*,int ,int,unsigned int) ;
 int ilog2 (unsigned long) ;
 int pci_sriov_get_totalvfs (struct pci_dev*) ;

__attribute__((used)) static bool genwqe_setup_vf_jtimer(struct genwqe_dev *cd)
{
 struct pci_dev *pci_dev = cd->pci_dev;
 unsigned int vf;
 u32 T = genwqe_T_psec(cd);
 u64 x;
 int totalvfs;

 totalvfs = pci_sriov_get_totalvfs(pci_dev);
 if (totalvfs <= 0)
  return 0;

 for (vf = 0; vf < totalvfs; vf++) {

  if (cd->vf_jobtimeout_msec[vf] == 0)
   continue;

  x = ilog2(cd->vf_jobtimeout_msec[vf] *
     16000000000uL/(T * 15)) - 10;

  genwqe_write_vreg(cd, IO_SLC_VF_APPJOB_TIMEOUT,
      0xff00 | (x & 0xff), vf + 1);
 }
 return 1;
}
