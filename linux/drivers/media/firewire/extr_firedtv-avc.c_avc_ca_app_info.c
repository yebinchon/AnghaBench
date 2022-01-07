
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {int subunit; int avc_data_length; int avc_mutex; scalar_t__ avc_data; } ;
struct avc_response_frame {int* operand; } ;
struct avc_command_frame {int subunit; scalar_t__* operand; int opcode; int ctype; } ;


 int AVC_CTYPE_STATUS ;
 int AVC_OPCODE_VENDOR ;
 int AVC_SUBUNIT_TYPE_TUNER ;
 int EN50221_TAG_APP_INFO ;
 int LAST_OPERAND ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_0 ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_1 ;
 scalar_t__ SFE_VENDOR_DE_COMPANYID_2 ;
 scalar_t__ SFE_VENDOR_OPCODE_CA2HOST ;
 scalar_t__ SFE_VENDOR_TAG_CA_APPLICATION_INFO ;
 int avc_write (struct firedtv*) ;
 int clear_operands (struct avc_command_frame*,int,int ) ;
 int get_ca_object_pos (struct avc_response_frame*) ;
 int memcpy (unsigned char*,int*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

int avc_ca_app_info(struct firedtv *fdtv, unsigned char *app_info,
      unsigned int *len)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;
 struct avc_response_frame *r = (void *)fdtv->avc_data;
 int pos, ret;

 mutex_lock(&fdtv->avc_mutex);

 c->ctype = AVC_CTYPE_STATUS;
 c->subunit = AVC_SUBUNIT_TYPE_TUNER | fdtv->subunit;
 c->opcode = AVC_OPCODE_VENDOR;

 c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
 c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
 c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
 c->operand[3] = SFE_VENDOR_OPCODE_CA2HOST;
 c->operand[4] = 0;
 c->operand[5] = SFE_VENDOR_TAG_CA_APPLICATION_INFO;
 clear_operands(c, 6, LAST_OPERAND);

 fdtv->avc_data_length = 12;
 ret = avc_write(fdtv);
 if (ret < 0)
  goto out;



 pos = get_ca_object_pos(r);
 app_info[0] = (EN50221_TAG_APP_INFO >> 16) & 0xff;
 app_info[1] = (EN50221_TAG_APP_INFO >> 8) & 0xff;
 app_info[2] = (EN50221_TAG_APP_INFO >> 0) & 0xff;
 app_info[3] = 6 + r->operand[pos + 4];
 app_info[4] = 0x01;
 memcpy(&app_info[5], &r->operand[pos], 5 + r->operand[pos + 4]);
 *len = app_info[3] + 4;
out:
 mutex_unlock(&fdtv->avc_mutex);

 return ret;
}
