; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_pause_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_set_pause_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i64* }
%struct.pch_gbe_adapter = type { i32 }

@PCH_GBE_PAUSE_PKT2_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT1_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT4_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PAUSE_PKT5_VALUE = common dso_local global i64 0, align 8
@PCH_GBE_PS_PKT_RQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"PAUSE_PKT1-5 reg : 0x%08x 0x%08x 0x%08x 0x%08x 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_hw*)* @pch_gbe_mac_set_pause_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_mac_set_pause_packet(%struct.pch_gbe_hw* %0) #0 {
  %2 = alloca %struct.pch_gbe_hw*, align 8
  %3 = alloca %struct.pch_gbe_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %2, align 8
  %6 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %7 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %6)
  store %struct.pch_gbe_adapter* %7, %struct.pch_gbe_adapter** %3, align 8
  %8 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %9 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %4, align 8
  %14 = load i64, i64* %4, align 8
  %15 = shl i64 %14, 8
  %16 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %17 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = or i64 %15, %21
  store i64 %22, i64* %4, align 8
  %23 = load i64, i64* @PCH_GBE_PAUSE_PKT2_VALUE, align 8
  %24 = load i64, i64* %4, align 8
  %25 = shl i64 %24, 16
  %26 = or i64 %23, %25
  store i64 %26, i64* %4, align 8
  %27 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %28 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 5
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %5, align 8
  %33 = load i64, i64* %5, align 8
  %34 = shl i64 %33, 8
  %35 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %36 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 4
  %40 = load i64, i64* %39, align 8
  %41 = or i64 %34, %40
  store i64 %41, i64* %5, align 8
  %42 = load i64, i64* %5, align 8
  %43 = shl i64 %42, 8
  %44 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %45 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 3
  %49 = load i64, i64* %48, align 8
  %50 = or i64 %43, %49
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %5, align 8
  %52 = shl i64 %51, 8
  %53 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %54 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = or i64 %52, %58
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* @PCH_GBE_PAUSE_PKT1_VALUE, align 8
  %61 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %62 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 4
  %65 = call i32 @iowrite32(i64 %60, i32* %64)
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %68 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 3
  %71 = call i32 @iowrite32(i64 %66, i32* %70)
  %72 = load i64, i64* %5, align 8
  %73 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %74 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @iowrite32(i64 %72, i32* %76)
  %78 = load i64, i64* @PCH_GBE_PAUSE_PKT4_VALUE, align 8
  %79 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %80 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = call i32 @iowrite32(i64 %78, i32* %82)
  %84 = load i64, i64* @PCH_GBE_PAUSE_PKT5_VALUE, align 8
  %85 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %86 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %85, i32 0, i32 0
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = call i32 @iowrite32(i64 %84, i32* %88)
  %90 = load i64, i64* @PCH_GBE_PS_PKT_RQ, align 8
  %91 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %92 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 5
  %95 = call i32 @iowrite32(i64 %90, i32* %94)
  %96 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %3, align 8
  %97 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %100 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %99, i32 0, i32 0
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 4
  %103 = call i32 @ioread32(i32* %102)
  %104 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %105 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %104, i32 0, i32 0
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 3
  %108 = call i32 @ioread32(i32* %107)
  %109 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %110 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %109, i32 0, i32 0
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = call i32 @ioread32(i32* %112)
  %114 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %115 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %114, i32 0, i32 0
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = call i32 @ioread32(i32* %117)
  %119 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %119, i32 0, i32 0
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = call i32 @ioread32(i32* %122)
  %124 = call i32 @netdev_dbg(i32 %98, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %103, i32 %108, i32 %113, i32 %118, i32 %123)
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @iowrite32(i64, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioread32(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
