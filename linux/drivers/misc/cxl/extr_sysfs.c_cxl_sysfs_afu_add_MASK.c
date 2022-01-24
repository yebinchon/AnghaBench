#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct device_attribute {TYPE_1__ attr; } ;
struct TYPE_6__ {char* name; int /*<<< orphan*/  mode; } ;
struct TYPE_7__ {int /*<<< orphan*/  read; scalar_t__ size; TYPE_2__ attr; } ;
struct cxl_afu {int crs_num; int /*<<< orphan*/  dev; scalar_t__ eb_len; int /*<<< orphan*/  crs; TYPE_3__ attr_eb; } ;
struct afu_config_record {int /*<<< orphan*/  list; } ;
struct TYPE_8__ {scalar_t__ (* support_attributes ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int FUNC0 (struct device_attribute*) ; 
 int /*<<< orphan*/  CXL_AFU_ATTRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct afu_config_record*) ; 
 int FUNC3 (struct afu_config_record*) ; 
 int /*<<< orphan*/  S_IRUGO ; 
 struct device_attribute* afu_attrs ; 
 int /*<<< orphan*/  afu_eb_read ; 
 TYPE_4__* cxl_ops ; 
 struct afu_config_record* FUNC4 (struct cxl_afu*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct cxl_afu*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FUNC8 (int /*<<< orphan*/ *,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,struct device_attribute*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 

int FUNC14(struct cxl_afu *afu)
{
	struct device_attribute *dev_attr;
	struct afu_config_record *cr;
	int i, rc;

	FUNC1(&afu->crs);

	for (i = 0; i < FUNC0(afu_attrs); i++) {
		dev_attr = &afu_attrs[i];
		if (cxl_ops->support_attributes(dev_attr->attr.name,
						CXL_AFU_ATTRS)) {
			if ((rc = FUNC8(&afu->dev, &afu_attrs[i])))
				goto err;
		}
	}

	/* conditionally create the add the binary file for error info buffer */
	if (afu->eb_len) {
		FUNC13(&afu->attr_eb.attr);

		afu->attr_eb.attr.name = "afu_err_buff";
		afu->attr_eb.attr.mode = S_IRUGO;
		afu->attr_eb.size = afu->eb_len;
		afu->attr_eb.read = afu_eb_read;

		rc = FUNC7(&afu->dev, &afu->attr_eb);
		if (rc) {
			FUNC6(&afu->dev,
				"Unable to create eb attr for the afu. Err(%d)\n",
				rc);
			goto err;
		}
	}

	for (i = 0; i < afu->crs_num; i++) {
		cr = FUNC4(afu, i);
		if (FUNC2(cr)) {
			rc = FUNC3(cr);
			goto err1;
		}
		FUNC10(&cr->list, &afu->crs);
	}

	return 0;

err1:
	FUNC5(afu);
	return rc;
err:
	/* reset the eb_len as we havent created the bin attr */
	afu->eb_len = 0;

	for (i--; i >= 0; i--) {
		dev_attr = &afu_attrs[i];
		if (cxl_ops->support_attributes(dev_attr->attr.name,
						CXL_AFU_ATTRS))
		FUNC9(&afu->dev, &afu_attrs[i]);
	}
	return rc;
}