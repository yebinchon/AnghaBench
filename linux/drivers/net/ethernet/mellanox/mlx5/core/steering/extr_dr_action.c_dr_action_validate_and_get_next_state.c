
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef enum dr_action_domain { ____Placeholder_dr_action_domain } dr_action_domain ;


 size_t DR_ACTION_STATE_ERR ;
 int EOPNOTSUPP ;
 size_t*** next_action_state ;

__attribute__((used)) static
int dr_action_validate_and_get_next_state(enum dr_action_domain action_domain,
       u32 action_type,
       u32 *state)
{
 u32 cur_state = *state;


 *state = next_action_state[action_domain][cur_state][action_type];

 if (*state == DR_ACTION_STATE_ERR)
  return -EOPNOTSUPP;

 return 0;
}
