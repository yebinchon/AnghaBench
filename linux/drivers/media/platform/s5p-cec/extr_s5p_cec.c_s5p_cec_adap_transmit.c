
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct s5p_cec_dev {int dummy; } ;
struct cec_msg {int len; int msg; } ;
struct cec_adapter {int dummy; } ;


 struct s5p_cec_dev* cec_get_drvdata (struct cec_adapter*) ;
 int max (int,scalar_t__) ;
 int s5p_cec_copy_packet (struct s5p_cec_dev*,int ,int ,int ) ;

__attribute__((used)) static int s5p_cec_adap_transmit(struct cec_adapter *adap, u8 attempts,
     u32 signal_free_time, struct cec_msg *msg)
{
 struct s5p_cec_dev *cec = cec_get_drvdata(adap);





 s5p_cec_copy_packet(cec, msg->msg, msg->len, max(1, attempts - 1));
 return 0;
}
