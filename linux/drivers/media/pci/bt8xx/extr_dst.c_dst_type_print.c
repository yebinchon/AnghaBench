
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct dst_state {int dummy; } ;






 int EINVAL ;
 int dprintk (int,char*,...) ;

__attribute__((used)) static int dst_type_print(struct dst_state *state, u8 type)
{
 char *otype;
 switch (type) {
 case 129:
  otype = "satellite";
  break;

 case 128:
  otype = "terrestrial";
  break;

 case 130:
  otype = "cable";
  break;

 case 131:
  otype = "atsc";
  break;

 default:
  dprintk(2, "invalid dst type %d\n", type);
  return -EINVAL;
 }
 dprintk(2, "DST type: %s\n", otype);

 return 0;
}
