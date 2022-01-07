
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fm10k_mbx_info {scalar_t__ state; int mbx_hdr; } ;
struct fm10k_hw {int dummy; } ;
typedef scalar_t__ s32 ;


 scalar_t__ FM10K_MBX_ERR_TYPE ;




 int FM10K_MSG_HDR_FIELD_GET (int ,int ) ;
 scalar_t__ FM10K_STATE_CLOSED ;
 int TYPE ;
 int fm10k_mbx_create_error_msg (struct fm10k_mbx_info*,scalar_t__) ;
 scalar_t__ fm10k_mbx_process_connect (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_process_data (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_process_disconnect (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_process_error (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_read (struct fm10k_hw*,struct fm10k_mbx_info*) ;
 scalar_t__ fm10k_mbx_validate_msg_hdr (struct fm10k_mbx_info*) ;
 int fm10k_mbx_write (struct fm10k_hw*,struct fm10k_mbx_info*) ;

__attribute__((used)) static s32 fm10k_mbx_process(struct fm10k_hw *hw,
        struct fm10k_mbx_info *mbx)
{
 s32 err;


 if (mbx->state == FM10K_STATE_CLOSED)
  return 0;


 err = fm10k_mbx_read(hw, mbx);
 if (err)
  return err;


 err = fm10k_mbx_validate_msg_hdr(mbx);
 if (err < 0)
  goto msg_err;

 switch (FM10K_MSG_HDR_FIELD_GET(mbx->mbx_hdr, TYPE)) {
 case 131:
  err = fm10k_mbx_process_connect(hw, mbx);
  break;
 case 130:
  err = fm10k_mbx_process_data(hw, mbx);
  break;
 case 129:
  err = fm10k_mbx_process_disconnect(hw, mbx);
  break;
 case 128:
  err = fm10k_mbx_process_error(hw, mbx);
  break;
 default:
  err = FM10K_MBX_ERR_TYPE;
  break;
 }

msg_err:

 if (err < 0)
  fm10k_mbx_create_error_msg(mbx, err);


 fm10k_mbx_write(hw, mbx);

 return err;
}
