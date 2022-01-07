
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct team {int mode_priv; } ;
struct ab_priv {int dummy; } ;



__attribute__((used)) static struct ab_priv *ab_priv(struct team *team)
{
 return (struct ab_priv *) &team->mode_priv;
}
