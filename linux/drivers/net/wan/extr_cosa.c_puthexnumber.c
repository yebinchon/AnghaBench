
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int num; } ;


 char get_wait_data (struct cosa_data*) ;
 int pr_notice (char*,int ,int) ;
 int put_wait_data (struct cosa_data*,char) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static int puthexnumber(struct cosa_data *cosa, int number)
{
 char temp[5];
 int i;


 sprintf(temp, "%04X", number);
 for (i=0; i<4; i++) {
  if (put_wait_data(cosa, temp[i]) == -1) {
   pr_notice("cosa%d: puthexnumber failed to write byte %d\n",
      cosa->num, i);
   return -1-2*i;
  }
  if (get_wait_data(cosa) != temp[i]) {
   pr_notice("cosa%d: puthexhumber failed to read echo of byte %d\n",
      cosa->num, i);
   return -2-2*i;
  }
 }
 return 0;
}
