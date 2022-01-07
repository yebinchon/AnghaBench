; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nand_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i64 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { i32 }
%struct.marvell_hw_ecc_layout = type { i64, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.marvell_hw_ecc_layout* }

@ERANGE = common dso_local global i32 0, align 4
@SZ_4K = common dso_local global i64 0, align 8
@SZ_2K = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @marvell_nand_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nand_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
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
  br label %57

21:                                               ; preds = %3
  %22 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %23 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SZ_4K, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %36

27:                                               ; preds = %21
  %28 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %29 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SZ_2K, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 0
  store i32 6, i32* %35, align 4
  br label %39

36:                                               ; preds = %27, %21
  %37 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %38 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %37, i32 0, i32 0
  store i32 2, i32* %38, align 4
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %41 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %44 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %42, %45
  %47 = load %struct.marvell_hw_ecc_layout*, %struct.marvell_hw_ecc_layout** %9, align 8
  %48 = getelementptr inbounds %struct.marvell_hw_ecc_layout, %struct.marvell_hw_ecc_layout* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %46, %49
  %51 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = sub nsw i32 %50, %53
  %55 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %56 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %39, %18
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.TYPE_2__* @to_marvell_nand(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
