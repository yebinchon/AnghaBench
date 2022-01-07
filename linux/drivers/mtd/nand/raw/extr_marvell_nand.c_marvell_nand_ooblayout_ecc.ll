; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ooblayout_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ooblayout_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i64, i64 }
%struct.nand_chip = type { i32 }
%struct.marvell_hw_ecc_layout = type { i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @marvell_nand_ooblayout_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_ooblayout_ecc(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.marvell_hw_ecc_layout*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = call %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %14, align 8
  store %struct.marvell_hw_ecc_layout* %15, %struct.marvell_hw_ecc_layout** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ERANGE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %45

21:                                               ; preds = %3
  %22 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %23 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %26 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sext i32 %28 to i64
  %30 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %31 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %29, %32
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  %36 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %40 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %43, i32 0, i32 1
  store i64 %42, i64* %44, align 8
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %21, %18
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
