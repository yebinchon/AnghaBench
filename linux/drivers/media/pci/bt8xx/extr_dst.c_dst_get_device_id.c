
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct tuner_types {char* fw_name; int tuner_type; int tuner_name; } ;
struct dst_types {size_t offset; char* device_id; int dst_type; int tuner_type; int dst_feature; int type_flags; } ;
struct dst_state {int tuner_type; int* rxbuffer; int dst_type; int type_flags; int fw_name; int dst_hw_cap; } ;


 int ACK ;
 int ARRAY_SIZE (void*) ;
 int DEVICE_INIT ;
 int DST_TYPE_HAS_SYMDIV ;

 int FIXED_COMM ;
 int GET_ACK ;
 int TUNER_TYPE_MB86A15 ;
 int TUNER_TYPE_MULTI ;
 int dprintk (int,char*,...) ;
 scalar_t__ dst_check_mb86a15 (struct dst_state*) ;
 int dst_check_stv0299 (struct dst_state*) ;
 int dst_check_sum (int*,int) ;
 scalar_t__ dst_pio_disable (struct dst_state*) ;
 void* dst_tlist ;
 int dst_type_flags_print (struct dst_state*) ;
 int dst_type_print (struct dst_state*,int) ;
 int dst_wait_dst_ready (struct dst_state*,int ) ;
 int pr_err (char*,...) ;
 scalar_t__ read_dst (struct dst_state*,int*,int ) ;
 int strlen (char*) ;
 int strncmp (char*,char*,int) ;
 int strscpy (int ,char*,int) ;
 void* tuner_list ;
 scalar_t__ write_dst (struct dst_state*,int*,int ) ;

__attribute__((used)) static int dst_get_device_id(struct dst_state *state)
{
 u8 reply;

 int i, j;
 struct dst_types *p_dst_type = ((void*)0);
 struct tuner_types *p_tuner_list = ((void*)0);

 u8 use_dst_type = 0;
 u32 use_type_flags = 0;

 static u8 device_type[8] = {0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff};

 state->tuner_type = 0;
 device_type[7] = dst_check_sum(device_type, 7);

 if (write_dst(state, device_type, FIXED_COMM))
  return -1;
 if ((dst_pio_disable(state)) < 0)
  return -1;
 if (read_dst(state, &reply, GET_ACK))
  return -1;
 if (reply != ACK) {
  dprintk(2, "Write not Acknowledged! [Reply=0x%02x]\n", reply);
  return -1;
 }
 if (!dst_wait_dst_ready(state, DEVICE_INIT))
  return -1;
 if (read_dst(state, state->rxbuffer, FIXED_COMM))
  return -1;

 dst_pio_disable(state);
 if (state->rxbuffer[7] != dst_check_sum(state->rxbuffer, 7)) {
  dprintk(2, "Checksum failure!\n");
  return -1;
 }
 state->rxbuffer[7] = '\0';

 for (i = 0, p_dst_type = dst_tlist; i < ARRAY_SIZE(dst_tlist); i++, p_dst_type++) {
  if (!strncmp (&state->rxbuffer[p_dst_type->offset], p_dst_type->device_id, strlen (p_dst_type->device_id))) {
   use_type_flags = p_dst_type->type_flags;
   use_dst_type = p_dst_type->dst_type;


   state->dst_hw_cap = p_dst_type->dst_feature;
   pr_err("Recognise [%s]\n", p_dst_type->device_id);
   strscpy(state->fw_name, p_dst_type->device_id,
           sizeof(state->fw_name));

   if (p_dst_type->tuner_type & TUNER_TYPE_MULTI) {
    switch (use_dst_type) {
    case 128:

     if (dst_check_stv0299(state) < 0) {
      pr_err("Unsupported\n");
      state->tuner_type = TUNER_TYPE_MB86A15;
     }
     break;
    default:
     break;
    }
    if (dst_check_mb86a15(state) < 0)
     pr_err("Unsupported\n");

   } else {
    state->tuner_type = p_dst_type->tuner_type;
   }
   for (j = 0, p_tuner_list = tuner_list; j < ARRAY_SIZE(tuner_list); j++, p_tuner_list++) {
    if (!(strncmp(p_dst_type->device_id, p_tuner_list->fw_name, 7)) &&
     p_tuner_list->tuner_type == state->tuner_type) {
     pr_err("[%s] has a [%s]\n",
      p_dst_type->device_id, p_tuner_list->tuner_name);
    }
   }
   break;
  }
 }

 if (i >= ARRAY_SIZE(dst_tlist)) {
  pr_err("Unable to recognize %s or %s\n", &state->rxbuffer[0], &state->rxbuffer[1]);
  pr_err("please email linux-dvb@linuxtv.org with this type in");
  use_dst_type = 128;
  use_type_flags = DST_TYPE_HAS_SYMDIV;
 }
 dst_type_print(state, use_dst_type);
 state->type_flags = use_type_flags;
 state->dst_type = use_dst_type;
 dst_type_flags_print(state);

 return 0;
}
