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
struct net_device {int dummy; } ;
struct in6_addr {scalar_t__ s6_addr; } ;
struct fw_clip_cmd {int /*<<< orphan*/  ip_lo; int /*<<< orphan*/  ip_hi; void* alloc_to_len16; void* op_to_write; } ;
struct adapter {int /*<<< orphan*/  mbox; } ;
typedef  int /*<<< orphan*/  c ;
typedef  int /*<<< orphan*/  __be64 ;

/* Variables and functions */
 int /*<<< orphan*/  FW_CLIP_CMD ; 
 int FW_CLIP_CMD_ALLOC_F ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FW_CMD_REQUEST_F ; 
 int FW_CMD_WRITE_F ; 
 int FUNC1 (struct fw_clip_cmd) ; 
 void* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fw_clip_cmd*,int /*<<< orphan*/ ,int) ; 
 struct adapter* FUNC4 (struct net_device const*) ; 
 int FUNC5 (struct adapter*,int /*<<< orphan*/ ,struct fw_clip_cmd*,int,struct fw_clip_cmd*,int) ; 

__attribute__((used)) static int FUNC6(const struct net_device *dev,
			  const struct in6_addr *lip)
{
	struct adapter *adap = FUNC4(dev);
	struct fw_clip_cmd c;

	FUNC3(&c, 0, sizeof(c));
	c.op_to_write = FUNC2(FUNC0(FW_CLIP_CMD) |
			      FW_CMD_REQUEST_F | FW_CMD_WRITE_F);
	c.alloc_to_len16 = FUNC2(FW_CLIP_CMD_ALLOC_F | FUNC1(c));
	*(__be64 *)&c.ip_hi = *(__be64 *)(lip->s6_addr);
	*(__be64 *)&c.ip_lo = *(__be64 *)(lip->s6_addr + 8);
	return FUNC5(adap, adap->mbox, &c, sizeof(c), &c, false);
}