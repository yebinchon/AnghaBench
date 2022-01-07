
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stfsm_seq {int dummy; } ;
struct stfsm {int dev; } ;


 int dev_dbg (int ,char*) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq const*) ;
 struct stfsm_seq stfsm_seq_erase_chip ;
 int stfsm_wait_busy (struct stfsm*) ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static int stfsm_erase_chip(struct stfsm *fsm)
{
 const struct stfsm_seq *seq = &stfsm_seq_erase_chip;

 dev_dbg(fsm->dev, "erasing chip\n");

 stfsm_load_seq(fsm, seq);

 stfsm_wait_seq(fsm);

 return stfsm_wait_busy(fsm);
}
