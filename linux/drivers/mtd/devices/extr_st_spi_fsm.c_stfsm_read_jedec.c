
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct stfsm_seq {int dummy; } ;
struct stfsm {int dummy; } ;


 int memcpy (int *,int *,int) ;
 int stfsm_load_seq (struct stfsm*,struct stfsm_seq const*) ;
 int stfsm_read_fifo (struct stfsm*,int *,int) ;
 struct stfsm_seq stfsm_seq_read_jedec ;
 int stfsm_wait_seq (struct stfsm*) ;

__attribute__((used)) static void stfsm_read_jedec(struct stfsm *fsm, uint8_t *jedec)
{
 const struct stfsm_seq *seq = &stfsm_seq_read_jedec;
 uint32_t tmp[2];

 stfsm_load_seq(fsm, seq);

 stfsm_read_fifo(fsm, tmp, 8);

 memcpy(jedec, tmp, 5);

 stfsm_wait_seq(fsm);
}
