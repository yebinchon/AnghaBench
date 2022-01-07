; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_ooblayout_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sunxi_nand.c_sunxi_nand_ooblayout_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.mtd_oob_region = type { i32, i32 }
%struct.nand_chip = type { %struct.nand_ecc_ctrl }
%struct.nand_ecc_ctrl = type { i32, i64, i32 }

@ERANGE = common dso_local global i32 0, align 4
@NAND_ECC_HW = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @sunxi_nand_ooblayout_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sunxi_nand_ooblayout_free(%struct.mtd_info* %0, i32 %1, %struct.mtd_oob_region* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_oob_region*, align 8
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca %struct.nand_ecc_ctrl*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mtd_oob_region* %2, %struct.mtd_oob_region** %7, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %11 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %10)
  store %struct.nand_chip* %11, %struct.nand_chip** %8, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  store %struct.nand_ecc_ctrl* %13, %struct.nand_ecc_ctrl** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %16 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp sgt i32 %14, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @ERANGE, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22
  %26 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %27 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NAND_ECC_HW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %33 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %32, i32 0, i32 0
  store i32 2, i32* %33, align 4
  %34 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %35 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %34, i32 0, i32 1
  store i32 2, i32* %35, align 4
  store i32 0, i32* %4, align 4
  br label %64

36:                                               ; preds = %25, %22
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %39 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = add nsw i32 %40, 4
  %42 = mul nsw i32 %37, %41
  %43 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %44 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.nand_ecc_ctrl*, %struct.nand_ecc_ctrl** %9, align 8
  %47 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %36
  %51 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %52 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %51, i32 0, i32 1
  store i32 4, i32* %52, align 4
  br label %63

53:                                               ; preds = %36
  %54 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %55 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %58 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub nsw i32 %56, %59
  %61 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %7, align 8
  %62 = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %53, %50
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %31, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
