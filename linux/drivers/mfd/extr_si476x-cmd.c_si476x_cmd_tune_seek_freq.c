
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct si476x_core {int stc; int tuning; } ;


 int SI476X_TIMEOUT_TUNE ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int si476x_cmd_clear_stc (struct si476x_core*) ;
 int si476x_core_send_command (struct si476x_core*,int ,int const*,size_t,int *,size_t,int ) ;
 int wait_event_killable (int ,int ) ;

__attribute__((used)) static int si476x_cmd_tune_seek_freq(struct si476x_core *core,
         uint8_t cmd,
         const uint8_t args[], size_t argn,
         uint8_t *resp, size_t respn)
{
 int err;


 atomic_set(&core->stc, 0);
 err = si476x_core_send_command(core, cmd, args, argn, resp, respn,
           SI476X_TIMEOUT_TUNE);
 if (!err) {
  wait_event_killable(core->tuning,
        atomic_read(&core->stc));
  si476x_cmd_clear_stc(core);
 }

 return err;
}
