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
struct seq_file {struct bdisp_dev* private; } ;
struct bdisp_node {int nip; int cic; int ack; int tba; int s1ba; int s2ba; int s3ba; int hfp; int vfp; int y_hfp; int y_vfp; int /*<<< orphan*/  ivmx3; int /*<<< orphan*/  ivmx2; int /*<<< orphan*/  ivmx1; int /*<<< orphan*/  ivmx0; int /*<<< orphan*/  y_rzi; int /*<<< orphan*/  y_rsf; int /*<<< orphan*/  rzi; int /*<<< orphan*/  rsf; int /*<<< orphan*/  fctl; int /*<<< orphan*/  s3sz; int /*<<< orphan*/  s3xy; int /*<<< orphan*/  s3ty; int /*<<< orphan*/  s2sz; int /*<<< orphan*/  s2xy; int /*<<< orphan*/  s2ty; int /*<<< orphan*/  s1xy; int /*<<< orphan*/  s1ty; int /*<<< orphan*/  tsz; int /*<<< orphan*/  txy; int /*<<< orphan*/  tty; int /*<<< orphan*/  ins; } ;
struct TYPE_2__ {struct bdisp_node** copy_node; } ;
struct bdisp_dev {TYPE_1__ dbg; } ;

/* Variables and functions */
 int MAX_NB_NODE ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct seq_file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct seq_file*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct seq_file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct seq_file*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct seq_file*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct seq_file*,char*) ; 

__attribute__((used)) static int FUNC11(struct seq_file *s, void *data)
{
	/* Not dumping all fields, focusing on significant ones */
	struct bdisp_dev *bdisp = s->private;
	struct bdisp_node *node;
	int i = 0;

	if (!bdisp->dbg.copy_node[0]) {
		FUNC10(s, "No node built yet\n");
		return 0;
	}

	do {
		node = bdisp->dbg.copy_node[i];
		if (!node)
			break;
		FUNC9(s, "--------\nNode %d:\n", i);
		FUNC10(s, "-- General --\n");
		FUNC9(s, "NIP\t0x%08X\n", node->nip);
		FUNC9(s, "CIC\t0x%08X\n", node->cic);
		FUNC1(s, node->ins);
		FUNC9(s, "ACK\t0x%08X\n", node->ack);
		FUNC10(s, "-- Target --\n");
		FUNC9(s, "TBA\t0x%08X\n", node->tba);
		FUNC7(s, node->tty);
		FUNC8(s, node->txy, "TXY");
		FUNC6(s, node->tsz, "TSZ");
		/* Color Fill not dumped */
		FUNC10(s, "-- Source 1 --\n");
		FUNC9(s, "S1BA\t0x%08X\n", node->s1ba);
		FUNC5(s, node->s1ty, node->s1ba, "S1TY");
		FUNC8(s, node->s1xy, "S1XY");
		FUNC10(s, "-- Source 2 --\n");
		FUNC9(s, "S2BA\t0x%08X\n", node->s2ba);
		FUNC5(s, node->s2ty, node->s2ba, "S2TY");
		FUNC8(s, node->s2xy, "S2XY");
		FUNC6(s, node->s2sz, "S2SZ");
		FUNC10(s, "-- Source 3 --\n");
		FUNC9(s, "S3BA\t0x%08X\n", node->s3ba);
		FUNC5(s, node->s3ty, node->s3ba, "S3TY");
		FUNC8(s, node->s3xy, "S3XY");
		FUNC6(s, node->s3sz, "S3SZ");
		/* Clipping not dumped */
		/* CLUT not dumped */
		FUNC10(s, "-- Filter & Mask --\n");
		FUNC0(s, node->fctl);
		/* PMK not dumped */
		FUNC10(s, "-- Chroma Filter --\n");
		FUNC3(s, node->rsf, "RSF");
		FUNC4(s, node->rzi, "RZI");
		FUNC9(s, "HFP\t0x%08X\n", node->hfp);
		FUNC9(s, "VFP\t0x%08X\n", node->vfp);
		FUNC10(s, "-- Luma Filter --\n");
		FUNC3(s, node->y_rsf, "Y_RSF");
		FUNC4(s, node->y_rzi, "Y_RZI");
		FUNC9(s, "Y_HFP\t0x%08X\n", node->y_hfp);
		FUNC9(s, "Y_VFP\t0x%08X\n", node->y_vfp);
		/* Flicker not dumped */
		/* Color key not dumped */
		/* Reserved not dumped */
		/* Static Address & User not dumped */
		FUNC10(s, "-- Input Versatile Matrix --\n");
		FUNC2(s, node->ivmx0, node->ivmx1,
				    node->ivmx2, node->ivmx3);
		/* Output Versatile Matrix not dumped */
		/* Pace not dumped */
		/* VC1R & DEI not dumped */
		/* Gradient Fill not dumped */
	} while ((++i < MAX_NB_NODE) && node->nip);

	return 0;
}