#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char u8 ;
struct TYPE_4__ {int /*<<< orphan*/  last_tsf; } ;
struct TYPE_3__ {int /*<<< orphan*/  channel; } ;
struct il_priv {TYPE_2__ _3945; TYPE_1__ active; } ;
struct ieee80211_measurement_params {char channel; int /*<<< orphan*/  duration; int /*<<< orphan*/  start_time; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char,char,char const*) ; 
 char IL_MEASURE_BASIC ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct il_priv* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (struct il_priv*,struct ieee80211_measurement_params*,char) ; 
 char FUNC5 (int /*<<< orphan*/ ) ; 
 char FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 

__attribute__((used)) static ssize_t
FUNC8(struct device *d, struct device_attribute *attr,
			 const char *buf, size_t count)
{
	struct il_priv *il = FUNC3(d);
	struct ieee80211_measurement_params params = {
		.channel = FUNC5(il->active.channel),
		.start_time = FUNC2(il->_3945.last_tsf),
		.duration = FUNC1(1),
	};
	u8 type = IL_MEASURE_BASIC;
	u8 buffer[32];
	u8 channel;

	if (count) {
		char *p = buffer;
		FUNC7(buffer, buf, sizeof(buffer));
		channel = FUNC6(p, NULL, 0);
		if (channel)
			params.channel = channel;

		p = buffer;
		while (*p && *p != ' ')
			p++;
		if (*p)
			type = FUNC6(p + 1, NULL, 0);
	}

	FUNC0("Invoking measurement of type %d on " "channel %d (for '%s')\n",
	       type, params.channel, buf);
	FUNC4(il, &params, type);

	return count;
}