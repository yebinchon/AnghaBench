; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_hw_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_ca8210.c_ca8210_hw_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_hw = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_5__, i64, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32* }

@CA8210_VALID_CHANNELS = common dso_local global i32 0, align 4
@CA8210_MAX_TX_POWERS = common dso_local global i32 0, align 4
@ca8210_tx_powers = common dso_local global i32 0, align 4
@CA8210_MAX_ED_LEVELS = common dso_local global i32 0, align 4
@ca8210_ed_levels = common dso_local global i32 0, align 4
@NL802154_CCA_ENERGY_CARRIER = common dso_local global i32 0, align 4
@NL802154_CCA_OPT_ENERGY_CARRIER_AND = common dso_local global i32 0, align 4
@IEEE802154_HW_AFILT = common dso_local global i32 0, align 4
@IEEE802154_HW_OMIT_CKSUM = common dso_local global i32 0, align 4
@IEEE802154_HW_FRAME_RETRIES = common dso_local global i32 0, align 4
@IEEE802154_HW_PROMISCUOUS = common dso_local global i32 0, align 4
@IEEE802154_HW_CSMA_PARAMS = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_TXPOWER = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_ED_LEVEL = common dso_local global i32 0, align 4
@WPAN_PHY_FLAG_CCA_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee802154_hw*)* @ca8210_hw_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca8210_hw_setup(%struct.ieee802154_hw* %0) #0 {
  %2 = alloca %struct.ieee802154_hw*, align 8
  store %struct.ieee802154_hw* %0, %struct.ieee802154_hw** %2, align 8
  %3 = load i32, i32* @CA8210_VALID_CHANNELS, align 4
  %4 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %4, i32 0, i32 1
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 9
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 4
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 0
  store i32 %3, i32* %10, align 4
  %11 = load i32, i32* @CA8210_MAX_TX_POWERS, align 4
  %12 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %12, i32 0, i32 1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 9
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %11, i32* %16, align 4
  %17 = load i32, i32* @ca8210_tx_powers, align 4
  %18 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %19 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %18, i32 0, i32 1
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 9
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  store i32 %17, i32* %22, align 8
  %23 = load i32, i32* @CA8210_MAX_ED_LEVELS, align 4
  %24 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %25 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 9
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %23, i32* %28, align 4
  %29 = load i32, i32* @ca8210_ed_levels, align 4
  %30 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %31 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 9
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %29, i32* %34, align 8
  %35 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %36 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 18, i32* %38, align 8
  %39 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %39, i32 0, i32 1
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 800, i32* %46, align 4
  %47 = load i32, i32* @NL802154_CCA_ENERGY_CARRIER, align 4
  %48 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %49 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32 %47, i32* %52, align 4
  %53 = load i32, i32* @NL802154_CCA_OPT_ENERGY_CARRIER_AND, align 4
  %54 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %55 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 7
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %53, i32* %58, align 4
  %59 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %60 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %59, i32 0, i32 1
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 2
  store i32 -9800, i32* %62, align 8
  %63 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %64 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 3
  store i32 16, i32* %66, align 4
  %67 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %68 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 4
  store i32 40, i32* %70, align 8
  %71 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %72 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %71, i32 0, i32 1
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 5
  store i32 12, i32* %74, align 4
  %75 = load i32, i32* @IEEE802154_HW_AFILT, align 4
  %76 = load i32, i32* @IEEE802154_HW_OMIT_CKSUM, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @IEEE802154_HW_FRAME_RETRIES, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @IEEE802154_HW_PROMISCUOUS, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @IEEE802154_HW_CSMA_PARAMS, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %85 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* @WPAN_PHY_FLAG_TXPOWER, align 4
  %87 = load i32, i32* @WPAN_PHY_FLAG_CCA_ED_LEVEL, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* @WPAN_PHY_FLAG_CCA_MODE, align 4
  %90 = or i32 %88, %89
  %91 = load %struct.ieee802154_hw*, %struct.ieee802154_hw** %2, align 8
  %92 = getelementptr inbounds %struct.ieee802154_hw, %struct.ieee802154_hw* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 6
  store i32 %90, i32* %94, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
