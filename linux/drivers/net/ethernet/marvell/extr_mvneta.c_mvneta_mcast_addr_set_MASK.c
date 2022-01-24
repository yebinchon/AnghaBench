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
struct mvneta_port {int /*<<< orphan*/ * mcast_count; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (unsigned char*,char*,int) ; 
 unsigned char FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvneta_port*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mvneta_port*,unsigned char,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,unsigned char,...) ; 

__attribute__((used)) static int FUNC5(struct mvneta_port *pp, unsigned char *p_addr,
				 int queue)
{
	unsigned char crc_result = 0;

	if (FUNC0(p_addr, "\x01\x00\x5e\x00\x00", 5) == 0) {
		FUNC3(pp, p_addr[5], queue);
		return 0;
	}

	crc_result = FUNC1(p_addr);
	if (queue == -1) {
		if (pp->mcast_count[crc_result] == 0) {
			FUNC4(pp->dev, "No valid Mcast for crc8=0x%02x\n",
				    crc_result);
			return -EINVAL;
		}

		pp->mcast_count[crc_result]--;
		if (pp->mcast_count[crc_result] != 0) {
			FUNC4(pp->dev,
				    "After delete there are %d valid Mcast for crc8=0x%02x\n",
				    pp->mcast_count[crc_result], crc_result);
			return -EINVAL;
		}
	} else
		pp->mcast_count[crc_result]++;

	FUNC2(pp, crc_result, queue);

	return 0;
}