; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i32 }

@B2_BSC_INI = common dso_local global i32 0, align 4
@SK_BLK_DUR = common dso_local global i32 0, align 4
@SK_FACT_53 = common dso_local global i32 0, align 4
@B2_BSC_CTRL = common dso_local global i32 0, align 4
@BSC_START = common dso_local global i32 0, align 4
@B3_MA_TO_CTRL = common dso_local global i32 0, align 4
@MA_RST_CLR = common dso_local global i32 0, align 4
@B3_MA_TOINI_RX1 = common dso_local global i32 0, align 4
@SK_MAC_TO_53 = common dso_local global i32 0, align 4
@B3_MA_TOINI_RX2 = common dso_local global i32 0, align 4
@B3_MA_TOINI_TX1 = common dso_local global i32 0, align 4
@B3_MA_TOINI_TX2 = common dso_local global i32 0, align 4
@B3_MA_RCINI_RX1 = common dso_local global i32 0, align 4
@B3_MA_RCINI_RX2 = common dso_local global i32 0, align 4
@B3_MA_RCINI_TX1 = common dso_local global i32 0, align 4
@B3_MA_RCINI_TX2 = common dso_local global i32 0, align 4
@B3_PA_CTRL = common dso_local global i32 0, align 4
@PA_RST_CLR = common dso_local global i32 0, align 4
@B3_PA_TOINI_RX1 = common dso_local global i32 0, align 4
@SK_PKT_TO_MAX = common dso_local global i32 0, align 4
@B3_PA_TOINI_TX1 = common dso_local global i32 0, align 4
@B3_PA_TOINI_RX2 = common dso_local global i32 0, align 4
@B3_PA_TOINI_TX2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*)* @genesis_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_init(%struct.skge_hw* %0) #0 {
  %2 = alloca %struct.skge_hw*, align 8
  store %struct.skge_hw* %0, %struct.skge_hw** %2, align 8
  %3 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %4 = load i32, i32* @B2_BSC_INI, align 4
  %5 = load i32, i32* @SK_BLK_DUR, align 4
  %6 = load i32, i32* @SK_FACT_53, align 4
  %7 = mul nsw i32 %5, %6
  %8 = sdiv i32 %7, 100
  %9 = call i32 @skge_write32(%struct.skge_hw* %3, i32 %4, i32 %8)
  %10 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %11 = load i32, i32* @B2_BSC_CTRL, align 4
  %12 = load i32, i32* @BSC_START, align 4
  %13 = call i32 @skge_write8(%struct.skge_hw* %10, i32 %11, i32 %12)
  %14 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %15 = load i32, i32* @B3_MA_TO_CTRL, align 4
  %16 = load i32, i32* @MA_RST_CLR, align 4
  %17 = call i32 @skge_write16(%struct.skge_hw* %14, i32 %15, i32 %16)
  %18 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %19 = load i32, i32* @B3_MA_TOINI_RX1, align 4
  %20 = load i32, i32* @SK_MAC_TO_53, align 4
  %21 = call i32 @skge_write8(%struct.skge_hw* %18, i32 %19, i32 %20)
  %22 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %23 = load i32, i32* @B3_MA_TOINI_RX2, align 4
  %24 = load i32, i32* @SK_MAC_TO_53, align 4
  %25 = call i32 @skge_write8(%struct.skge_hw* %22, i32 %23, i32 %24)
  %26 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %27 = load i32, i32* @B3_MA_TOINI_TX1, align 4
  %28 = load i32, i32* @SK_MAC_TO_53, align 4
  %29 = call i32 @skge_write8(%struct.skge_hw* %26, i32 %27, i32 %28)
  %30 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %31 = load i32, i32* @B3_MA_TOINI_TX2, align 4
  %32 = load i32, i32* @SK_MAC_TO_53, align 4
  %33 = call i32 @skge_write8(%struct.skge_hw* %30, i32 %31, i32 %32)
  %34 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %35 = load i32, i32* @B3_MA_RCINI_RX1, align 4
  %36 = call i32 @skge_write8(%struct.skge_hw* %34, i32 %35, i32 0)
  %37 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %38 = load i32, i32* @B3_MA_RCINI_RX2, align 4
  %39 = call i32 @skge_write8(%struct.skge_hw* %37, i32 %38, i32 0)
  %40 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %41 = load i32, i32* @B3_MA_RCINI_TX1, align 4
  %42 = call i32 @skge_write8(%struct.skge_hw* %40, i32 %41, i32 0)
  %43 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %44 = load i32, i32* @B3_MA_RCINI_TX2, align 4
  %45 = call i32 @skge_write8(%struct.skge_hw* %43, i32 %44, i32 0)
  %46 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %47 = load i32, i32* @B3_PA_CTRL, align 4
  %48 = load i32, i32* @PA_RST_CLR, align 4
  %49 = call i32 @skge_write16(%struct.skge_hw* %46, i32 %47, i32 %48)
  %50 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %51 = load i32, i32* @B3_PA_TOINI_RX1, align 4
  %52 = load i32, i32* @SK_PKT_TO_MAX, align 4
  %53 = call i32 @skge_write16(%struct.skge_hw* %50, i32 %51, i32 %52)
  %54 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %55 = load i32, i32* @B3_PA_TOINI_TX1, align 4
  %56 = load i32, i32* @SK_PKT_TO_MAX, align 4
  %57 = call i32 @skge_write16(%struct.skge_hw* %54, i32 %55, i32 %56)
  %58 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %59 = load i32, i32* @B3_PA_TOINI_RX2, align 4
  %60 = load i32, i32* @SK_PKT_TO_MAX, align 4
  %61 = call i32 @skge_write16(%struct.skge_hw* %58, i32 %59, i32 %60)
  %62 = load %struct.skge_hw*, %struct.skge_hw** %2, align 8
  %63 = load i32, i32* @B3_PA_TOINI_TX2, align 4
  %64 = load i32, i32* @SK_PKT_TO_MAX, align 4
  %65 = call i32 @skge_write16(%struct.skge_hw* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @skge_write32(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write8(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @skge_write16(%struct.skge_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
