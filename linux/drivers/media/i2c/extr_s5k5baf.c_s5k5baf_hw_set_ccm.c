
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct s5k5baf {int dummy; } ;


 int S5K5BAF_FW_ID_CCM ;
 int * s5k5baf_fw_get_seq (struct s5k5baf*,int ) ;
 int s5k5baf_write_nseq (struct s5k5baf*,int *) ;

__attribute__((used)) static void s5k5baf_hw_set_ccm(struct s5k5baf *state)
{
 u16 *seq = s5k5baf_fw_get_seq(state, S5K5BAF_FW_ID_CCM);

 if (seq)
  s5k5baf_write_nseq(state, seq);
}
