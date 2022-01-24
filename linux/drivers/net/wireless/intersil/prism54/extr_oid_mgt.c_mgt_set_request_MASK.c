#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct islpci_mgmtframe {TYPE_1__* header; } ;
struct TYPE_7__ {int /*<<< orphan*/  mib_sem; int /*<<< orphan*/  ndev; void** mib; } ;
typedef  TYPE_2__ islpci_private ;
typedef  enum oid_num_t { ____Placeholder_oid_num_t } oid_num_t ;
struct TYPE_8__ {int range; int size; int flags; scalar_t__ oid; } ;
struct TYPE_6__ {int operation; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int OID_FLAG_TYPE ; 
 int OID_NUM_LAST ; 
 int PIMFOR_OP_ERROR ; 
 int /*<<< orphan*/  PIMFOR_OP_SET ; 
 scalar_t__ PRV_STATE_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_5__* isl_oid ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (struct islpci_mgmtframe*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,void*,int,struct islpci_mgmtframe**) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,int) ; 
 int /*<<< orphan*/  FUNC6 (int,void*) ; 
 int /*<<< orphan*/  FUNC7 (int,void*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

int
FUNC9(islpci_private *priv, enum oid_num_t n, int extra, void *data)
{
	int ret = 0;
	struct islpci_mgmtframe *response = NULL;
	int response_op = PIMFOR_OP_ERROR;
	int dlen;
	void *cache, *_data = data;
	u32 oid;

	FUNC0(n >= OID_NUM_LAST);
	FUNC0(extra > isl_oid[n].range);

	if (!priv->mib)
		/* memory has been freed */
		return -1;

	dlen = isl_oid[n].size;
	cache = priv->mib[n];
	cache += (cache ? extra * dlen : 0);
	oid = isl_oid[n].oid + extra;

	if (_data == NULL)
		/* we are requested to re-set a cached value */
		_data = cache;
	else
		FUNC6(isl_oid[n].flags & OID_FLAG_TYPE, _data);
	/* If we are going to write to the cache, we don't want anyone to read
	 * it -> acquire write lock.
	 * Else we could acquire a read lock to be sure we don't bother the
	 * commit process (which takes a write lock). But I'm not sure if it's
	 * needed.
	 */
	if (cache)
		FUNC1(&priv->mib_sem);

	if (FUNC2(priv) >= PRV_STATE_READY) {
		ret = FUNC4(priv->ndev, PIMFOR_OP_SET, oid,
					     _data, dlen, &response);
		if (!ret) {
			response_op = response->header->operation;
			FUNC3(response);
		}
		if (ret || response_op == PIMFOR_OP_ERROR)
			ret = -EIO;
	} else if (!cache)
		ret = -EIO;

	if (cache) {
		if (!ret && data)
			FUNC5(cache, _data, dlen);
		FUNC8(&priv->mib_sem);
	}

	/* re-set given data to what it was */
	if (data)
		FUNC7(isl_oid[n].flags & OID_FLAG_TYPE, data);

	return ret;
}