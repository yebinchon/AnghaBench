
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs5535_mfgpt_timer {int nr; } ;


 int MFGPT_CMP1 ;
 int MFGPT_CMP2 ;
 int MFGPT_EVENT_IRQ ;
 int MFGPT_EVENT_NMI ;
 int MFGPT_EVENT_RESET ;
 int MFGPT_MAX_TIMERS ;
 int cs5535_mfgpt_toggle_event (struct cs5535_mfgpt_timer*,int ,int ,int ) ;

__attribute__((used)) static void soft_reset(void)
{
 int i;
 struct cs5535_mfgpt_timer t;

 for (i = 0; i < MFGPT_MAX_TIMERS; i++) {
  t.nr = i;

  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP1, MFGPT_EVENT_RESET, 0);
  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP2, MFGPT_EVENT_RESET, 0);
  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP1, MFGPT_EVENT_NMI, 0);
  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP2, MFGPT_EVENT_NMI, 0);
  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP1, MFGPT_EVENT_IRQ, 0);
  cs5535_mfgpt_toggle_event(&t, MFGPT_CMP2, MFGPT_EVENT_IRQ, 0);
 }
}
