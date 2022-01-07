; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_core.c_mt7603_reg_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_core.c_mt7603_reg_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*, i32, i32)* }

@MT_MCU_PCIE_REMAP_2_BASE = common dso_local global i32 0, align 4
@MT_MCU_PCIE_REMAP_2_OFFSET = common dso_local global i32 0, align 4
@MT_MCU_PCIE_REMAP_2 = common dso_local global i32 0, align 4
@MT_PCIE_REMAP_BASE_2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7603_reg_map(%struct.mt7603_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mt7603_dev* %0, %struct.mt7603_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MT_MCU_PCIE_REMAP_2_BASE, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @MT_MCU_PCIE_REMAP_2_OFFSET, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %14 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32*, i32, i32)*, i32 (i32*, i32, i32)** %16, align 8
  %18 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %19 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %18, i32 0, i32 0
  %20 = load i32, i32* @MT_MCU_PCIE_REMAP_2, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %17(i32* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @MT_PCIE_REMAP_BASE_2, align 4
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %23, %24
  ret i32 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
