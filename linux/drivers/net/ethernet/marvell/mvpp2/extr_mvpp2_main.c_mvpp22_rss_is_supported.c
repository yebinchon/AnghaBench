
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ MVPP2_QDIST_MULTI_MODE ;
 scalar_t__ queue_mode ;

__attribute__((used)) static bool mvpp22_rss_is_supported(void)
{
 return queue_mode == MVPP2_QDIST_MULTI_MODE;
}
