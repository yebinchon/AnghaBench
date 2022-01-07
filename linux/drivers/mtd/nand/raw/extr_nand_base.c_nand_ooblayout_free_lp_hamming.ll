; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_ooblayout_free_lp_hamming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_base.c_nand_ooblayout_free_lp_hamming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @nand_ooblayout_free_lp_hamming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_ooblayout_free_lp_hamming(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.nand_ecc_ctrl*, align 8
  %10 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %11 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %12 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %11)
  store %struct.nand_chip* %12, %struct.nand_chip** %8, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %13, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %14, %struct.nand_ecc_ctrl** %9, align 8
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17, %3
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %60

23:                                               ; preds = %17
  %24 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %29 [
    i32 64, label %27
    i32 128, label %28
  ]

27:                                               ; preds = %23
  store i32 40, i32* %10, align 4
  br label %32

28:                                               ; preds = %23
  store i32 80, i32* %10, align 4
  br label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %60

32:                                               ; preds = %28, %27
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %37 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %36, i32 0, i32 0
  store i32 2, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 2
  %40 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %41 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %59

42:                                               ; preds = %32
  %43 = load i32, i32* %10, align 4
  %44 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %45 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %43, %46
  %48 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %49 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %51 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %54 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %52, %55
  %57 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %58 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 4
  br label %59

59:                                               ; preds = %42, %35
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %59, %29, %20
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
