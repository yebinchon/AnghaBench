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
struct ubi_vid_io_buf {int dummy; } ;
struct ubi_device {int /*<<< orphan*/  vid_hdr_alsize; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ubi_vid_io_buf*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ubi_vid_io_buf* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ubi_device const*,struct ubi_vid_io_buf*,void*) ; 

__attribute__((used)) static inline struct ubi_vid_io_buf *
FUNC4(const struct ubi_device *ubi, gfp_t gfp_flags)
{
	struct ubi_vid_io_buf *vidb;
	void *buf;

	vidb = FUNC2(sizeof(*vidb), gfp_flags);
	if (!vidb)
		return NULL;

	buf = FUNC1(ubi->vid_hdr_alsize, gfp_flags);
	if (!buf) {
		FUNC0(vidb);
		return NULL;
	}

	FUNC3(ubi, vidb, buf);

	return vidb;
}