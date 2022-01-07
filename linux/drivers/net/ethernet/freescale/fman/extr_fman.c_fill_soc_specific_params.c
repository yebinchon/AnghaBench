
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int minor; int major; } ;
struct fman_state_struct {int bmi_max_fifo_size; int fm_iram_size; int dma_thresh_max_commq; int dma_thresh_max_buf; int qmi_max_num_of_tnums; int qmi_def_tnums_thresh; int bmi_max_num_of_tasks; int max_num_of_open_dmas; int fm_port_num_of_cg; int num_of_rx_ports; int total_fifo_size; TYPE_1__ rev_info; } ;


 int EINVAL ;
 int pr_err (char*) ;

__attribute__((used)) static int fill_soc_specific_params(struct fman_state_struct *state)
{
 u8 minor = state->rev_info.minor;




 switch (state->rev_info.major) {
 case 3:
  state->bmi_max_fifo_size = 160 * 1024;
  state->fm_iram_size = 64 * 1024;
  state->dma_thresh_max_commq = 31;
  state->dma_thresh_max_buf = 127;
  state->qmi_max_num_of_tnums = 64;
  state->qmi_def_tnums_thresh = 48;
  state->bmi_max_num_of_tasks = 128;
  state->max_num_of_open_dmas = 32;
  state->fm_port_num_of_cg = 256;
  state->num_of_rx_ports = 6;
  state->total_fifo_size = 136 * 1024;
  break;

 case 2:
  state->bmi_max_fifo_size = 160 * 1024;
  state->fm_iram_size = 64 * 1024;
  state->dma_thresh_max_commq = 31;
  state->dma_thresh_max_buf = 127;
  state->qmi_max_num_of_tnums = 64;
  state->qmi_def_tnums_thresh = 48;
  state->bmi_max_num_of_tasks = 128;
  state->max_num_of_open_dmas = 32;
  state->fm_port_num_of_cg = 256;
  state->num_of_rx_ports = 5;
  state->total_fifo_size = 100 * 1024;
  break;

 case 6:
  state->dma_thresh_max_commq = 83;
  state->dma_thresh_max_buf = 127;
  state->qmi_max_num_of_tnums = 64;
  state->qmi_def_tnums_thresh = 32;
  state->fm_port_num_of_cg = 256;


  if (minor == 1 || minor == 4) {
   state->bmi_max_fifo_size = 192 * 1024;
   state->bmi_max_num_of_tasks = 64;
   state->max_num_of_open_dmas = 32;
   state->num_of_rx_ports = 5;
   if (minor == 1)
    state->fm_iram_size = 32 * 1024;
   else
    state->fm_iram_size = 64 * 1024;
   state->total_fifo_size = 156 * 1024;
  }

  else if (minor == 0 || minor == 2 || minor == 3) {
   state->bmi_max_fifo_size = 384 * 1024;
   state->fm_iram_size = 64 * 1024;
   state->bmi_max_num_of_tasks = 128;
   state->max_num_of_open_dmas = 84;
   state->num_of_rx_ports = 8;
   state->total_fifo_size = 295 * 1024;
  } else {
   pr_err("Unsupported FManv3 version\n");
   return -EINVAL;
  }

  break;
 default:
  pr_err("Unsupported FMan version\n");
  return -EINVAL;
 }

 return 0;
}
