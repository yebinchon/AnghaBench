
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct seq_file {struct adapter* private; } ;
struct TYPE_2__ {size_t* b_wnd; int * a_wnd; } ;
struct adapter {TYPE_1__ params; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int NCCTRL_WIN ;
 int NMTUS ;
 int kfree (int **) ;
 int ** kmalloc_array (int ,int,int ) ;
 int seq_printf (struct seq_file*,char*,int,int ,int ,int ,int ,int ,int ,int ,int ,...) ;
 int t4_read_cong_tbl (struct adapter*,int **) ;

__attribute__((used)) static int cctrl_tbl_show(struct seq_file *seq, void *v)
{
 static const char * const dec_fac[] = {
  "0.5", "0.5625", "0.625", "0.6875", "0.75", "0.8125", "0.875",
  "0.9375" };

 int i;
 u16 (*incr)[NCCTRL_WIN];
 struct adapter *adap = seq->private;

 incr = kmalloc_array(NMTUS, sizeof(*incr), GFP_KERNEL);
 if (!incr)
  return -ENOMEM;

 t4_read_cong_tbl(adap, incr);

 for (i = 0; i < NCCTRL_WIN; ++i) {
  seq_printf(seq, "%2d: %4u %4u %4u %4u %4u %4u %4u %4u\n", i,
      incr[0][i], incr[1][i], incr[2][i], incr[3][i],
      incr[4][i], incr[5][i], incr[6][i], incr[7][i]);
  seq_printf(seq, "%8u %4u %4u %4u %4u %4u %4u %4u %5u %s\n",
      incr[8][i], incr[9][i], incr[10][i], incr[11][i],
      incr[12][i], incr[13][i], incr[14][i], incr[15][i],
      adap->params.a_wnd[i],
      dec_fac[adap->params.b_wnd[i]]);
 }

 kfree(incr);
 return 0;
}
