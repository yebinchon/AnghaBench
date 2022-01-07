
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_faead {int ctrl; } ;


 int DPAA2_FAEAD_A2V ;
 int DPAA2_FAEAD_UPD ;
 int DPAA2_FAEAD_UPDV ;
 int DPAA2_FD_CTRL_ASAL ;
 int DPAA2_FD_FRC_FAEADV ;
 int cpu_to_le32 (int) ;
 int dpaa2_fd_get_ctrl (struct dpaa2_fd*) ;
 int dpaa2_fd_get_frc (struct dpaa2_fd*) ;
 int dpaa2_fd_set_ctrl (struct dpaa2_fd*,int) ;
 int dpaa2_fd_set_frc (struct dpaa2_fd*,int) ;
 struct dpaa2_faead* dpaa2_get_faead (void*,int) ;

__attribute__((used)) static void enable_tx_tstamp(struct dpaa2_fd *fd, void *buf_start)
{
 struct dpaa2_faead *faead;
 u32 ctrl, frc;


 frc = dpaa2_fd_get_frc(fd);
 dpaa2_fd_set_frc(fd, frc | DPAA2_FD_FRC_FAEADV);


 ctrl = dpaa2_fd_get_ctrl(fd);
 dpaa2_fd_set_ctrl(fd, ctrl | DPAA2_FD_CTRL_ASAL);




 ctrl = DPAA2_FAEAD_A2V | DPAA2_FAEAD_UPDV | DPAA2_FAEAD_UPD;
 faead = dpaa2_get_faead(buf_start, 1);
 faead->ctrl = cpu_to_le32(ctrl);
}
