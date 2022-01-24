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
typedef  int /*<<< orphan*/  u_char ;
struct otp_info {int dummy; } ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,size_t,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd, size_t len,
					 size_t *retlen, struct otp_info *buf)
{
	return FUNC0(mtd, 0, len, retlen, (u_char *)buf,
				   NULL, 0);
}