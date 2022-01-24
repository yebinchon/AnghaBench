#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct resp_desc {int numDesc; scalar_t__ cmd; scalar_t__ parm1; int /*<<< orphan*/  parm3; int /*<<< orphan*/  parm2; int /*<<< orphan*/  flags; scalar_t__ seqNo; } ;
typedef  struct resp_desc u8 ;
typedef  scalar_t__ u32 ;
struct typhoon_indexes {int /*<<< orphan*/  respCleared; int /*<<< orphan*/  respReady; } ;
struct TYPE_2__ {struct resp_desc* ringBase; } ;
struct typhoon {int /*<<< orphan*/  dev; TYPE_1__ respRing; struct typhoon_indexes* indexes; } ;

/* Variables and functions */
 scalar_t__ RESPONSE_RING_SIZE ; 
 scalar_t__ TYPHOON_CMD_HELLO_RESP ; 
 scalar_t__ TYPHOON_CMD_READ_MEDIA_STATUS ; 
 int /*<<< orphan*/  TYPHOON_RESP_ERROR ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct resp_desc*,struct resp_desc*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct typhoon*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct resp_desc*) ; 
 scalar_t__ FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static int
FUNC10(struct typhoon *tp, int resp_size,
				struct resp_desc *resp_save)
{
	struct typhoon_indexes *indexes = tp->indexes;
	struct resp_desc *resp;
	u8 *base = tp->respRing.ringBase;
	int count, len, wrap_len;
	u32 cleared;
	u32 ready;

	cleared = FUNC2(indexes->respCleared);
	ready = FUNC2(indexes->respReady);
	while(cleared != ready) {
		resp = (struct resp_desc *)(base + cleared);
		count = resp->numDesc + 1;
		if(resp_save && resp->seqNo) {
			if(count > resp_size) {
				resp_save->flags = TYPHOON_RESP_ERROR;
				goto cleanup;
			}

			wrap_len = 0;
			len = count * sizeof(*resp);
			if(FUNC8(cleared + len > RESPONSE_RING_SIZE)) {
				wrap_len = cleared + len - RESPONSE_RING_SIZE;
				len = RESPONSE_RING_SIZE - cleared;
			}

			FUNC3(resp_save, resp, len);
			if(FUNC8(wrap_len)) {
				resp_save += len / sizeof(*resp);
				FUNC3(resp_save, base, wrap_len);
			}

			resp_save = NULL;
		} else if(resp->cmd == TYPHOON_CMD_READ_MEDIA_STATUS) {
			FUNC7(tp->dev, resp);
		} else if(resp->cmd == TYPHOON_CMD_HELLO_RESP) {
			FUNC5(tp);
		} else {
			FUNC4(tp->dev,
				   "dumping unexpected response 0x%04x:%d:0x%02x:0x%04x:%08x:%08x\n",
				   FUNC1(resp->cmd),
				   resp->numDesc, resp->flags,
				   FUNC1(resp->parm1),
				   FUNC2(resp->parm2),
				   FUNC2(resp->parm3));
		}

cleanup:
		FUNC6(&cleared, count);
	}

	indexes->respCleared = FUNC0(cleared);
	FUNC9();
	return resp_save == NULL;
}