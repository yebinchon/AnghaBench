; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_disable_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_disable_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.marvell_nfc = type { i64 }

@NDCR = common dso_local global i64 0, align 8
@NDCR_DMA_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.marvell_nfc*)* @marvell_nfc_disable_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @marvell_nfc_disable_dma(%struct.marvell_nfc* %0) #0 {
  %2 = alloca %struct.marvell_nfc*, align 8
  %3 = alloca i32, align 4
  store %struct.marvell_nfc* %0, %struct.marvell_nfc** %2, align 8
  %4 = load %struct.marvell_nfc*, %struct.marvell_nfc** %2, align 8
  %5 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @NDCR, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl_relaxed(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @NDCR_DMA_EN, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = load %struct.marvell_nfc*, %struct.marvell_nfc** %2, align 8
  %15 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NDCR, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel_relaxed(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
