#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct ipw2100_wpa_assoc_frame {int var_ie_len; int /*<<< orphan*/  var_ie; scalar_t__ fixed_ie_mask; } ;
struct ipw2100_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ipw2100_priv*,struct ipw2100_wpa_assoc_frame*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ipw2100_priv*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static void FUNC3(struct ipw2100_priv *priv,
				    char *wpa_ie, int wpa_ie_len)
{

	struct ipw2100_wpa_assoc_frame frame;

	frame.fixed_ie_mask = 0;

	/* copy WPA IE */
	FUNC2(frame.var_ie, wpa_ie, wpa_ie_len);
	frame.var_ie_len = wpa_ie_len;

	/* make sure WPA is enabled */
	FUNC1(priv, 1);
	FUNC0(priv, &frame, 0);
}