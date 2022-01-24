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
struct v4l2_fwnode_endpoint {int nr_of_link_frequencies; int /*<<< orphan*/ * link_frequencies; } ;
struct fwnode_handle {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (struct fwnode_handle*,struct v4l2_fwnode_endpoint*) ; 
 int FUNC1 (struct fwnode_handle*,char*) ; 
 int FUNC2 (struct fwnode_handle*,char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC3 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct v4l2_fwnode_endpoint*) ; 

int FUNC7(struct fwnode_handle *fwnode,
				     struct v4l2_fwnode_endpoint *vep)
{
	int rval;

	rval = FUNC0(fwnode, vep);
	if (rval < 0)
		return rval;

	rval = FUNC1(fwnode, "link-frequencies");
	if (rval > 0) {
		unsigned int i;

		vep->link_frequencies =
			FUNC3(rval, sizeof(*vep->link_frequencies),
				      GFP_KERNEL);
		if (!vep->link_frequencies)
			return -ENOMEM;

		vep->nr_of_link_frequencies = rval;

		rval = FUNC2(fwnode,
						      "link-frequencies",
						      vep->link_frequencies,
						      vep->nr_of_link_frequencies);
		if (rval < 0) {
			FUNC6(vep);
			return rval;
		}

		for (i = 0; i < vep->nr_of_link_frequencies; i++)
			FUNC5("link-frequencies %u value %llu\n", i,
				vep->link_frequencies[i]);
	}

	FUNC4("===== end V4L2 endpoint properties\n");

	return 0;
}