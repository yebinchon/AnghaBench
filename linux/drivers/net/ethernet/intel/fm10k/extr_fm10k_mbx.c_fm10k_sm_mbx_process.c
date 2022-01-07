
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {scalar_t__ state; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 int FM10K_MSG_HDR_FIELD_GET (int ,int ) ;

 scalar_t__ FM10K_STATE_CLOSED ;
 int SM_ERR ;
 int SM_VER ;
 scalar_t__ fm10k_mbx_read (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int fm10k_mbx_write (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 int fm10k_sm_mbx_create_error_msg (struct fm10k_mbx_info*,scalar_t__) ;
 int fm10k_sm_mbx_process_error (struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_sm_mbx_process_reset (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_sm_mbx_process_version_1 (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_sm_mbx_validate_fifo_hdr (struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_sm_mbx_process(struct fm10k_hw *hw,
    struct fm10k_mbx_info *mbx)
{
 s32 err;


 if (mbx->state == FM10K_STATE_CLOSED)
  return 0;


 err = fm10k_mbx_read(hw, mbx);
 if (err)
  return err;

 err = fm10k_sm_mbx_validate_fifo_hdr(mbx);
 if (err < 0)
  goto fifo_err;

 if (FM10K_MSG_HDR_FIELD_GET(mbx->mbx_hdr, SM_ERR)) {
  fm10k_sm_mbx_process_error(mbx);
  goto fifo_err;
 }

 switch (FM10K_MSG_HDR_FIELD_GET(mbx->mbx_hdr, SM_VER)) {
 case 0:
  err = fm10k_sm_mbx_process_reset(hw, mbx);
  break;
 case 128:
  err = fm10k_sm_mbx_process_version_1(hw, mbx);
  break;
 }

fifo_err:
 if (err < 0)
  fm10k_sm_mbx_create_error_msg(mbx, err);


 fm10k_mbx_write(hw, mbx);

 return err;
}
