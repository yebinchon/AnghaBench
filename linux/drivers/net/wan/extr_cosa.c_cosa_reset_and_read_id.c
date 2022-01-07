
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cosa_data {int dummy; } ;


 int COSA_MAX_ID_STRING ;
 int SR_RST ;
 int cosa_getdata8 (struct cosa_data*) ;
 int cosa_putstatus (struct cosa_data*,int ) ;
 int get_wait_data (struct cosa_data*) ;
 int msleep (int) ;

__attribute__((used)) static int cosa_reset_and_read_id(struct cosa_data *cosa, char *idstring)
{
 int i=0, id=0, prev=0, curr=0;


 cosa_putstatus(cosa, 0);
 cosa_getdata8(cosa);
 cosa_putstatus(cosa, SR_RST);
 msleep(500);

 cosa_putstatus(cosa, 0);
 for (i=0; i<COSA_MAX_ID_STRING-1; i++, prev=curr) {
  if ((curr = get_wait_data(cosa)) == -1) {
   return -1;
  }
  curr &= 0xff;
  if (curr != '\r' && curr != '\n' && curr != 0x2e)
   idstring[id++] = curr;
  if (curr == 0x2e && prev == '\n')
   break;
 }

 idstring[id] = '\0';
 return id;
}
