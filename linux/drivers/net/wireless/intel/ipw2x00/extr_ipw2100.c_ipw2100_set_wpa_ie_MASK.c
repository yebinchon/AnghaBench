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
struct ipw2100_wpa_assoc_frame {int dummy; } ;
struct ipw2100_priv {int dummy; } ;
struct host_command {int host_command_length; int /*<<< orphan*/  host_command_parameters; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SET_WPA_IE ; 
 int FUNC1 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC2 (struct ipw2100_priv*) ; 
 int FUNC3 (struct ipw2100_priv*,struct host_command*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct ipw2100_wpa_assoc_frame*,int) ; 

__attribute__((used)) static int FUNC5(struct ipw2100_priv *priv,
			      struct ipw2100_wpa_assoc_frame *wpa_frame,
			      int batch_mode)
{
	struct host_command cmd = {
		.host_command = SET_WPA_IE,
		.host_command_sequence = 0,
		.host_command_length = sizeof(struct ipw2100_wpa_assoc_frame),
	};
	int err;

	FUNC0("SET_WPA_IE\n");

	if (!batch_mode) {
		err = FUNC1(priv);
		if (err)
			return err;
	}

	FUNC4(cmd.host_command_parameters, wpa_frame,
	       sizeof(struct ipw2100_wpa_assoc_frame));

	err = FUNC3(priv, &cmd);

	if (!batch_mode) {
		if (FUNC2(priv))
			err = -EIO;
	}

	return err;
}