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
struct ubi_vid_hdr {int compat; int /*<<< orphan*/  lnum; int /*<<< orphan*/  vol_id; } ;
struct ubi_ec_hdr {scalar_t__ version; int /*<<< orphan*/  image_seq; int /*<<< orphan*/  ec; } ;
struct ubi_device {int image_seq; int ro_mode; } ;
struct ubi_attach_info {int bad_peb_count; int empty_peb_count; int maybe_bad_peb_count; int force_full_scan; long long ec_sum; int ec_count; long long max_ec; long long min_ec; int /*<<< orphan*/  alien; int /*<<< orphan*/  erase; int /*<<< orphan*/  free; struct ubi_vid_io_buf* vidb; struct ubi_ec_hdr* ech; } ;

/* Variables and functions */
 int EINVAL ; 
#define  UBI_COMPAT_DELETE 136 
#define  UBI_COMPAT_PRESERVE 135 
#define  UBI_COMPAT_REJECT 134 
#define  UBI_COMPAT_RO 133 
#define  UBI_IO_BAD_HDR 132 
#define  UBI_IO_BAD_HDR_EBADMSG 131 
#define  UBI_IO_BITFLIPS 130 
#define  UBI_IO_FF 129 
#define  UBI_IO_FF_BITFLIPS 128 
 long long UBI_MAX_ERASECOUNTER ; 
 int UBI_MAX_VOLUMES ; 
 int UBI_UNKNOWN ; 
 scalar_t__ UBI_VERSION ; 
 int FUNC0 (struct ubi_attach_info*,int,long long) ; 
 int FUNC1 (struct ubi_attach_info*,int,struct ubi_vid_hdr*,long long) ; 
 int FUNC2 (struct ubi_attach_info*,int,int,int,long long,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 long long FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ubi_device*,struct ubi_vid_hdr*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int FUNC7 (struct ubi_device*,struct ubi_attach_info*,int,long long,struct ubi_vid_hdr*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ubi_ec_hdr*) ; 
 int /*<<< orphan*/  FUNC9 (struct ubi_device*,char*,int,...) ; 
 struct ubi_vid_hdr* FUNC10 (struct ubi_vid_io_buf*) ; 
 int FUNC11 (struct ubi_device*,int) ; 
 int FUNC12 (struct ubi_device*,int,struct ubi_ec_hdr*,int /*<<< orphan*/ ) ; 
 int FUNC13 (struct ubi_device*,int,struct ubi_vid_io_buf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 int /*<<< orphan*/  FUNC15 (struct ubi_device*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct ubi_device*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (int) ; 

__attribute__((used)) static int FUNC18(struct ubi_device *ubi, struct ubi_attach_info *ai,
		    int pnum, bool fast)
{
	struct ubi_ec_hdr *ech = ai->ech;
	struct ubi_vid_io_buf *vidb = ai->vidb;
	struct ubi_vid_hdr *vidh = FUNC10(vidb);
	long long ec;
	int err, bitflips = 0, vol_id = -1, ec_err = 0;

	FUNC6("scan PEB %d", pnum);

	/* Skip bad physical eraseblocks */
	err = FUNC11(ubi, pnum);
	if (err < 0)
		return err;
	else if (err) {
		ai->bad_peb_count += 1;
		return 0;
	}

	err = FUNC12(ubi, pnum, ech, 0);
	if (err < 0)
		return err;
	switch (err) {
	case 0:
		break;
	case UBI_IO_BITFLIPS:
		bitflips = 1;
		break;
	case UBI_IO_FF:
		ai->empty_peb_count += 1;
		return FUNC2(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
				   UBI_UNKNOWN, 0, &ai->erase);
	case UBI_IO_FF_BITFLIPS:
		ai->empty_peb_count += 1;
		return FUNC2(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
				   UBI_UNKNOWN, 1, &ai->erase);
	case UBI_IO_BAD_HDR_EBADMSG:
	case UBI_IO_BAD_HDR:
		/*
		 * We have to also look at the VID header, possibly it is not
		 * corrupted. Set %bitflips flag in order to make this PEB be
		 * moved and EC be re-created.
		 */
		ec_err = err;
		ec = UBI_UNKNOWN;
		bitflips = 1;
		break;
	default:
		FUNC9(ubi, "'ubi_io_read_ec_hdr()' returned unknown code %d",
			err);
		return -EINVAL;
	}

	if (!ec_err) {
		int image_seq;

		/* Make sure UBI version is OK */
		if (ech->version != UBI_VERSION) {
			FUNC9(ubi, "this UBI version is %d, image version is %d",
				UBI_VERSION, (int)ech->version);
			return -EINVAL;
		}

		ec = FUNC4(ech->ec);
		if (ec > UBI_MAX_ERASECOUNTER) {
			/*
			 * Erase counter overflow. The EC headers have 64 bits
			 * reserved, but we anyway make use of only 31 bit
			 * values, as this seems to be enough for any existing
			 * flash. Upgrade UBI and use 64-bit erase counters
			 * internally.
			 */
			FUNC9(ubi, "erase counter overflow, max is %d",
				UBI_MAX_ERASECOUNTER);
			FUNC8(ech);
			return -EINVAL;
		}

		/*
		 * Make sure that all PEBs have the same image sequence number.
		 * This allows us to detect situations when users flash UBI
		 * images incorrectly, so that the flash has the new UBI image
		 * and leftovers from the old one. This feature was added
		 * relatively recently, and the sequence number was always
		 * zero, because old UBI implementations always set it to zero.
		 * For this reasons, we do not panic if some PEBs have zero
		 * sequence number, while other PEBs have non-zero sequence
		 * number.
		 */
		image_seq = FUNC3(ech->image_seq);
		if (!ubi->image_seq)
			ubi->image_seq = image_seq;
		if (image_seq && ubi->image_seq != image_seq) {
			FUNC9(ubi, "bad image sequence number %d in PEB %d, expected %d",
				image_seq, pnum, ubi->image_seq);
			FUNC8(ech);
			return -EINVAL;
		}
	}

	/* OK, we've done with the EC header, let's look at the VID header */

	err = FUNC13(ubi, pnum, vidb, 0);
	if (err < 0)
		return err;
	switch (err) {
	case 0:
		break;
	case UBI_IO_BITFLIPS:
		bitflips = 1;
		break;
	case UBI_IO_BAD_HDR_EBADMSG:
		if (ec_err == UBI_IO_BAD_HDR_EBADMSG)
			/*
			 * Both EC and VID headers are corrupted and were read
			 * with data integrity error, probably this is a bad
			 * PEB, bit it is not marked as bad yet. This may also
			 * be a result of power cut during erasure.
			 */
			ai->maybe_bad_peb_count += 1;
		/* fall through */
	case UBI_IO_BAD_HDR:
			/*
			 * If we're facing a bad VID header we have to drop *all*
			 * Fastmap data structures we find. The most recent Fastmap
			 * could be bad and therefore there is a chance that we attach
			 * from an old one. On a fine MTD stack a PEB must not render
			 * bad all of a sudden, but the reality is different.
			 * So, let's be paranoid and help finding the root cause by
			 * falling back to scanning mode instead of attaching with a
			 * bad EBA table and cause data corruption which is hard to
			 * analyze.
			 */
			if (fast)
				ai->force_full_scan = 1;

		if (ec_err)
			/*
			 * Both headers are corrupted. There is a possibility
			 * that this a valid UBI PEB which has corresponding
			 * LEB, but the headers are corrupted. However, it is
			 * impossible to distinguish it from a PEB which just
			 * contains garbage because of a power cut during erase
			 * operation. So we just schedule this PEB for erasure.
			 *
			 * Besides, in case of NOR flash, we deliberately
			 * corrupt both headers because NOR flash erasure is
			 * slow and can start from the end.
			 */
			err = 0;
		else
			/*
			 * The EC was OK, but the VID header is corrupted. We
			 * have to check what is in the data area.
			 */
			err = FUNC5(ubi, vidh, pnum);

		if (err < 0)
			return err;
		else if (!err)
			/* This corruption is caused by a power cut */
			err = FUNC2(ai, pnum, UBI_UNKNOWN,
					  UBI_UNKNOWN, ec, 1, &ai->erase);
		else
			/* This is an unexpected corruption */
			err = FUNC0(ai, pnum, ec);
		if (err)
			return err;
		goto adjust_mean_ec;
	case UBI_IO_FF_BITFLIPS:
		err = FUNC2(ai, pnum, UBI_UNKNOWN, UBI_UNKNOWN,
				  ec, 1, &ai->erase);
		if (err)
			return err;
		goto adjust_mean_ec;
	case UBI_IO_FF:
		if (ec_err || bitflips)
			err = FUNC2(ai, pnum, UBI_UNKNOWN,
					  UBI_UNKNOWN, ec, 1, &ai->erase);
		else
			err = FUNC2(ai, pnum, UBI_UNKNOWN,
					  UBI_UNKNOWN, ec, 0, &ai->free);
		if (err)
			return err;
		goto adjust_mean_ec;
	default:
		FUNC9(ubi, "'ubi_io_read_vid_hdr()' returned unknown code %d",
			err);
		return -EINVAL;
	}

	vol_id = FUNC3(vidh->vol_id);
	if (vol_id > UBI_MAX_VOLUMES && !FUNC17(vol_id)) {
		int lnum = FUNC3(vidh->lnum);

		/* Unsupported internal volume */
		switch (vidh->compat) {
		case UBI_COMPAT_DELETE:
			FUNC15(ubi, "\"delete\" compatible internal volume %d:%d found, will remove it",
				vol_id, lnum);

			err = FUNC2(ai, pnum, vol_id, lnum,
					  ec, 1, &ai->erase);
			if (err)
				return err;
			return 0;

		case UBI_COMPAT_RO:
			FUNC15(ubi, "read-only compatible internal volume %d:%d found, switch to read-only mode",
				vol_id, lnum);
			ubi->ro_mode = 1;
			break;

		case UBI_COMPAT_PRESERVE:
			FUNC15(ubi, "\"preserve\" compatible internal volume %d:%d found",
				vol_id, lnum);
			err = FUNC2(ai, pnum, vol_id, lnum,
					  ec, 0, &ai->alien);
			if (err)
				return err;
			return 0;

		case UBI_COMPAT_REJECT:
			FUNC9(ubi, "incompatible internal volume %d:%d found",
				vol_id, lnum);
			return -EINVAL;
		}
	}

	if (ec_err)
		FUNC16(ubi, "valid VID header but corrupted EC header at PEB %d",
			 pnum);

	if (FUNC14(vol_id))
		err = FUNC1(ai, pnum, vidh, ec);
	else
		err = FUNC7(ubi, ai, pnum, ec, vidh, bitflips);

	if (err)
		return err;

adjust_mean_ec:
	if (!ec_err) {
		ai->ec_sum += ec;
		ai->ec_count += 1;
		if (ec > ai->max_ec)
			ai->max_ec = ec;
		if (ec < ai->min_ec)
			ai->min_ec = ec;
	}

	return 0;
}