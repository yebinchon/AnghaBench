; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_disable_hw_ecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_disable_hw_ecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.marvell_nfc = type { i64 }

@NDCR = common dso_local global i64 0, align 8
@NDCR_ECC_EN = common dso_local global i32 0, align 4
@NAND_ECC_BCH = common dso_local global i64 0, align 8
@NDECCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @marvell_nfc_disable_hw_ecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_disable_hw_ecc(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.marvell_nfc*, align 8
  %4 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %7)
  store %struct.marvell_nfc* %8, %struct.marvell_nfc** %3, align 8
  %9 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %10 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NDCR, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @NDCR_ECC_EN, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @NDCR_ECC_EN, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %25 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @NDCR, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @writel_relaxed(i32 %23, i64 %28)
  %30 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %31 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NAND_ECC_BCH, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %43

36:                                               ; preds = %19
  %37 = load %struct.marvell_nfc*, %struct.marvell_nfc** %3, align 8
  %38 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @NDECCCTRL, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel_relaxed(i32 0, i64 %41)
  br label %43

43:                                               ; preds = %36, %19
  br label %44

44:                                               ; preds = %43, %1
  ret void
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
