
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef enum fman_intr_type { ____Placeholder_fman_intr_type } fman_intr_type ;
typedef enum fman_event_modules { ____Placeholder_fman_event_modules } fman_event_modules ;


 int FMAN_EV_CNT ;
 int FMAN_EV_ERR_MAC0 ;
 int FMAN_EV_FMAN_CTRL_0 ;
 int FMAN_EV_MAC0 ;
 int FMAN_INTR_TYPE_ERR ;




__attribute__((used)) static int get_module_event(enum fman_event_modules module, u8 mod_id,
       enum fman_intr_type intr_type)
{
 int event;

 switch (module) {
 case 128:
  if (intr_type == FMAN_INTR_TYPE_ERR)
   event = FMAN_EV_ERR_MAC0 + mod_id;
  else
   event = FMAN_EV_MAC0 + mod_id;
  break;
 case 129:
  if (intr_type == FMAN_INTR_TYPE_ERR)
   event = FMAN_EV_CNT;
  else
   event = (FMAN_EV_FMAN_CTRL_0 + mod_id);
  break;
 case 130:
  event = FMAN_EV_CNT;
  break;
 default:
  event = FMAN_EV_CNT;
  break;
 }

 return event;
}
