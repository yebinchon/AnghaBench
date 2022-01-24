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
struct st_proto_s {size_t chnl_id; void* write; int /*<<< orphan*/ * reg_complete_cb; int /*<<< orphan*/ * recv; } ;
struct st_data_s {int* is_registered; scalar_t__ protos_registered; int /*<<< orphan*/  lock; int /*<<< orphan*/  st_state; int /*<<< orphan*/  kim_data; } ;

/* Variables and functions */
 long EALREADY ; 
 long EINPROGRESS ; 
 long EINVAL ; 
 long EPROTONOSUPPORT ; 
 scalar_t__ ST_EMPTY ; 
 size_t ST_MAX_CHANNELS ; 
 int /*<<< orphan*/  ST_REG_IN_PROGRESS ; 
 int /*<<< orphan*/  ST_REG_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct st_data_s*,struct st_proto_s*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  st_int_recv ; 
 int /*<<< orphan*/  st_kim_recv ; 
 int /*<<< orphan*/  FUNC8 (struct st_data_s**,int /*<<< orphan*/ ) ; 
 long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct st_data_s*) ; 
 int /*<<< orphan*/  st_recv ; 
 int /*<<< orphan*/  FUNC11 (struct st_data_s*,long) ; 
 void* st_write ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

long FUNC13(struct st_proto_s *new_proto)
{
	struct st_data_s	*st_gdata;
	long err = 0;
	unsigned long flags = 0;

	FUNC8(&st_gdata, 0);
	if (st_gdata == NULL || new_proto == NULL || new_proto->recv == NULL
	    || new_proto->reg_complete_cb == NULL) {
		FUNC3("gdata/new_proto/recv or reg_complete_cb not ready");
		return -EINVAL;
	}

	if (new_proto->chnl_id >= ST_MAX_CHANNELS) {
		FUNC3("chnl_id %d not supported", new_proto->chnl_id);
		return -EPROTONOSUPPORT;
	}

	if (st_gdata->is_registered[new_proto->chnl_id] == true) {
		FUNC3("chnl_id %d already registered", new_proto->chnl_id);
		return -EALREADY;
	}

	/* can be from process context only */
	FUNC6(&st_gdata->lock, flags);

	if (FUNC12(ST_REG_IN_PROGRESS, &st_gdata->st_state)) {
		FUNC4(" ST_REG_IN_PROGRESS:%d ", new_proto->chnl_id);
		/* fw download in progress */

		FUNC0(st_gdata, new_proto);
		st_gdata->protos_registered++;
		new_proto->write = st_write;

		FUNC5(ST_REG_PENDING, &st_gdata->st_state);
		FUNC7(&st_gdata->lock, flags);
		return -EINPROGRESS;
	} else if (st_gdata->protos_registered == ST_EMPTY) {
		FUNC4(" chnl_id list empty :%d ", new_proto->chnl_id);
		FUNC5(ST_REG_IN_PROGRESS, &st_gdata->st_state);
		st_recv = st_kim_recv;

		/* enable the ST LL - to set default chip state */
		FUNC10(st_gdata);

		/* release lock previously held - re-locked below */
		FUNC7(&st_gdata->lock, flags);

		/* this may take a while to complete
		 * since it involves BT fw download
		 */
		err = FUNC9(st_gdata->kim_data);
		if (err != 0) {
			FUNC1(ST_REG_IN_PROGRESS, &st_gdata->st_state);
			if ((st_gdata->protos_registered != ST_EMPTY) &&
			    (FUNC12(ST_REG_PENDING, &st_gdata->st_state))) {
				FUNC3(" KIM failure complete callback ");
				FUNC6(&st_gdata->lock, flags);
				FUNC11(st_gdata, err);
				FUNC7(&st_gdata->lock, flags);
				FUNC1(ST_REG_PENDING, &st_gdata->st_state);
			}
			return -EINVAL;
		}

		FUNC6(&st_gdata->lock, flags);

		FUNC1(ST_REG_IN_PROGRESS, &st_gdata->st_state);
		st_recv = st_int_recv;

		/* this is where all pending registration
		 * are signalled to be complete by calling callback functions
		 */
		if ((st_gdata->protos_registered != ST_EMPTY) &&
		    (FUNC12(ST_REG_PENDING, &st_gdata->st_state))) {
			FUNC2(" call reg complete callback ");
			FUNC11(st_gdata, 0);
		}
		FUNC1(ST_REG_PENDING, &st_gdata->st_state);

		/* check for already registered once more,
		 * since the above check is old
		 */
		if (st_gdata->is_registered[new_proto->chnl_id] == true) {
			FUNC3(" proto %d already registered ",
				   new_proto->chnl_id);
			FUNC7(&st_gdata->lock, flags);
			return -EALREADY;
		}

		FUNC0(st_gdata, new_proto);
		st_gdata->protos_registered++;
		new_proto->write = st_write;
		FUNC7(&st_gdata->lock, flags);
		return err;
	}
	/* if fw is already downloaded & new stack registers protocol */
	else {
		FUNC0(st_gdata, new_proto);
		st_gdata->protos_registered++;
		new_proto->write = st_write;

		/* lock already held before entering else */
		FUNC7(&st_gdata->lock, flags);
		return err;
	}
}