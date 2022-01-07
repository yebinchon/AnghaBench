
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct s5k5baf_fw {int count; TYPE_1__* seq; scalar_t__* data; } ;
struct s5k5baf {struct s5k5baf_fw* fw; } ;
struct TYPE_2__ {scalar_t__ id; int offset; } ;



__attribute__((used)) static u16 *s5k5baf_fw_get_seq(struct s5k5baf *state, u16 seq_id)
{
 struct s5k5baf_fw *fw = state->fw;
 u16 *data;
 int i;

 if (fw == ((void*)0))
  return ((void*)0);

 data = fw->data + 2 * fw->count;

 for (i = 0; i < fw->count; ++i) {
  if (fw->seq[i].id == seq_id)
   return data + fw->seq[i].offset;
 }

 return ((void*)0);
}
