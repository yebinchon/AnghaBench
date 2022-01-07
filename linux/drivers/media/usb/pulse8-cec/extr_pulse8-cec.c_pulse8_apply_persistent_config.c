
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct pulse8 {int adap; } ;
struct cec_log_addrs {int dummy; } ;


 int cec_s_log_addrs (int ,struct cec_log_addrs*,int) ;
 int cec_s_phys_addr (int ,int ,int) ;

__attribute__((used)) static int pulse8_apply_persistent_config(struct pulse8 *pulse8,
       struct cec_log_addrs *log_addrs,
       u16 pa)
{
 int err;

 err = cec_s_log_addrs(pulse8->adap, log_addrs, 0);
 if (err)
  return err;

 cec_s_phys_addr(pulse8->adap, pa, 0);

 return 0;
}
