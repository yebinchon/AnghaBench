; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wil_crash_dump.c_wil_fw_get_crash_dump_bounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wil_crash_dump.c_wil_fw_get_crash_dump_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_map = type { i64, i64, i64, i32 }
%struct.wil6210_priv = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@fw_mapping = common dso_local global %struct.fw_map* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i64*, i64*)* @wil_fw_get_crash_dump_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_fw_get_crash_dump_bounds(%struct.wil6210_priv* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.fw_map*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i64*, i64** %6, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %97

18:                                               ; preds = %3
  %19 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.fw_map* %19)
  %21 = icmp eq i32 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUILD_BUG_ON(i32 %22)
  %24 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %25 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %24, i64 0
  store %struct.fw_map* %25, %struct.fw_map** %9, align 8
  %26 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %27 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  %29 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %30 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %33 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %36 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %34, %37
  %39 = add nsw i64 %31, %38
  store i64 %39, i64* %11, align 8
  store i32 1, i32* %8, align 4
  br label %40

40:                                               ; preds = %83, %18
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %43 = call i32 @ARRAY_SIZE(%struct.fw_map* %42)
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %86

45:                                               ; preds = %40
  %46 = load %struct.fw_map*, %struct.fw_map** @fw_mapping, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %46, i64 %48
  store %struct.fw_map* %49, %struct.fw_map** %9, align 8
  %50 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %51 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %83

55:                                               ; preds = %45
  %56 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %57 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp slt i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %63 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %10, align 8
  br label %65

65:                                               ; preds = %61, %55
  %66 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %67 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %70 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.fw_map*, %struct.fw_map** %9, align 8
  %73 = getelementptr inbounds %struct.fw_map, %struct.fw_map* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = sub nsw i64 %71, %74
  %76 = add nsw i64 %68, %75
  store i64 %76, i64* %12, align 8
  %77 = load i64, i64* %12, align 8
  %78 = load i64, i64* %11, align 8
  %79 = icmp sgt i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %65
  %81 = load i64, i64* %12, align 8
  store i64 %81, i64* %11, align 8
  br label %82

82:                                               ; preds = %80, %65
  br label %83

83:                                               ; preds = %82, %54
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %40

86:                                               ; preds = %40
  %87 = load i64, i64* %11, align 8
  %88 = load i64, i64* %10, align 8
  %89 = sub nsw i64 %87, %88
  %90 = load i64*, i64** %6, align 8
  store i64 %89, i64* %90, align 8
  %91 = load i64*, i64** %7, align 8
  %92 = icmp ne i64* %91, null
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i64, i64* %10, align 8
  %95 = load i64*, i64** %7, align 8
  store i64 %94, i64* %95, align 8
  br label %96

96:                                               ; preds = %93, %86
  store i32 0, i32* %4, align 4
  br label %97

97:                                               ; preds = %96, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.fw_map*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
