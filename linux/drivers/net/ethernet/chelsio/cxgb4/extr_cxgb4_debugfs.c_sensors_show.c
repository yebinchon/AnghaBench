
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct seq_file {struct adapter* private; } ;
struct adapter {int pf; int mbox; } ;


 int FW_PARAMS_MNEM_DEV ;
 scalar_t__ FW_PARAMS_MNEM_V (int ) ;
 int FW_PARAMS_PARAM_DEV_DIAG ;
 scalar_t__ FW_PARAMS_PARAM_X_V (int ) ;
 scalar_t__ FW_PARAMS_PARAM_Y_V (int ) ;
 int FW_PARAM_DEV_DIAG_TMP ;
 int FW_PARAM_DEV_DIAG_VDD ;
 int seq_printf (struct seq_file*,char*,scalar_t__) ;
 int seq_puts (struct seq_file*,char*) ;
 int t4_query_params (struct adapter*,int ,int ,int ,int,scalar_t__*,scalar_t__*) ;

__attribute__((used)) static int sensors_show(struct seq_file *seq, void *v)
{
 struct adapter *adap = seq->private;
 u32 param[7], val[7];
 int ret;




 param[0] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
      FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_DIAG) |
      FW_PARAMS_PARAM_Y_V(FW_PARAM_DEV_DIAG_TMP));
 param[1] = (FW_PARAMS_MNEM_V(FW_PARAMS_MNEM_DEV) |
      FW_PARAMS_PARAM_X_V(FW_PARAMS_PARAM_DEV_DIAG) |
      FW_PARAMS_PARAM_Y_V(FW_PARAM_DEV_DIAG_VDD));
 ret = t4_query_params(adap, adap->mbox, adap->pf, 0, 2,
         param, val);

 if (ret < 0 || val[0] == 0)
  seq_puts(seq, "Temperature: <unknown>\n");
 else
  seq_printf(seq, "Temperature: %dC\n", val[0]);

 if (ret < 0 || val[1] == 0)
  seq_puts(seq, "Core VDD:    <unknown>\n");
 else
  seq_printf(seq, "Core VDD:    %dmV\n", val[1]);

 return 0;
}
