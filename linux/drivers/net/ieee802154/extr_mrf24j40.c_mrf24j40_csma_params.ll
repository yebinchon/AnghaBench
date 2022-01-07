; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_csma_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_mrf24j40.c_mrf24j40_csma_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { %struct.mrf24j40* }
%struct.mrf24j40 = type { i32 }

@TXMCR_MIN_BE_SHIFT = common dso_local global i32 0, align 4
@TXMCR_CSMA_RETRIES_SHIFT = common dso_local global i32 0, align 4
@REG_TXMCR = common dso_local global i32 0, align 4
@TXMCR_MIN_BE_MASK = common dso_local global i32 0, align 4
@TXMCR_CSMA_RETRIES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802154_hw*, i32, i32, i32)* @mrf24j40_csma_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mrf24j40_csma_params(%struct.ieee802154_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee802154_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mrf24j40*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %5, align 8
  %12 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %11, i32 0, i32 0
  %13 = load %struct.mrf24j40*, %struct.mrf24j40** %12, align 8
  store %struct.mrf24j40* %13, %struct.mrf24j40** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @TXMCR_MIN_BE_SHIFT, align 4
  %16 = shl i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @TXMCR_CSMA_RETRIES_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = load i32, i32* %10, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %10, align 4
  %22 = load %struct.mrf24j40*, %struct.mrf24j40** %9, align 8
  %23 = getelementptr inbounds %struct.mrf24j40, %struct.mrf24j40* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @REG_TXMCR, align 4
  %26 = load i32, i32* @TXMCR_MIN_BE_MASK, align 4
  %27 = load i32, i32* @TXMCR_CSMA_RETRIES_MASK, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @regmap_update_bits(i32 %24, i32 %25, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
