; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_wol_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_wol_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"wu_evt : 0x%08x  ADDR_MASK reg : 0x%08x\0A\00", align 1
@PCH_GBE_WLA_BUSY = common dso_local global i32 0, align 4
@PCH_GBE_WLC_WOL_MODE = common dso_local global i32 0, align 4
@PCH_GBE_INT_ENABLE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_hw*, i32)* @pch_gbe_mac_set_wol_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_mac_set_wol_event(%struct.pch_gbe_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.pch_gbe_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pch_gbe_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %8 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %7)
  store %struct.pch_gbe_adapter* %8, %struct.pch_gbe_adapter** %5, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 5
  %17 = call i32 @ioread32(i32* %16)
  %18 = call i32 @netdev_dbg(i32 %11, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %63

21:                                               ; preds = %2
  %22 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %23 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 5
  %26 = call i32 @ioread32(i32* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %29 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 4
  %32 = call i32 @iowrite32(i32 %27, i32* %31)
  %33 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %34 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 4
  %37 = load i32, i32* @PCH_GBE_WLA_BUSY, align 4
  %38 = call i32 @pch_gbe_wait_clr_bit(i32* %36, i32 %37)
  %39 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %40 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @iowrite32(i32 0, i32* %42)
  %44 = load i32, i32* %4, align 4
  %45 = load i32, i32* @PCH_GBE_WLC_WOL_MODE, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %48 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @iowrite32(i32 %46, i32* %50)
  %52 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %53 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  %56 = call i32 @iowrite32(i32 2, i32* %55)
  %57 = load i32, i32* @PCH_GBE_INT_ENABLE_MASK, align 4
  %58 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %59 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i32 @iowrite32(i32 %57, i32* %61)
  br label %74

63:                                               ; preds = %2
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @iowrite32(i32 0, i32* %67)
  %69 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %3, align 8
  %70 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @iowrite32(i32 0, i32* %72)
  br label %74

74:                                               ; preds = %63, %21
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_gbe_wait_clr_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
