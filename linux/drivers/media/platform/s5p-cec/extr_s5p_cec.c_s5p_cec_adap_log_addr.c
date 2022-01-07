
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct s5p_cec_dev {int dummy; } ;
struct cec_adapter {int dummy; } ;


 struct s5p_cec_dev* cec_get_drvdata (struct cec_adapter*) ;
 int s5p_cec_set_addr (struct s5p_cec_dev*,int ) ;

__attribute__((used)) static int s5p_cec_adap_log_addr(struct cec_adapter *adap, u8 addr)
{
 struct s5p_cec_dev *cec = cec_get_drvdata(adap);

 s5p_cec_set_addr(cec, addr);
 return 0;
}
