
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned short ARRAY_SIZE (char const**) ;
 char const** event_strings ;

__attribute__((used)) static const char *event_to_str(unsigned short event)
{
 if (event >= ARRAY_SIZE(event_strings))
  return "Unknown event";
 return event_strings[event];
}
