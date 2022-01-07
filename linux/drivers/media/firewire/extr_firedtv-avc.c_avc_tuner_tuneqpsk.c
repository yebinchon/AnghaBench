
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ delivery_system; int modulation; int rolloff; int pilot; } ;
struct TYPE_4__ {TYPE_1__ dtv_property_cache; } ;
struct firedtv {scalar_t__ type; int voltage; int tone; TYPE_2__ fe; scalar_t__ avc_data; } ;
struct dtv_frontend_properties {int frequency; int symbol_rate; int fec_inner; } ;
struct avc_command_frame {int* operand; int opcode; } ;


 int AVC_OPCODE_VENDOR ;
 scalar_t__ FIREDTV_DVB_S2 ;
 int SEC_TONE_ON ;
 int SEC_VOLTAGE_18 ;
 int SFE_VENDOR_DE_COMPANYID_0 ;
 int SFE_VENDOR_DE_COMPANYID_1 ;
 int SFE_VENDOR_DE_COMPANYID_2 ;
 int SFE_VENDOR_OPCODE_TUNE_QPSK ;
 int SFE_VENDOR_OPCODE_TUNE_QPSK2 ;
 scalar_t__ SYS_DVBS2 ;

__attribute__((used)) static int avc_tuner_tuneqpsk(struct firedtv *fdtv,
         struct dtv_frontend_properties *p)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;

 c->opcode = AVC_OPCODE_VENDOR;

 c->operand[0] = SFE_VENDOR_DE_COMPANYID_0;
 c->operand[1] = SFE_VENDOR_DE_COMPANYID_1;
 c->operand[2] = SFE_VENDOR_DE_COMPANYID_2;
 if (fdtv->type == FIREDTV_DVB_S2)
  c->operand[3] = SFE_VENDOR_OPCODE_TUNE_QPSK2;
 else
  c->operand[3] = SFE_VENDOR_OPCODE_TUNE_QPSK;

 c->operand[4] = (p->frequency >> 24) & 0xff;
 c->operand[5] = (p->frequency >> 16) & 0xff;
 c->operand[6] = (p->frequency >> 8) & 0xff;
 c->operand[7] = p->frequency & 0xff;

 c->operand[8] = ((p->symbol_rate / 1000) >> 8) & 0xff;
 c->operand[9] = (p->symbol_rate / 1000) & 0xff;

 switch (p->fec_inner) {
 case 145: c->operand[10] = 0x1; break;
 case 144: c->operand[10] = 0x2; break;
 case 143: c->operand[10] = 0x3; break;
 case 141: c->operand[10] = 0x4; break;
 case 140: c->operand[10] = 0x5; break;
 case 142:
 case 139:
 case 138:
 default: c->operand[10] = 0x0;
 }

 if (fdtv->voltage == 0xff)
  c->operand[11] = 0xff;
 else if (fdtv->voltage == SEC_VOLTAGE_18)
  c->operand[11] = 0;
 else
  c->operand[11] = 1;

 if (fdtv->tone == 0xff)
  c->operand[12] = 0xff;
 else if (fdtv->tone == SEC_TONE_ON)
  c->operand[12] = 1;
 else
  c->operand[12] = 0;

 if (fdtv->type == FIREDTV_DVB_S2) {
  if (fdtv->fe.dtv_property_cache.delivery_system == SYS_DVBS2) {
   switch (fdtv->fe.dtv_property_cache.modulation) {
   case 133: c->operand[13] = 0x1; break;
   case 132: c->operand[13] = 0x2; break;
   case 134: c->operand[13] = 0x3; break;
   default: c->operand[13] = 0x2; break;
   }
   switch (fdtv->fe.dtv_property_cache.rolloff) {
   case 129: c->operand[14] = 0x2; break;
   case 131: c->operand[14] = 0x0; break;
   case 130: c->operand[14] = 0x1; break;
   case 128:
   default: c->operand[14] = 0x2; break;

   }
   switch (fdtv->fe.dtv_property_cache.pilot) {
   case 137: c->operand[15] = 0x0; break;
   case 136: c->operand[15] = 0x0; break;
   case 135: c->operand[15] = 0x1; break;
   }
  } else {
   c->operand[13] = 0x1;
   c->operand[14] = 0xff;
   c->operand[15] = 0xff;
  }
  return 16;
 } else {
  return 13;
 }
}
