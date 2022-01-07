
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct stfsm {int dev; int stfsm_seq_write; int stfsm_seq_read; TYPE_1__* info; } ;
struct TYPE_2__ {int flags; } ;


 int default_read_configs ;
 int default_write_configs ;
 int dev_err (int ,char*,int ) ;
 int stfsm_prepare_erasesec_seq (struct stfsm*,int *) ;
 int stfsm_search_prepare_rw_seq (struct stfsm*,int *,int ) ;
 int stfsm_seq_erase_sector ;

__attribute__((used)) static int stfsm_prepare_rwe_seqs_default(struct stfsm *fsm)
{
 uint32_t flags = fsm->info->flags;
 int ret;


 ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_read,
       default_read_configs);
 if (ret) {
  dev_err(fsm->dev,
   "failed to prep READ sequence with flags [0x%08x]\n",
   flags);
  return ret;
 }


 ret = stfsm_search_prepare_rw_seq(fsm, &fsm->stfsm_seq_write,
       default_write_configs);
 if (ret) {
  dev_err(fsm->dev,
   "failed to prep WRITE sequence with flags [0x%08x]\n",
   flags);
  return ret;
 }


 stfsm_prepare_erasesec_seq(fsm, &stfsm_seq_erase_sector);

 return 0;
}
