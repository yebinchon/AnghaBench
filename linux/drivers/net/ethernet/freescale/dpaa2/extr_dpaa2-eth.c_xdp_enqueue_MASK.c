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
typedef  int u32 ;
typedef  size_t u16 ;
struct dpaa2_fd {int dummy; } ;
struct dpaa2_faead {scalar_t__ conf_fqid; int /*<<< orphan*/  ctrl; } ;
struct dpaa2_eth_priv {int (* enqueue ) (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int /*<<< orphan*/ ) ;struct dpaa2_eth_fq* fq; } ;
struct dpaa2_eth_fq {int dummy; } ;

/* Variables and functions */
 int DPAA2_ETH_ENQUEUE_RETRIES ; 
 int DPAA2_FAEAD_A2V ; 
 int DPAA2_FAEAD_A4V ; 
 int DPAA2_FAEAD_EBDDV ; 
 int /*<<< orphan*/  DPAA2_FD_CTRL_ASAL ; 
 int DPAA2_FD_FRC_FAEADV ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct dpaa2_fd*) ; 
 int /*<<< orphan*/  FUNC2 (struct dpaa2_fd*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dpaa2_fd*,int) ; 
 struct dpaa2_faead* FUNC4 (void*,int) ; 
 int FUNC5 (struct dpaa2_eth_priv*,struct dpaa2_eth_fq*,struct dpaa2_fd*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dpaa2_eth_priv *priv, struct dpaa2_fd *fd,
		       void *buf_start, u16 queue_id)
{
	struct dpaa2_eth_fq *fq;
	struct dpaa2_faead *faead;
	u32 ctrl, frc;
	int i, err;

	/* Mark the egress frame hardware annotation area as valid */
	frc = FUNC1(fd);
	FUNC3(fd, frc | DPAA2_FD_FRC_FAEADV);
	FUNC2(fd, DPAA2_FD_CTRL_ASAL);

	/* Instruct hardware to release the FD buffer directly into
	 * the buffer pool once transmission is completed, instead of
	 * sending a Tx confirmation frame to us
	 */
	ctrl = DPAA2_FAEAD_A4V | DPAA2_FAEAD_A2V | DPAA2_FAEAD_EBDDV;
	faead = FUNC4(buf_start, false);
	faead->ctrl = FUNC0(ctrl);
	faead->conf_fqid = 0;

	fq = &priv->fq[queue_id];
	for (i = 0; i < DPAA2_ETH_ENQUEUE_RETRIES; i++) {
		err = priv->enqueue(priv, fq, fd, 0);
		if (err != -EBUSY)
			break;
	}

	return err;
}