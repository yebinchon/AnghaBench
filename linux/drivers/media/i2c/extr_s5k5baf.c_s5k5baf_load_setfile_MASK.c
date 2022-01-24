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
struct s5k5baf {int /*<<< orphan*/  fw; int /*<<< orphan*/  sd; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;
struct firmware {int size; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __le16 ;

/* Variables and functions */
 int /*<<< orphan*/  S5K5BAF_FW_FILENAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct s5k5baf *state)
{
	struct i2c_client *c = FUNC4(&state->sd);
	const struct firmware *fw;
	int ret;

	ret = FUNC2(&fw, S5K5BAF_FW_FILENAME, &c->dev);
	if (ret < 0) {
		FUNC0(&c->dev, "firmware file (%s) not loaded\n",
			 S5K5BAF_FW_FILENAME);
		return ret;
	}

	ret = FUNC3(&c->dev, &state->fw, fw->size / 2,
			       (__le16 *)fw->data);

	FUNC1(fw);

	return ret;
}