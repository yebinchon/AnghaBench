
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipw2100_wpa_assoc_frame {int var_ie_len; int var_ie; scalar_t__ fixed_ie_mask; } ;
struct ipw2100_priv {int dummy; } ;


 int ipw2100_set_wpa_ie (struct ipw2100_priv*,struct ipw2100_wpa_assoc_frame*,int ) ;
 int ipw2100_wpa_enable (struct ipw2100_priv*,int) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static void ipw2100_wpa_assoc_frame(struct ipw2100_priv *priv,
        char *wpa_ie, int wpa_ie_len)
{

 struct ipw2100_wpa_assoc_frame frame;

 frame.fixed_ie_mask = 0;


 memcpy(frame.var_ie, wpa_ie, wpa_ie_len);
 frame.var_ie_len = wpa_ie_len;


 ipw2100_wpa_enable(priv, 1);
 ipw2100_set_wpa_ie(priv, &frame, 0);
}
