
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pti_masterchannel {int master; int channel; } ;


 int GFP_KERNEL ;
 int kfree (struct pti_masterchannel*) ;
 struct pti_masterchannel* kmalloc (int,int ) ;
 int pti_control_frame_built_and_sent (struct pti_masterchannel*,char const*) ;

__attribute__((used)) static struct pti_masterchannel *get_id(u8 *id_array,
     int max_ids,
     int base_id,
     const char *thread_name)
{
 struct pti_masterchannel *mc;
 int i, j, mask;

 mc = kmalloc(sizeof(struct pti_masterchannel), GFP_KERNEL);
 if (mc == ((void*)0))
  return ((void*)0);


 for (i = 0; i < max_ids; i++)
  if (id_array[i] != 0xff)
   break;
 if (i == max_ids) {
  kfree(mc);
  return ((void*)0);
 }

 mask = 0x80;
 for (j = 0; j < 8; j++) {
  if ((id_array[i] & mask) == 0)
   break;
  mask >>= 1;
 }


 id_array[i] |= mask;
 mc->master = base_id;
 mc->channel = ((i & 0xf)<<3) + j;

 pti_control_frame_built_and_sent(mc, thread_name);
 return mc;
}
