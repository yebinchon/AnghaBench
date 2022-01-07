
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char*,char*,int*,int*,int*,int*) ;

__attribute__((used)) static bool be_fw_ncsi_supported(char *ver)
{
 int v1[4] = {3, 102, 148, 0};
 int v2[4];
 int i;

 if (sscanf(ver, "%d.%d.%d.%d", &v2[0], &v2[1], &v2[2], &v2[3]) != 4)
  return 0;

 for (i = 0; i < 4; i++) {
  if (v1[i] < v2[i])
   return 1;
  else if (v1[i] > v2[i])
   return 0;
 }

 return 1;
}
