; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_set_safe_mode_caps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_set_safe_mode_caps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { %struct.ice_hw_func_caps, %struct.ice_hw_func_caps }
%struct.ice_hw_func_caps = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ice_hw_dev_caps = type { i32, %struct.TYPE_2__ }

@ICE_MAX_FUNCS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ice_set_safe_mode_caps(%struct.ice_hw* %0) #0 {
  %2 = alloca %struct.ice_hw*, align 8
  %3 = alloca %struct.ice_hw_func_caps*, align 8
  %4 = alloca %struct.ice_hw_dev_caps*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ice_hw* %0, %struct.ice_hw** %2, align 8
  %12 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %13 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %12, i32 0, i32 1
  store %struct.ice_hw_func_caps* %13, %struct.ice_hw_func_caps** %3, align 8
  %14 = load %struct.ice_hw*, %struct.ice_hw** %2, align 8
  %15 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %14, i32 0, i32 0
  %16 = bitcast %struct.ice_hw_func_caps* %15 to %struct.ice_hw_dev_caps*
  store %struct.ice_hw_dev_caps* %16, %struct.ice_hw_dev_caps** %4, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %18 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %22 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %26 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %6, align 4
  %29 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %30 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %8, align 4
  %33 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %34 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %38 = call i32 @memset(%struct.ice_hw_func_caps* %37, i32 0, i32 36)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %41 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %45 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %49 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %53 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 3
  store i32 %51, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %57 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 %55, i32* %58, align 4
  %59 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %60 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 5
  store i32 1, i32* %61, align 4
  %62 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %63 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 6
  store i32 1, i32* %64, align 4
  %65 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %66 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 7
  store i32 2, i32* %67, align 4
  %68 = load %struct.ice_hw_func_caps*, %struct.ice_hw_func_caps** %3, align 8
  %69 = getelementptr inbounds %struct.ice_hw_func_caps, %struct.ice_hw_func_caps* %68, i32 0, i32 0
  store i32 1, i32* %69, align 4
  %70 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %71 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %5, align 4
  %74 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %75 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %7, align 4
  %78 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %79 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %6, align 4
  %82 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %83 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %8, align 4
  %86 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %87 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  store i32 %89, i32* %9, align 4
  %90 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %91 = bitcast %struct.ice_hw_dev_caps* %90 to %struct.ice_hw_func_caps*
  %92 = call i32 @memset(%struct.ice_hw_func_caps* %91, i32 0, i32 36)
  %93 = load i32, i32* %5, align 4
  %94 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %95 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %99 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  store i32 %97, i32* %100, align 4
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %103 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i32 %101, i32* %104, align 4
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %107 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %111 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 4
  store i32 %109, i32* %112, align 4
  store i64 0, i64* %11, align 8
  br label %113

113:                                              ; preds = %126, %1
  %114 = load i64, i64* %11, align 8
  %115 = icmp slt i64 %114, 8
  br i1 %115, label %116, label %129

116:                                              ; preds = %113
  %117 = load i32, i32* %5, align 4
  %118 = load i64, i64* %11, align 8
  %119 = call i32 @BIT(i64 %118)
  %120 = and i32 %117, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %116
  %123 = load i32, i32* %10, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %10, align 4
  br label %125

125:                                              ; preds = %122, %116
  br label %126

126:                                              ; preds = %125
  %127 = load i64, i64* %11, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %11, align 8
  br label %113

129:                                              ; preds = %113
  %130 = load i32, i32* %10, align 4
  %131 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %132 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 5
  store i32 %130, i32* %133, align 4
  %134 = load i32, i32* %10, align 4
  %135 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %136 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 6
  store i32 %134, i32* %137, align 4
  %138 = load i32, i32* %10, align 4
  %139 = mul nsw i32 2, %138
  %140 = load %struct.ice_hw_dev_caps*, %struct.ice_hw_dev_caps** %4, align 8
  %141 = getelementptr inbounds %struct.ice_hw_dev_caps, %struct.ice_hw_dev_caps* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 7
  store i32 %139, i32* %142, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ice_hw_func_caps*, i32, i32) #1

declare dso_local i32 @BIT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
