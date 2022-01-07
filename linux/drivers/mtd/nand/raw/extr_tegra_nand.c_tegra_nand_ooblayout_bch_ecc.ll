; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_ooblayout_bch_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_ooblayout_bch_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@BITS_PER_STEP_BCH = common dso_local global i32 0, align 4
@BITS_PER_BYTE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@SKIP_SPARE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @tegra_nand_ooblayout_bch_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_ooblayout_bch_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load i32, i32* @BITS_PER_STEP_BCH, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %12, %16
  %18 = load i32, i32* @BITS_PER_BYTE, align 4
  %19 = call i32 @DIV_ROUND_UP(i32 %17, i32 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @ERANGE, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %38

25:                                               ; preds = %3
  %26 = load i32, i32* @SKIP_SPARE_BYTES, align 4
  %27 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %28 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = mul nsw i32 %29, %33
  %35 = call i32 @round_up(i32 %34, i32 4)
  %36 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %37 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %25, %22
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @round_up(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
