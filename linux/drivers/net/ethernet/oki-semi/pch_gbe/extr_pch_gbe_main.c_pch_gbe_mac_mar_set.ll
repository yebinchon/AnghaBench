; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_mar_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_mac_mar_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_hw = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.pch_gbe_adapter = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"index : 0x%x\0A\00", align 1
@PCH_GBE_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pch_gbe_hw*, i64*, i32)* @pch_gbe_mac_mar_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pch_gbe_mac_mar_set(%struct.pch_gbe_hw* %0, i64* %1, i32 %2) #0 {
  %4 = alloca %struct.pch_gbe_hw*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pch_gbe_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pch_gbe_hw* %0, %struct.pch_gbe_hw** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %12 = call %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw* %11)
  store %struct.pch_gbe_adapter* %12, %struct.pch_gbe_adapter** %7, align 8
  %13 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 1
  %24 = load i64, i64* %23, align 8
  %25 = trunc i64 %24 to i32
  %26 = shl i32 %25, 8
  %27 = or i32 %21, %26
  %28 = load i64*, i64** %5, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 2
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 %31, 16
  %33 = or i32 %27, %32
  %34 = load i64*, i64** %5, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 3
  %36 = load i64, i64* %35, align 8
  %37 = trunc i64 %36 to i32
  %38 = shl i32 %37, 24
  %39 = or i32 %33, %38
  store i32 %39, i32* %9, align 4
  %40 = load i64*, i64** %5, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 4
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load i64*, i64** %5, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 5
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = shl i32 %47, 8
  %49 = or i32 %43, %48
  store i32 %49, i32* %8, align 4
  %50 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %51 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = call i32 @ioread32(i32* %53)
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %6, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %60 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = call i32 @iowrite32(i32 %58, i32* %62)
  %64 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %65 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* @PCH_GBE_BUSY, align 4
  %69 = call i32 @pch_gbe_wait_clr_bit(i32* %67, i32 %68)
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %72 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %74, align 8
  %76 = load i32, i32* %6, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 1
  %80 = call i32 @iowrite32(i32 %70, i32* %79)
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %83 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %89, i32 0, i32 0
  %91 = call i32 @iowrite32(i32 %81, i32* %90)
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %6, align 4
  %94 = shl i32 1, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %98 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %97, i32 0, i32 0
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = call i32 @iowrite32(i32 %96, i32* %100)
  %102 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %103 = getelementptr inbounds %struct.pch_gbe_hw, %struct.pch_gbe_hw* %102, i32 0, i32 0
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* @PCH_GBE_BUSY, align 4
  %107 = call i32 @pch_gbe_wait_clr_bit(i32* %105, i32 %106)
  ret void
}

declare dso_local %struct.pch_gbe_adapter* @pch_gbe_hw_to_adapter(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @ioread32(i32*) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @pch_gbe_wait_clr_bit(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
