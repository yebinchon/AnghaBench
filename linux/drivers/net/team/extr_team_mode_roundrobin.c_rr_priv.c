
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int mode_priv; } ;
struct rr_priv {int dummy; } ;



__attribute__((used)) static struct rr_priv *rr_priv(struct team *team)
{
 return (struct rr_priv *) &team->mode_priv;
}
