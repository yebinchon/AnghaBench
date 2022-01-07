
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short ARRAY_SIZE (char const**) ;
 char const** sm_state_strings ;

__attribute__((used)) static const char *sm_state_to_str(unsigned short sm_state)
{
 if (sm_state >= ARRAY_SIZE(sm_state_strings))
  return "Unknown state";
 return sm_state_strings[sm_state];
}
