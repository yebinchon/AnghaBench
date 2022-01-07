; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_nfc = type { i64 }

@NDCR_ALL_INT = common dso_local global i32 0, align 4
@NDCR_ND_ARB_EN = common dso_local global i32 0, align 4
@NDCR_SPARE_EN = common dso_local global i32 0, align 4
@NFCV1_READID_LEN = common dso_local global i32 0, align 4
@NDCR = common dso_local global i64 0, align 8
@NDSR = common dso_local global i64 0, align 8
@NDECCCTRL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.marvell_nfc*)* @marvell_nfc_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_reset(%struct.marvell_nfc* %0) #0 {
  %2 = alloca %struct.marvell_nfc*, align 8
  store %struct.marvell_nfc* %0, %struct.marvell_nfc** %2, align 8
  %3 = load i32, i32* @NDCR_ALL_INT, align 4
  %4 = load i32, i32* @NDCR_ND_ARB_EN, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @NDCR_SPARE_EN, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @NFCV1_READID_LEN, align 4
  %9 = call i32 @NDCR_RD_ID_CNT(i32 %8)
  %10 = or i32 %7, %9
  %11 = load %struct.marvell_nfc*, %struct.marvell_nfc** %2, align 8
  %12 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NDCR, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @writel_relaxed(i32 %10, i64 %15)
  %17 = load %struct.marvell_nfc*, %struct.marvell_nfc** %2, align 8
  %18 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @NDSR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 -1, i64 %21)
  %23 = load %struct.marvell_nfc*, %struct.marvell_nfc** %2, align 8
  %24 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NDECCCTRL, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel_relaxed(i32 0, i64 %27)
  ret void
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @NDCR_RD_ID_CNT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
