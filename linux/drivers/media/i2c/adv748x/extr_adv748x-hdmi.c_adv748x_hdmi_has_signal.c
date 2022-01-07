
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adv748x_state {int dummy; } ;


 int ADV748X_HDMI_LW1 ;
 int ADV748X_HDMI_LW1_DE_REGEN ;
 int ADV748X_HDMI_LW1_VERT_FILTER ;
 int hdmi_read (struct adv748x_state*,int ) ;

__attribute__((used)) static bool adv748x_hdmi_has_signal(struct adv748x_state *state)
{
 int val;


 val = hdmi_read(state, ADV748X_HDMI_LW1);
 return (val & ADV748X_HDMI_LW1_VERT_FILTER) &&
        (val & ADV748X_HDMI_LW1_DE_REGEN);
}
