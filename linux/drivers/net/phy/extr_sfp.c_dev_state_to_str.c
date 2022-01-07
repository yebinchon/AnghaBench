
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short ARRAY_SIZE (char const**) ;
 char const** dev_state_strings ;

__attribute__((used)) static const char *dev_state_to_str(unsigned short dev_state)
{
 if (dev_state >= ARRAY_SIZE(dev_state_strings))
  return "Unknown device state";
 return dev_state_strings[dev_state];
}
