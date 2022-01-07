
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int mode_priv; } ;
struct lb_priv {int dummy; } ;



__attribute__((used)) static struct lb_priv *get_lb_priv(struct team *team)
{
 return (struct lb_priv *) &team->mode_priv;
}
