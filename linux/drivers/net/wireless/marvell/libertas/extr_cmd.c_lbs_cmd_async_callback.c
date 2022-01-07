
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lbs_private {int dummy; } ;
struct cmd_header {int dummy; } ;



__attribute__((used)) static int lbs_cmd_async_callback(struct lbs_private *priv, unsigned long extra,
       struct cmd_header *resp)
{
 return 0;
}
