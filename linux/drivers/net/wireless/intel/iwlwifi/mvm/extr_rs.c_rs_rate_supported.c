
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rs_rate {int index; } ;
struct iwl_lq_sta {int dummy; } ;


 int BIT (int ) ;
 int rs_get_supported_rates (struct iwl_lq_sta*,struct rs_rate*) ;

__attribute__((used)) static inline bool rs_rate_supported(struct iwl_lq_sta *lq_sta,
         struct rs_rate *rate)
{
 return BIT(rate->index) & rs_get_supported_rates(lq_sta, rate);
}
