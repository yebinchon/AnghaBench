; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_3__*, i32, %struct.pch_gbe_hw }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"dma adr = 0x%08llx  size = 0x%08x\0A\00", align 1
@PCH_GBE_RX_DMA_EN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"MAC_RX_EN reg = 0x%08x  DMA_CTRL reg = 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_configure_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_configure_rx(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %7 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %7, i32 0, i32 2
  store %struct.pch_gbe_hw* %8, %struct.pch_gbe_hw** %3, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @netdev_dbg(i32 %11, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %21)
  %23 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %24 = call i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw* %23)
  %25 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %26 = call i32 @pch_gbe_disable_mac_rx(%struct.pch_gbe_hw* %25)
  %27 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 3
  %31 = call i64 @ioread32(i32* %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* @PCH_GBE_RX_DMA_EN, align 8
  %33 = xor i64 %32, -1
  %34 = load i64, i64* %6, align 8
  %35 = and i64 %34, %33
  store i64 %35, i64* %6, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %38 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 3
  %41 = call i32 @iowrite32(i64 %36, i32* %40)
  %42 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %46 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  %49 = call i64 @ioread32(i32* %48)
  %50 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 3
  %54 = call i64 @ioread32(i32* %53)
  %55 = call i32 @netdev_dbg(i32 %44, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %49, i64 %54)
  %56 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %57 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  store i64 %60, i64* %4, align 8
  %61 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = sub i64 %65, 16
  store i64 %66, i64* %5, align 8
  %67 = load i64, i64* %4, align 8
  %68 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %69 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %68, i32 0, i32 0
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 2
  %72 = call i32 @iowrite32(i64 %67, i32* %71)
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %75 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = call i32 @iowrite32(i64 %73, i32* %77)
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %5, align 8
  %81 = add i64 %79, %80
  %82 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = call i32 @iowrite32(i64 %81, i32* %85)
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @pch_gbe_mac_force_mac_fc(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_disable_mac_rx(%struct.pch_gbe_hw*) #1

declare dso_local i64 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
