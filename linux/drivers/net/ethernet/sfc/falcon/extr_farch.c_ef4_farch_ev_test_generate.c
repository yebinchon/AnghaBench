
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ef4_channel {int dummy; } ;


 int EF4_CHANNEL_MAGIC_TEST (struct ef4_channel*) ;
 int ef4_farch_magic_event (struct ef4_channel*,int ) ;

void ef4_farch_ev_test_generate(struct ef4_channel *channel)
{
 ef4_farch_magic_event(channel, EF4_CHANNEL_MAGIC_TEST(channel));
}
