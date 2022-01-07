
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct msdc_host {scalar_t__ base; scalar_t__ top_base; TYPE_1__* dev_comp; } ;
struct TYPE_2__ {scalar_t__ pad_tune_reg; } ;


 scalar_t__ EMMC_TOP_CONTROL ;
 int MSDC_PAD_TUNE_DATRRDLY ;
 int PAD_DAT_RD_RXDLY ;
 int sdr_set_field (scalar_t__,int ,scalar_t__) ;

__attribute__((used)) static inline void msdc_set_data_delay(struct msdc_host *host, u32 value)
{
 u32 tune_reg = host->dev_comp->pad_tune_reg;

 if (host->top_base)
  sdr_set_field(host->top_base + EMMC_TOP_CONTROL,
         PAD_DAT_RD_RXDLY, value);
 else
  sdr_set_field(host->base + tune_reg, MSDC_PAD_TUNE_DATRRDLY,
         value);
}
