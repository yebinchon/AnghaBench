; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbevf_adapter = type { i32, i8*, i8*, i8*, i8*, %struct.ixgbevf_ring**, %struct.TYPE_3__, i32, %struct.ixgbe_hw }
%struct.ixgbevf_ring = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64, i64 }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ixgbe_hw = type { i32 }

@__IXGBEVF_DOWN = common dso_local global i32 0, align 4
@__IXGBEVF_RESETTING = common dso_local global i32 0, align 4
@IXGBE_VFGPRC = common dso_local global i32 0, align 4
@IXGBE_VFGPTC = common dso_local global i32 0, align 4
@IXGBE_VFGORC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGORC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_LSB = common dso_local global i32 0, align 4
@IXGBE_VFGOTC_MSB = common dso_local global i32 0, align 4
@IXGBE_VFMPRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ixgbevf_update_stats(%struct.ixgbevf_adapter* %0) #0 {
  %2 = alloca %struct.ixgbevf_adapter*, align 8
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ixgbevf_ring*, align 8
  store %struct.ixgbevf_adapter* %0, %struct.ixgbevf_adapter** %2, align 8
  %10 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %10, i32 0, i32 8
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %3, align 8
  store i8* null, i8** %4, align 8
  store i8* null, i8** %5, align 8
  store i8* null, i8** %6, align 8
  store i8* null, i8** %7, align 8
  %12 = load i32, i32* @__IXGBEVF_DOWN, align 4
  %13 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %13, i32 0, i32 7
  %15 = call i64 @test_bit(i32 %12, i32* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @__IXGBEVF_RESETTING, align 4
  %19 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %20 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %19, i32 0, i32 7
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %17, %1
  br label %131

24:                                               ; preds = %17
  %25 = load i32, i32* @IXGBE_VFGPRC, align 4
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 6
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 9
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %31 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 8
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %25, i32 %29, i32 %33)
  %35 = load i32, i32* @IXGBE_VFGPTC, align 4
  %36 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %37 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %36, i32 0, i32 6
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 7
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %41 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %40, i32 0, i32 6
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %35, i32 %39, i32 %43)
  %45 = load i32, i32* @IXGBE_VFGORC_LSB, align 4
  %46 = load i32, i32* @IXGBE_VFGORC_MSB, align 4
  %47 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %48 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %52 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %51, i32 0, i32 6
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @UPDATE_VF_COUNTER_36bit(i32 %45, i32 %46, i32 %50, i32 %54)
  %56 = load i32, i32* @IXGBE_VFGOTC_LSB, align 4
  %57 = load i32, i32* @IXGBE_VFGOTC_MSB, align 4
  %58 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %59 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %58, i32 0, i32 6
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %62, i32 0, i32 6
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @UPDATE_VF_COUNTER_36bit(i32 %56, i32 %57, i32 %61, i32 %65)
  %67 = load i32, i32* @IXGBE_VFMPRC, align 4
  %68 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %69 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %68, i32 0, i32 6
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %73 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %72, i32 0, i32 6
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @UPDATE_VF_COUNTER_32bit(i32 %67, i32 %71, i32 %75)
  store i32 0, i32* %8, align 4
  br label %77

77:                                               ; preds = %115, %24
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %80 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %78, %81
  br i1 %82, label %83, label %118

83:                                               ; preds = %77
  %84 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %85 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %84, i32 0, i32 5
  %86 = load %struct.ixgbevf_ring**, %struct.ixgbevf_ring*** %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %86, i64 %88
  %90 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %89, align 8
  store %struct.ixgbevf_ring* %90, %struct.ixgbevf_ring** %9, align 8
  %91 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %92 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = load i8*, i8** %7, align 8
  %96 = getelementptr i8, i8* %95, i64 %94
  store i8* %96, i8** %7, align 8
  %97 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %98 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = load i8*, i8** %4, align 8
  %102 = getelementptr i8, i8* %101, i64 %100
  store i8* %102, i8** %4, align 8
  %103 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %104 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = getelementptr i8, i8* %107, i64 %106
  store i8* %108, i8** %5, align 8
  %109 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %9, align 8
  %110 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i8*, i8** %6, align 8
  %114 = getelementptr i8, i8* %113, i64 %112
  store i8* %114, i8** %6, align 8
  br label %115

115:                                              ; preds = %83
  %116 = load i32, i32* %8, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %8, align 4
  br label %77

118:                                              ; preds = %77
  %119 = load i8*, i8** %7, align 8
  %120 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %121 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %120, i32 0, i32 4
  store i8* %119, i8** %121, align 8
  %122 = load i8*, i8** %4, align 8
  %123 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %124 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %123, i32 0, i32 3
  store i8* %122, i8** %124, align 8
  %125 = load i8*, i8** %5, align 8
  %126 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %127 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load i8*, i8** %6, align 8
  %129 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %2, align 8
  %130 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %129, i32 0, i32 1
  store i8* %128, i8** %130, align 8
  br label %131

131:                                              ; preds = %118, %23
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @UPDATE_VF_COUNTER_32bit(i32, i32, i32) #1

declare dso_local i32 @UPDATE_VF_COUNTER_36bit(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
