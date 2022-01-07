
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int fd_id; } ;
struct TYPE_11__ {TYPE_4__ hi_dword; } ;
struct TYPE_8__ {int status_error_len; } ;
struct TYPE_12__ {TYPE_5__ qword0; TYPE_2__ qword1; } ;
union i40e_rx_desc {TYPE_6__ wb; } ;
typedef int u8 ;
typedef scalar_t__ u64 ;
typedef scalar_t__ u32 ;
struct pci_dev {int dev; } ;
struct i40e_ring {TYPE_1__* vsi; } ;
struct TYPE_9__ {int debug_mask; } ;
struct i40e_pf {scalar_t__ fdir_pf_filter_count; int flags; TYPE_3__ hw; int state; int fd_atr_cnt; int fd_add_err; int fd_inv; struct pci_dev* pdev; } ;
struct TYPE_7__ {struct i40e_pf* back; } ;


 scalar_t__ BIT (int ) ;
 int I40E_DEBUG_FD ;
 scalar_t__ I40E_FDIR_BUFFER_FULL_MARGIN ;
 int I40E_FLAG_FD_SB_ENABLED ;
 int I40E_RX_PROG_STATUS_DESC_FD_TBL_FULL_SHIFT ;
 int I40E_RX_PROG_STATUS_DESC_NO_FD_ENTRY_SHIFT ;
 scalar_t__ I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK ;
 scalar_t__ I40E_RX_PROG_STATUS_DESC_QW1_ERROR_SHIFT ;
 int __I40E_FD_ATR_AUTO_DISABLED ;
 int __I40E_FD_FLUSH_REQUESTED ;
 int __I40E_FD_SB_AUTO_DISABLED ;
 int dev_info (int *,char*,int ) ;
 int dev_warn (int *,char*,...) ;
 int i40e_get_current_atr_cnt (struct i40e_pf*) ;
 scalar_t__ i40e_get_global_fd_count (struct i40e_pf*) ;
 int le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (int ) ;
 int set_bit (int ,int ) ;
 int test_and_set_bit (int ,int ) ;
 scalar_t__ test_bit (int ,int ) ;

void i40e_fd_handle_status(struct i40e_ring *rx_ring,
      union i40e_rx_desc *rx_desc, u8 prog_id)
{
 struct i40e_pf *pf = rx_ring->vsi->back;
 struct pci_dev *pdev = pf->pdev;
 u32 fcnt_prog, fcnt_avail;
 u32 error;
 u64 qw;

 qw = le64_to_cpu(rx_desc->wb.qword1.status_error_len);
 error = (qw & I40E_RX_PROG_STATUS_DESC_QW1_ERROR_MASK) >>
  I40E_RX_PROG_STATUS_DESC_QW1_ERROR_SHIFT;

 if (error == BIT(I40E_RX_PROG_STATUS_DESC_FD_TBL_FULL_SHIFT)) {
  pf->fd_inv = le32_to_cpu(rx_desc->wb.qword0.hi_dword.fd_id);
  if ((rx_desc->wb.qword0.hi_dword.fd_id != 0) ||
      (I40E_DEBUG_FD & pf->hw.debug_mask))
   dev_warn(&pdev->dev, "ntuple filter loc = %d, could not be added\n",
     pf->fd_inv);







  if (test_bit(__I40E_FD_FLUSH_REQUESTED, pf->state))
   return;

  pf->fd_add_err++;

  pf->fd_atr_cnt = i40e_get_current_atr_cnt(pf);

  if ((rx_desc->wb.qword0.hi_dword.fd_id == 0) &&
      test_bit(__I40E_FD_SB_AUTO_DISABLED, pf->state)) {






   set_bit(__I40E_FD_ATR_AUTO_DISABLED, pf->state);
   set_bit(__I40E_FD_FLUSH_REQUESTED, pf->state);
  }


  fcnt_prog = i40e_get_global_fd_count(pf);
  fcnt_avail = pf->fdir_pf_filter_count;




  if (fcnt_prog >= (fcnt_avail - I40E_FDIR_BUFFER_FULL_MARGIN)) {
   if ((pf->flags & I40E_FLAG_FD_SB_ENABLED) &&
       !test_and_set_bit(__I40E_FD_SB_AUTO_DISABLED,
           pf->state))
    if (I40E_DEBUG_FD & pf->hw.debug_mask)
     dev_warn(&pdev->dev, "FD filter space full, new ntuple rules will not be added\n");
  }
 } else if (error == BIT(I40E_RX_PROG_STATUS_DESC_NO_FD_ENTRY_SHIFT)) {
  if (I40E_DEBUG_FD & pf->hw.debug_mask)
   dev_info(&pdev->dev, "ntuple filter fd_id = %d, could not be removed\n",
     rx_desc->wb.qword0.hi_dword.fd_id);
 }
}
