
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct at86rf230_local {int dummy; } ;


 int SR_CHANNEL ;
 int at86rf230_write_subreg (struct at86rf230_local*,int ,int ) ;

__attribute__((used)) static int
at86rf23x_set_channel(struct at86rf230_local *lp, u8 page, u8 channel)
{
 return at86rf230_write_subreg(lp, SR_CHANNEL, channel);
}
