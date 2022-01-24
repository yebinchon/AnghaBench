#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int u64 ;
struct fastrpc_user {int /*<<< orphan*/  lock; int /*<<< orphan*/  maps; struct fastrpc_session_ctx* sctx; } ;
struct fastrpc_session_ctx {scalar_t__ sid; int /*<<< orphan*/  dev; } ;
struct fastrpc_map {int fd; int phys; int size; int len; TYPE_1__* buf; TYPE_1__* attach; int /*<<< orphan*/  node; int /*<<< orphan*/  refcount; TYPE_1__* table; int /*<<< orphan*/  va; struct fastrpc_user* fl; } ;
struct TYPE_11__ {int /*<<< orphan*/  sgl; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_BIDIRECTIONAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,TYPE_1__*) ; 
 TYPE_1__* FUNC6 (int) ; 
 TYPE_1__* FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (struct fastrpc_user*,int,struct fastrpc_map**) ; 
 int /*<<< orphan*/  FUNC10 (struct fastrpc_map*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 struct fastrpc_map* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC18(struct fastrpc_user *fl, int fd,
			      u64 len, struct fastrpc_map **ppmap)
{
	struct fastrpc_session_ctx *sess = fl->sctx;
	struct fastrpc_map *map = NULL;
	int err = 0;

	if (!FUNC9(fl, fd, ppmap))
		return 0;

	map = FUNC12(sizeof(*map), GFP_KERNEL);
	if (!map)
		return -ENOMEM;

	FUNC0(&map->node);
	map->fl = fl;
	map->fd = fd;
	map->buf = FUNC6(fd);
	if (FUNC1(map->buf)) {
		err = FUNC2(map->buf);
		goto get_err;
	}

	map->attach = FUNC4(map->buf, sess->dev);
	if (FUNC1(map->attach)) {
		FUNC3(sess->dev, "Failed to attach dmabuf\n");
		err = FUNC2(map->attach);
		goto attach_err;
	}

	map->table = FUNC7(map->attach, DMA_BIDIRECTIONAL);
	if (FUNC1(map->table)) {
		err = FUNC2(map->table);
		goto map_err;
	}

	map->phys = FUNC14(map->table->sgl);
	map->phys += ((u64)fl->sctx->sid << 32);
	map->size = len;
	map->va = FUNC15(map->table->sgl);
	map->len = len;
	FUNC11(&map->refcount);

	FUNC16(&fl->lock);
	FUNC13(&map->node, &fl->maps);
	FUNC17(&fl->lock);
	*ppmap = map;

	return 0;

map_err:
	FUNC5(map->buf, map->attach);
attach_err:
	FUNC8(map->buf);
get_err:
	FUNC10(map);

	return err;
}