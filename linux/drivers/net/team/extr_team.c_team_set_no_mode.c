
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int user_carrier_enabled; int * mode; } ;


 int __team_no_mode ;

__attribute__((used)) static void team_set_no_mode(struct team *team)
{
 team->user_carrier_enabled = 0;
 team->mode = &__team_no_mode;
}
