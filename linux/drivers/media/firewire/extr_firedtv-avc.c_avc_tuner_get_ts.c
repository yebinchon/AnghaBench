
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int subunit; scalar_t__ type; int avc_data_length; int avc_mutex; scalar_t__ avc_data; } ;
struct avc_command_frame {int subunit; int* operand; int opcode; int ctype; } ;


 int AVC_CTYPE_CONTROL ;
 int AVC_OPCODE_DSIT ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 scalar_t__ FIREDTV_DVB_T ;
 int avc_write (struct firedtv*) ;
 int clear_operands (struct avc_command_frame*,int,int) ;
 int msleep (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int avc_tuner_get_ts(struct firedtv *fdtv)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 int ret, sl;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_CONTROL;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
 c->opcode = AVC_OPCODE_DSIT;

 sl = fdtv->type == FIREDTV_DVB_T ? 0x0c : 0x11;

 c->operand[0] = 0;
 c->operand[1] = 0xd2;
 c->operand[2] = 0xff;
 c->operand[3] = 0x20;
 c->operand[4] = 0x00;
 c->operand[5] = 0x0;
 c->operand[6] = sl;





 clear_operands(c, 7, 24);

 fdtv->avc_data_length = fdtv->type == FIREDTV_DVB_T ? 24 : 28;
 ret = avc_write(fdtv);



 mutex_unlock(&fdtv->avc_mutex);

 if (ret == 0)
  msleep(250);

 return ret;
}
