
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int ab_options ;
 int team_options_unregister (struct team*,int ,int ) ;

__attribute__((used)) static void ab_exit(struct team *team)
{
 team_options_unregister(team, ab_options, ARRAY_SIZE(ab_options));
}
