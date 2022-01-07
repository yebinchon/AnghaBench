; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_set_fdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mtk_nand.c_mtk_nfc_set_fdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nfc_fdm = type { i64, i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mtk_nfc_nand_chip = type { i64 }
%struct.mtk_nfc = type { i32 }

@NFI_FDM_MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nfc_fdm*, %struct.mtd_info*)* @mtk_nfc_set_fdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nfc_set_fdm(%struct.mtk_nfc_fdm* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca %struct.mtk_nfc_fdm*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtk_nfc_nand_chip*, align 8
  %7 = alloca %struct.mtk_nfc*, align 8
  %8 = alloca i64, align 8
  store %struct.mtk_nfc_fdm* %0, %struct.mtk_nfc_fdm** %3, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %4, align 8
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip* %11)
  store %struct.mtk_nfc_nand_chip* %12, %struct.mtk_nfc_nand_chip** %6, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.mtk_nfc* %14, %struct.mtk_nfc** %7, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mtk_nfc*, %struct.mtk_nfc** %7, align 8
  %20 = getelementptr inbounds %struct.mtk_nfc, %struct.mtk_nfc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @mtk_ecc_get_parity_bits(i32 %21)
  %23 = mul nsw i32 %18, %22
  %24 = call i64 @DIV_ROUND_UP(i32 %23, i32 8)
  store i64 %24, i64* %8, align 8
  %25 = load %struct.mtk_nfc_nand_chip*, %struct.mtk_nfc_nand_chip** %6, align 8
  %26 = getelementptr inbounds %struct.mtk_nfc_nand_chip, %struct.mtk_nfc_nand_chip* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %8, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %3, align 8
  %31 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  %32 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @NFI_FDM_MAX_SIZE, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %2
  %38 = load i64, i64* @NFI_FDM_MAX_SIZE, align 8
  %39 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %3, align 8
  %40 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  br label %41

41:                                               ; preds = %37, %2
  %42 = load %struct.mtk_nfc_fdm*, %struct.mtk_nfc_fdm** %3, align 8
  %43 = getelementptr inbounds %struct.mtk_nfc_fdm, %struct.mtk_nfc_fdm* %42, i32 0, i32 1
  store i32 1, i32* %43, align 8
  ret void
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.mtk_nfc_nand_chip* @to_mtk_nand(%struct.nand_chip*) #1

declare dso_local %struct.mtk_nfc* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mtk_ecc_get_parity_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
