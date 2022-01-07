
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PARAM_CHAR ;
 int REPLACE_64_VAL_PARM ;
 int VAL_PARM ;
 int memcpy (char*,int ,int) ;
 char* strstr (char*,int ) ;

__attribute__((used)) static int mlx5_tracer_get_num_of_params(char *str)
{
 char *substr, *pstr = str;
 int num_of_params = 0;


 substr = strstr(pstr, VAL_PARM);
 while (substr) {
  memcpy(substr, REPLACE_64_VAL_PARM, 4);
  pstr = substr;
  substr = strstr(pstr, VAL_PARM);
 }


 substr = strstr(str, PARAM_CHAR);
 while (substr) {
  num_of_params += 1;
  str = substr + 1;
  substr = strstr(str, PARAM_CHAR);
 }

 return num_of_params;
}
