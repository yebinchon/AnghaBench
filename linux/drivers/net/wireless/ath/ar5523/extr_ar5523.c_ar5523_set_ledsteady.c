
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ar5523_cmd_ledsteady {void* ledmode; void* lednum; } ;
struct ar5523 {int dummy; } ;
typedef int led ;


 int UATH_LED_LINK ;
 int WDCMSG_SET_LED_STEADY ;
 int ar5523_cmd_write (struct ar5523*,int ,struct ar5523_cmd_ledsteady*,int,int ) ;
 int ar5523_dbg (struct ar5523*,char*,char*,char*) ;
 void* cpu_to_be32 (int) ;

__attribute__((used)) static int ar5523_set_ledsteady(struct ar5523 *ar, int lednum, int ledmode)
{
 struct ar5523_cmd_ledsteady led;

 led.lednum = cpu_to_be32(lednum);
 led.ledmode = cpu_to_be32(ledmode);

 ar5523_dbg(ar, "set %s led %s (steady)\n",
     (lednum == UATH_LED_LINK) ? "link" : "activity",
     ledmode ? "on" : "off");
 return ar5523_cmd_write(ar, WDCMSG_SET_LED_STEADY, &led, sizeof(led),
     0);
}
