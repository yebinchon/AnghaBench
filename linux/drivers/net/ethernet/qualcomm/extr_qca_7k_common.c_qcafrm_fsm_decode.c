
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct qcafrm_handle {int state; int init; int offset; } ;
typedef size_t s32 ;
typedef enum qcafrm_state { ____Placeholder_qcafrm_state } qcafrm_state ;


 size_t QCAFRM_GATHER ;




 size_t QCAFRM_INVLEN ;
 int QCAFRM_MIN_LEN ;
 size_t QCAFRM_NOHEAD ;
 size_t QCAFRM_NOTAIL ;
s32
qcafrm_fsm_decode(struct qcafrm_handle *handle, u8 *buf, u16 buf_len, u8 recv_byte)
{
 s32 ret = QCAFRM_GATHER;
 u16 len;

 switch (handle->state) {
 case 141:
 case 140:

  handle->state--;

  if (recv_byte != 0x00) {

   handle->state = handle->init;
  }
  break;
 case 139:
 case 138:
  handle->state--;
  break;

 case 135:
 case 134:
 case 133:
 case 132:
  if (recv_byte != 0xAA) {
   ret = QCAFRM_NOHEAD;
   handle->state = handle->init;
  } else {
   handle->state--;
  }
  break;


 case 131:
  handle->offset = recv_byte;
  handle->state = 130;
  break;
 case 130:
  handle->offset = handle->offset | (recv_byte << 8);
  handle->state = 129;
  break;
 case 129:
  handle->state = 128;
  break;
 case 128:
  len = handle->offset;
  if (len > buf_len || len < QCAFRM_MIN_LEN) {
   ret = QCAFRM_INVLEN;
   handle->state = handle->init;
  } else {
   handle->state = (enum qcafrm_state)(len + 1);

   handle->offset = 0;
  }
  break;
 default:

  buf[handle->offset] = recv_byte;
  handle->offset++;
  handle->state--;
  break;
 case 137:
  if (recv_byte != 0x55) {
   ret = QCAFRM_NOTAIL;
   handle->state = handle->init;
  } else {
   handle->state = 136;
  }
  break;
 case 136:
  if (recv_byte != 0x55) {
   ret = QCAFRM_NOTAIL;
   handle->state = handle->init;
  } else {
   ret = handle->offset;

   handle->state = handle->init;
  }
  break;
 }

 return ret;
}
