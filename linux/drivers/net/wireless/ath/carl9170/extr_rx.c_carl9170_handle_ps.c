
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_3__ {int state; } ;
struct carl9170_rsp {TYPE_1__ psm; } ;
struct TYPE_4__ {int state; scalar_t__ last_action; int sleep_ms; } ;
struct ar9170 {TYPE_2__ ps; } ;


 int CARL9170_PSM_COUNTER ;
 int CARL9170_PSM_WAKE ;
 scalar_t__ jiffies ;
 int jiffies_to_msecs (scalar_t__) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void carl9170_handle_ps(struct ar9170 *ar, struct carl9170_rsp *rsp)
{
 u32 ps;
 bool new_ps;

 ps = le32_to_cpu(rsp->psm.state);

 new_ps = (ps & CARL9170_PSM_COUNTER) != CARL9170_PSM_WAKE;
 if (ar->ps.state != new_ps) {
  if (!new_ps) {
   ar->ps.sleep_ms = jiffies_to_msecs(jiffies -
    ar->ps.last_action);
  }

  ar->ps.last_action = jiffies;

  ar->ps.state = new_ps;
 }
}
