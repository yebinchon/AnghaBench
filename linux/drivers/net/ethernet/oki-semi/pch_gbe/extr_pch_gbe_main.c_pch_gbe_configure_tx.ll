; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_configure_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.TYPE_3__*, i32, %struct.pch_gbe_hw }
%struct.TYPE_3__ = type { i64, i64 }
%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"dma addr = 0x%08llx  size = 0x%08x\0A\00", align 1
@PCH_GBE_TX_DMA_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_adapter*)* @pch_gbe_configure_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_configure_tx(%struct.pch_gbe_adapter* %0) #0 {
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
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @netdev_dbg(i32 %11, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64 %16, i64 %21)
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %4, align 8
  %28 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = sub nsw i64 %32, 16
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  %39 = call i32 @iowrite32(i64 %34, i32* %38)
  %40 = load i64, i64* %5, align 8
  %41 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %42 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 2
  %45 = call i32 @iowrite32(i64 %40, i32* %44)
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = call i32 @iowrite32(i64 %46, i32* %50)
  %52 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i64 @ioread32(i32* %55)
  store i64 %56, i64* %6, align 8
  %57 = load i64, i64* @PCH_GBE_TX_DMA_EN, align 8
  %58 = load i64, i64* %6, align 8
  %59 = or i64 %58, %57
  store i64 %59, i64* %6, align 8
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %62 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = call i32 @iowrite32(i64 %60, i32* %64)
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i64 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
