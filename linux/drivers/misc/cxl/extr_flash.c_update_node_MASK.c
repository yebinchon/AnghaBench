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
typedef  int /*<<< orphan*/  vd ;
typedef  int u32 ;
struct update_props_workarea {int /*<<< orphan*/  nprops; int /*<<< orphan*/  phandle; } ;
struct device_node {int dummy; } ;
typedef  int /*<<< orphan*/  s32 ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  RTAS_DATA_BUF_SIZE ; 
 int RTAS_UNKNOWN_SERVICE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct device_node* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct device_node*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*) ; 
 int FUNC9 (struct device_node*,char*,int,char*) ; 

__attribute__((used)) static int FUNC10(__be32 phandle, s32 scope)
{
	struct update_props_workarea *upwa;
	struct device_node *dn;
	int i, rc, ret;
	char *prop_data;
	char *buf;
	int token;
	u32 nprops;
	u32 vd;

	token = FUNC7("ibm,update-properties");
	if (token == RTAS_UNKNOWN_SERVICE)
		return -EINVAL;

	buf = FUNC2(RTAS_DATA_BUF_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	dn = FUNC3(FUNC0(phandle));
	if (!dn) {
		FUNC1(buf);
		return -ENOENT;
	}

	upwa = (struct update_props_workarea *)&buf[0];
	upwa->phandle = phandle;
	do {
		rc = FUNC6(token, buf, scope);
		if (rc < 0)
			break;

		prop_data = buf + sizeof(*upwa);
		nprops = FUNC0(upwa->nprops);

		if (*prop_data == 0) {
			prop_data++;
			vd = FUNC0(*(__be32 *)prop_data);
			prop_data += vd + sizeof(vd);
			nprops--;
		}

		for (i = 0; i < nprops; i++) {
			char *prop_name;

			prop_name = prop_data;
			prop_data += FUNC8(prop_name) + 1;
			vd = FUNC0(*(__be32 *)prop_data);
			prop_data += sizeof(vd);

			if ((vd != 0x00000000) && (vd != 0x80000000)) {
				ret = FUNC9(dn, prop_name, vd,
						prop_data);
				if (ret)
					FUNC5("cxl: Could not update property %s - %i\n",
					       prop_name, ret);

				prop_data += vd;
			}
		}
	} while (rc == 1);

	FUNC4(dn);
	FUNC1(buf);
	return rc;
}