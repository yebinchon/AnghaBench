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
typedef  int u8 ;
struct ipw2100_priv {int config; int essid_len; scalar_t__ essid; } ;
struct host_command {int host_command_length; scalar_t__ host_command_parameters; int /*<<< orphan*/  host_command_sequence; int /*<<< orphan*/  host_command; } ;

/* Variables and functions */
 int CFG_ASSOCIATE ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*) ; 
 int IW_ESSID_MAX_SIZE ; 
 int /*<<< orphan*/  SSID ; 
 int FUNC1 (struct ipw2100_priv*) ; 
 scalar_t__ FUNC2 (struct ipw2100_priv*) ; 
 int FUNC3 (struct ipw2100_priv*,struct host_command*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct ipw2100_priv *priv, char *essid,
			     int length, int batch_mode)
{
	int ssid_len = FUNC6(length, IW_ESSID_MAX_SIZE);
	struct host_command cmd = {
		.host_command = SSID,
		.host_command_sequence = 0,
		.host_command_length = ssid_len
	};
	int err;

	FUNC0("SSID: '%*pE'\n", ssid_len, essid);

	if (ssid_len)
		FUNC4(cmd.host_command_parameters, essid, ssid_len);

	if (!batch_mode) {
		err = FUNC1(priv);
		if (err)
			return err;
	}

	/* Bug in FW currently doesn't honor bit 0 in SET_SCAN_OPTIONS to
	 * disable auto association -- so we cheat by setting a bogus SSID */
	if (!ssid_len && !(priv->config & CFG_ASSOCIATE)) {
		int i;
		u8 *bogus = (u8 *) cmd.host_command_parameters;
		for (i = 0; i < IW_ESSID_MAX_SIZE; i++)
			bogus[i] = 0x18 + i;
		cmd.host_command_length = IW_ESSID_MAX_SIZE;
	}

	/* NOTE:  We always send the SSID command even if the provided ESSID is
	 * the same as what we currently think is set. */

	err = FUNC3(priv, &cmd);
	if (!err) {
		FUNC5(priv->essid + ssid_len, 0, IW_ESSID_MAX_SIZE - ssid_len);
		FUNC4(priv->essid, essid, ssid_len);
		priv->essid_len = ssid_len;
	}

	if (!batch_mode) {
		if (FUNC2(priv))
			err = -EIO;
	}

	return err;
}