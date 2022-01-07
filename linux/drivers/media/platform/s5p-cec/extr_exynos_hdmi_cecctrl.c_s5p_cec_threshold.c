
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s5p_cec_dev {scalar_t__ reg; } ;


 int CEC_FILTER_THRESHOLD ;
 scalar_t__ S5P_CEC_RX_FILTER_CTRL ;
 scalar_t__ S5P_CEC_RX_FILTER_TH ;
 int writeb (int ,scalar_t__) ;

void s5p_cec_threshold(struct s5p_cec_dev *cec)
{
 writeb(CEC_FILTER_THRESHOLD, cec->reg + S5P_CEC_RX_FILTER_TH);
 writeb(0, cec->reg + S5P_CEC_RX_FILTER_CTRL);
}
