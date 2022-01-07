
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath6kl_vif {int flags; } ;


 int HOST_SLEEP_MODE_CMD_PROCESSED ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int is_hsleep_mode_procsed(struct ath6kl_vif *vif)
{
 return test_bit(HOST_SLEEP_MODE_CMD_PROCESSED, &vif->flags);
}
