
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pulse8 {int dummy; } ;
struct cec_adapter {int dummy; } ;


 int MSGCODE_COMMAND_ACCEPTED ;
 int MSGCODE_SET_CONTROLLED ;
 struct pulse8* cec_get_drvdata (struct cec_adapter*) ;
 int pulse8_send_and_wait (struct pulse8*,int*,int,int ,int) ;

__attribute__((used)) static int pulse8_cec_adap_enable(struct cec_adapter *adap, bool enable)
{
 struct pulse8 *pulse8 = cec_get_drvdata(adap);
 u8 cmd[16];
 int err;

 cmd[0] = MSGCODE_SET_CONTROLLED;
 cmd[1] = enable;
 err = pulse8_send_and_wait(pulse8, cmd, 2,
       MSGCODE_COMMAND_ACCEPTED, 1);
 return enable ? err : 0;
}
