
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct mwifiex_private {TYPE_1__* adapter; } ;
struct TYPE_2__ {int fw_cap_info; } ;


 int EOPNOTSUPP ;




 int ISSUPP_ADHOC_ENABLED (int ) ;

__attribute__((used)) static int mwifiex_is_cmd_supported(struct mwifiex_private *priv, u16 cmd_no)
{
 if (!ISSUPP_ADHOC_ENABLED(priv->adapter->fw_cap_info)) {
  switch (cmd_no) {
  case 128:
  case 130:
  case 131:
  case 129:
   return -EOPNOTSUPP;
  default:
   break;
  }
 }

 return 0;
}
