
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct firedtv {scalar_t__ avc_data; } ;
struct dtv_frontend_properties {int bandwidth_hz; int modulation; int hierarchy; int code_rate_HP; int code_rate_LP; int guard_interval; int transmission_mode; int frequency; } ;
struct avc_command_frame {int* operand; int opcode; } ;


 int AVC_OPCODE_DSD ;





 int FEC_AUTO ;
 int QAM_AUTO ;




 int add_pid_filter (struct firedtv*,int*) ;

__attribute__((used)) static int avc_tuner_dsd_dvb_t(struct firedtv *fdtv,
          struct dtv_frontend_properties *p)
{
 struct avc_command_frame *c = (void *)fdtv->avc_data;

 c->opcode = AVC_OPCODE_DSD;

 c->operand[0] = 0;
 c->operand[1] = 0xd2;
 c->operand[2] = 0x20;
 c->operand[3] = 0x00;
 c->operand[4] = 0x0c;


 c->operand[5] =
       0 << 7
     | 1 << 6
     | (p->bandwidth_hz != 0 ? 1 << 5 : 0)
     | (p->modulation != QAM_AUTO ? 1 << 4 : 0)
     | (p->hierarchy != 135 ? 1 << 3 : 0)
     | (p->code_rate_HP != FEC_AUTO ? 1 << 2 : 0)
     | (p->code_rate_LP != FEC_AUTO ? 1 << 1 : 0)
     | (p->guard_interval != 139 ? 1 << 0 : 0);


 c->operand[6] =
       0 << 7
     | (p->transmission_mode != 128 ? 1 << 6 : 0)
     | 0 << 5
     | 0 << 0 ;

 c->operand[7] = 0x0;
 c->operand[8] = (p->frequency / 10) >> 24;
 c->operand[9] = ((p->frequency / 10) >> 16) & 0xff;
 c->operand[10] = ((p->frequency / 10) >> 8) & 0xff;
 c->operand[11] = (p->frequency / 10) & 0xff;

 switch (p->bandwidth_hz) {
 case 7000000: c->operand[12] = 0x20; break;
 case 8000000:
 case 6000000:
 case 0:
 default: c->operand[12] = 0x00;
 }

 switch (p->modulation) {
 case 133: c->operand[13] = 1 << 6; break;
 case 132: c->operand[13] = 2 << 6; break;
 case 131:
 default: c->operand[13] = 0x00;
 }

 switch (p->hierarchy) {
 case 138: c->operand[13] |= 1 << 3; break;
 case 137: c->operand[13] |= 2 << 3; break;
 case 136: c->operand[13] |= 3 << 3; break;
 case 135:
 case 134:
 default: break;
 }

 switch (p->code_rate_HP) {
 case 147: c->operand[13] |= 1; break;
 case 146: c->operand[13] |= 2; break;
 case 145: c->operand[13] |= 3; break;
 case 144: c->operand[13] |= 4; break;
 case 148:
 default: break;
 }

 switch (p->code_rate_LP) {
 case 147: c->operand[14] = 1 << 5; break;
 case 146: c->operand[14] = 2 << 5; break;
 case 145: c->operand[14] = 3 << 5; break;
 case 144: c->operand[14] = 4 << 5; break;
 case 148:
 default: c->operand[14] = 0x00; break;
 }

 switch (p->guard_interval) {
 case 143: c->operand[14] |= 1 << 3; break;
 case 140: c->operand[14] |= 2 << 3; break;
 case 141: c->operand[14] |= 3 << 3; break;
 case 142:
 case 139:
 default: break;
 }

 switch (p->transmission_mode) {
 case 129: c->operand[14] |= 1 << 1; break;
 case 130:
 case 128:
 default: break;
 }

 c->operand[15] = 0x00;
 c->operand[16] = 0x00;

 return 17 + add_pid_filter(fdtv, &c->operand[17]);
}
