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
struct sh_vou_device {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  VOUAD1R ; 
 int /*<<< orphan*/  VOUAD2R ; 
 int /*<<< orphan*/  VOUAIR ; 
 int /*<<< orphan*/  VOUBCR ; 
 int /*<<< orphan*/  VOUCR ; 
 int /*<<< orphan*/  VOUDFR ; 
 int /*<<< orphan*/  VOUDPR ; 
 int /*<<< orphan*/  VOUDSR ; 
 int /*<<< orphan*/  VOUER ; 
 int /*<<< orphan*/  VOUHIR ; 
 int /*<<< orphan*/  VOUIR ; 
 int /*<<< orphan*/  VOUISR ; 
 int /*<<< orphan*/  VOUMSR ; 
 int /*<<< orphan*/  VOURCR ; 
 int /*<<< orphan*/  VOURPR ; 
 int /*<<< orphan*/  VOUSRR ; 
 int /*<<< orphan*/  VOUSTR ; 
 int /*<<< orphan*/  VOUSWR ; 
 int /*<<< orphan*/  VOUVCR ; 
 int /*<<< orphan*/  VOUVPR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_vou_device*,int /*<<< orphan*/ ) ; 
 struct sh_vou_device* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv)
{
	struct sh_vou_device *vou_dev = FUNC2(file);

	FUNC0("VOUER:   0x%08x\n", FUNC1(vou_dev, VOUER));
	FUNC0("VOUCR:   0x%08x\n", FUNC1(vou_dev, VOUCR));
	FUNC0("VOUSTR:  0x%08x\n", FUNC1(vou_dev, VOUSTR));
	FUNC0("VOUVCR:  0x%08x\n", FUNC1(vou_dev, VOUVCR));
	FUNC0("VOUISR:  0x%08x\n", FUNC1(vou_dev, VOUISR));
	FUNC0("VOUBCR:  0x%08x\n", FUNC1(vou_dev, VOUBCR));
	FUNC0("VOUDPR:  0x%08x\n", FUNC1(vou_dev, VOUDPR));
	FUNC0("VOUDSR:  0x%08x\n", FUNC1(vou_dev, VOUDSR));
	FUNC0("VOUVPR:  0x%08x\n", FUNC1(vou_dev, VOUVPR));
	FUNC0("VOUIR:   0x%08x\n", FUNC1(vou_dev, VOUIR));
	FUNC0("VOUSRR:  0x%08x\n", FUNC1(vou_dev, VOUSRR));
	FUNC0("VOUMSR:  0x%08x\n", FUNC1(vou_dev, VOUMSR));
	FUNC0("VOUHIR:  0x%08x\n", FUNC1(vou_dev, VOUHIR));
	FUNC0("VOUDFR:  0x%08x\n", FUNC1(vou_dev, VOUDFR));
	FUNC0("VOUAD1R: 0x%08x\n", FUNC1(vou_dev, VOUAD1R));
	FUNC0("VOUAD2R: 0x%08x\n", FUNC1(vou_dev, VOUAD2R));
	FUNC0("VOUAIR:  0x%08x\n", FUNC1(vou_dev, VOUAIR));
	FUNC0("VOUSWR:  0x%08x\n", FUNC1(vou_dev, VOUSWR));
	FUNC0("VOURCR:  0x%08x\n", FUNC1(vou_dev, VOURCR));
	FUNC0("VOURPR:  0x%08x\n", FUNC1(vou_dev, VOURPR));
	return 0;
}