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
struct v4l2_fwht_pixfmt_info {int dummy; } ;
struct fwht_cframe_hdr {int /*<<< orphan*/  flags; int /*<<< orphan*/  version; int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;

/* Variables and functions */
 unsigned int MAX_HEIGHT ; 
 unsigned int MAX_WIDTH ; 
 unsigned int MIN_HEIGHT ; 
 unsigned int MIN_WIDTH ; 
 struct v4l2_fwht_pixfmt_info* FUNC0 (struct fwht_cframe_hdr const*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,unsigned int) ; 

__attribute__((used)) static bool FUNC3(const struct fwht_cframe_hdr *p_hdr)
{
	const struct v4l2_fwht_pixfmt_info *info;
	unsigned int w = FUNC1(p_hdr->width);
	unsigned int h = FUNC1(p_hdr->height);
	unsigned int version = FUNC1(p_hdr->version);
	unsigned int flags = FUNC1(p_hdr->flags);

	if (w < MIN_WIDTH || w > MAX_WIDTH || h < MIN_HEIGHT || h > MAX_HEIGHT)
		return false;

	if (!FUNC2(flags, version))
		return false;

	info = FUNC0(p_hdr);
	if (!info)
		return false;
	return true;
}