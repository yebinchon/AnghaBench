; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_fill_blk_tbls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_fill_blk_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@ICE_BLK_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_fill_blk_tbls(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  store i64 0, i64* %3, align 8
  br label %5

5:                                                ; preds = %72, %1
  %6 = load i64, i64* %3, align 8
  %7 = load i64, i64* @ICE_BLK_COUNT, align 8
  %8 = icmp slt i64 %6, %7
  br i1 %8, label %9, label %75

9:                                                ; preds = %5
  %10 = load i64, i64* %3, align 8
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %4, align 4
  %12 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ice_fill_tbl(%struct.ice_hw* %12, i32 %13, i32 %22)
  %24 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %27 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ice_fill_tbl(%struct.ice_hw* %24, i32 %25, i32 %34)
  %36 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %39 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %38, i32 0, i32 0
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ice_fill_tbl(%struct.ice_hw* %36, i32 %37, i32 %46)
  %48 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @ice_fill_tbl(%struct.ice_hw* %48, i32 %49, i32 %58)
  %60 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %61 = load i32, i32* %4, align 4
  %62 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %63 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %62, i32 0, i32 0
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %63, align 8
  %65 = load i32, i32* %4, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @ice_fill_tbl(%struct.ice_hw* %60, i32 %61, i32 %70)
  br label %72

72:                                               ; preds = %9
  %73 = load i64, i64* %3, align 8
  %74 = add nsw i64 %73, 1
  store i64 %74, i64* %3, align 8
  br label %5

75:                                               ; preds = %5
  %76 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %77 = call i32 @ice_init_sw_db(%struct.ice_hw* %76)
  ret void
}

declare dso_local i32 @ice_fill_tbl(%struct.ice_hw*, i32, i32) #1

declare dso_local i32 @ice_init_sw_db(%struct.ice_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
