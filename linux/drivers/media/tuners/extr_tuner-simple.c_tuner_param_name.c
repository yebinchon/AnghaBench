
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum param_type { ____Placeholder_param_type } param_type ;
__attribute__((used)) static inline char *tuner_param_name(enum param_type type)
{
 char *name;

 switch (type) {
 case 129:
  name = "radio";
  break;
 case 130:
  name = "pal";
  break;
 case 128:
  name = "secam";
  break;
 case 131:
  name = "ntsc";
  break;
 case 132:
  name = "digital";
  break;
 default:
  name = "unknown";
  break;
 }
 return name;
}
