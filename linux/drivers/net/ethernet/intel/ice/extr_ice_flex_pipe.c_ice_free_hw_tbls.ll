; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_free_hw_tbls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_flex_pipe.c_ice_free_hw_tbls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }

@ICE_BLK_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_free_hw_tbls(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  store i64 0, i64* %3, align 8
  br label %4

4:                                                ; preds = %136, %1
  %5 = load i64, i64* %3, align 8
  %6 = load i64, i64* @ICE_BLK_COUNT, align 8
  %7 = icmp ult i64 %5, %6
  br i1 %7, label %8, label %139

8:                                                ; preds = %4
  %9 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %10 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %9, i32 0, i32 0
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %12 = load i64, i64* %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  store i32 0, i32* %14, align 4
  %15 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %16 = call i32 @ice_hw_to_dev(%struct.ice_hw* %15)
  %17 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %17, i32 0, i32 0
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @devm_kfree(i32 %16, i32 %24)
  %26 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %27 = call i32 @ice_hw_to_dev(%struct.ice_hw* %26)
  %28 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %29 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %28, i32 0, i32 0
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %29, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 5
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @devm_kfree(i32 %27, i32 %35)
  %37 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %38 = call i32 @ice_hw_to_dev(%struct.ice_hw* %37)
  %39 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %40 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %39, i32 0, i32 0
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %40, align 8
  %42 = load i64, i64* %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @devm_kfree(i32 %38, i32 %46)
  %48 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %49 = call i32 @ice_hw_to_dev(%struct.ice_hw* %48)
  %50 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %51 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %52, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @devm_kfree(i32 %49, i32 %57)
  %59 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %60 = call i32 @ice_hw_to_dev(%struct.ice_hw* %59)
  %61 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %62 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %61, i32 0, i32 0
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i64, i64* %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @devm_kfree(i32 %60, i32 %68)
  %70 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %71 = call i32 @ice_hw_to_dev(%struct.ice_hw* %70)
  %72 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %73 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %72, i32 0, i32 0
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %73, align 8
  %75 = load i64, i64* %3, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @devm_kfree(i32 %71, i32 %79)
  %81 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %82 = call i32 @ice_hw_to_dev(%struct.ice_hw* %81)
  %83 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %84 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %83, i32 0, i32 0
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %84, align 8
  %86 = load i64, i64* %3, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @devm_kfree(i32 %82, i32 %90)
  %92 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %93 = call i32 @ice_hw_to_dev(%struct.ice_hw* %92)
  %94 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %95 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %94, i32 0, i32 0
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %95, align 8
  %97 = load i64, i64* %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @devm_kfree(i32 %93, i32 %101)
  %103 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %104 = call i32 @ice_hw_to_dev(%struct.ice_hw* %103)
  %105 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %106 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %105, i32 0, i32 0
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %106, align 8
  %108 = load i64, i64* %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i64 %108
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @devm_kfree(i32 %104, i32 %112)
  %114 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %115 = call i32 @ice_hw_to_dev(%struct.ice_hw* %114)
  %116 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %117 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = load i64, i64* %3, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @devm_kfree(i32 %115, i32 %123)
  %125 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %126 = call i32 @ice_hw_to_dev(%struct.ice_hw* %125)
  %127 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %128 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %127, i32 0, i32 0
  %129 = load %struct.TYPE_12__*, %struct.TYPE_12__** %128, align 8
  %130 = load i64, i64* %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @devm_kfree(i32 %126, i32 %134)
  br label %136

136:                                              ; preds = %8
  %137 = load i64, i64* %3, align 8
  %138 = add i64 %137, 1
  store i64 %138, i64* %3, align 8
  br label %4

139:                                              ; preds = %4
  %140 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %141 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %140, i32 0, i32 0
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %141, align 8
  %143 = call i32 @memset(%struct.TYPE_12__* %142, i32 0, i32 8)
  ret void
}

declare dso_local i32 @devm_kfree(i32, i32) #1

declare dso_local i32 @ice_hw_to_dev(%struct.ice_hw*) #1

declare dso_local i32 @memset(%struct.TYPE_12__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
