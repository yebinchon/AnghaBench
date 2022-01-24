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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct lbs_private {int /*<<< orphan*/  driver_lock; int /*<<< orphan*/  dnld_sent; int /*<<< orphan*/  card; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DNLD_RES_RECEIVED ; 
 int IF_CS_BIT_RESP ; 
 int /*<<< orphan*/  IF_CS_CARD_STATUS ; 
 int /*<<< orphan*/  IF_CS_RESP ; 
 int /*<<< orphan*/  IF_CS_RESP_LEN ; 
 int LBS_CMD_BUFFER_SIZE ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct lbs_private *priv, u8 *data, u32 *len)
{
	unsigned long flags;
	int ret = -1;
	u16 status;

	/* is hardware ready? */
	status = FUNC0(priv->card, IF_CS_CARD_STATUS);
	if ((status & IF_CS_BIT_RESP) == 0) {
		FUNC3(priv->dev, "no cmd response in card\n");
		*len = 0;
		goto out;
	}

	*len = FUNC0(priv->card, IF_CS_RESP_LEN);
	if ((*len == 0) || (*len > LBS_CMD_BUFFER_SIZE)) {
		FUNC3(priv->dev,
			   "card cmd buffer has invalid # of bytes (%d)\n",
			   *len);
		goto out;
	}

	/* read even number of bytes, then odd byte if necessary */
	FUNC1(priv->card, IF_CS_RESP, data, *len/sizeof(u16));
	if (*len & 1)
		data[*len-1] = FUNC2(priv->card, IF_CS_RESP);

	/* This is a workaround for a firmware that reports too much
	 * bytes */
	*len -= 8;
	ret = 0;

	/* Clear this flag again */
	FUNC4(&priv->driver_lock, flags);
	priv->dnld_sent = DNLD_RES_RECEIVED;
	FUNC5(&priv->driver_lock, flags);

out:
	return ret;
}