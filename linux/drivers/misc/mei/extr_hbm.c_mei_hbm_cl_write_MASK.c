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
struct mei_msg_hdr {int dummy; } ;
struct mei_device {int dummy; } ;
struct mei_cl {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mei_cl*,int /*<<< orphan*/ ,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct mei_msg_hdr*,size_t) ; 
 int FUNC2 (struct mei_device*,struct mei_msg_hdr*,void*) ; 

__attribute__((used)) static inline int FUNC3(struct mei_device *dev, struct mei_cl *cl,
				   u8 hbm_cmd, void *buf, size_t len)
{
	struct mei_msg_hdr mei_hdr;

	FUNC1(&mei_hdr, len);
	FUNC0(cl, hbm_cmd, buf, len);

	return FUNC2(dev, &mei_hdr, buf);
}