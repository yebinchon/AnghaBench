
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int * mode; } ;


 int __team_no_mode ;

__attribute__((used)) static bool team_is_mode_set(struct team *team)
{
 return team->mode != &__team_no_mode;
}
