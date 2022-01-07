; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_mode_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_mode_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_reglist = type { i64 }
%struct.et8ek8_meta_reglist = type { i32 }
%struct.v4l2_mbus_framefmt = type { i32, i32, i64 }

@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.et8ek8_reglist* (%struct.et8ek8_meta_reglist*, %struct.v4l2_mbus_framefmt*)* @et8ek8_reglist_find_mode_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_fmt(%struct.et8ek8_meta_reglist* %0, %struct.v4l2_mbus_framefmt* %1) #0 {
  %3 = alloca %struct.et8ek8_meta_reglist*, align 8
  %4 = alloca %struct.v4l2_mbus_framefmt*, align 8
  %5 = alloca %struct.et8ek8_reglist**, align 8
  %6 = alloca %struct.et8ek8_reglist*, align 8
  %7 = alloca %struct.et8ek8_reglist*, align 8
  %8 = alloca %struct.v4l2_mbus_framefmt, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.et8ek8_meta_reglist* %0, %struct.et8ek8_meta_reglist** %3, align 8
  store %struct.v4l2_mbus_framefmt* %1, %struct.v4l2_mbus_framefmt** %4, align 8
  %12 = load %struct.et8ek8_meta_reglist*, %struct.et8ek8_meta_reglist** %3, align 8
  %13 = call %struct.et8ek8_reglist** @et8ek8_reglist_first(%struct.et8ek8_meta_reglist* %12)
  store %struct.et8ek8_reglist** %13, %struct.et8ek8_reglist*** %5, align 8
  store %struct.et8ek8_reglist* null, %struct.et8ek8_reglist** %6, align 8
  store %struct.et8ek8_reglist* null, %struct.et8ek8_reglist** %7, align 8
  store i32 -1, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  br label %14

14:                                               ; preds = %90, %2
  %15 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %16 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %15, align 8
  %17 = icmp ne %struct.et8ek8_reglist* %16, null
  br i1 %17, label %18, label %93

18:                                               ; preds = %14
  %19 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %20 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %19, align 8
  %21 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %90

26:                                               ; preds = %18
  %27 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %28 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %27, align 8
  %29 = call i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist* %28, %struct.v4l2_mbus_framefmt* %8)
  %30 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %31 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @min(i32 %32, i32 %34)
  %36 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %37 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @min(i32 %38, i32 %40)
  %42 = mul i32 %35, %41
  store i32 %42, i32* %11, align 4
  %43 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %44, %46
  %48 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %49 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %52 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = mul nsw i32 %50, %53
  %55 = add nsw i32 %47, %54
  %56 = load i32, i32* %11, align 4
  %57 = mul i32 2, %56
  %58 = sub i32 %55, %57
  store i32 %58, i32* %11, align 4
  %59 = load %struct.v4l2_mbus_framefmt*, %struct.v4l2_mbus_framefmt** %4, align 8
  %60 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = getelementptr inbounds %struct.v4l2_mbus_framefmt, %struct.v4l2_mbus_framefmt* %8, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %61, %63
  br i1 %64, label %65, label %77

65:                                               ; preds = %26
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* %9, align 4
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %72, label %69

69:                                               ; preds = %65
  %70 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %6, align 8
  %71 = icmp ne %struct.et8ek8_reglist* %70, null
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %65
  %73 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %74 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %73, align 8
  store %struct.et8ek8_reglist* %74, %struct.et8ek8_reglist** %6, align 8
  %75 = load i32, i32* %11, align 4
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %72, %69
  br label %89

77:                                               ; preds = %26
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %77
  %82 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  %83 = icmp ne %struct.et8ek8_reglist* %82, null
  br i1 %83, label %88, label %84

84:                                               ; preds = %81, %77
  %85 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %86 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %85, align 8
  store %struct.et8ek8_reglist* %86, %struct.et8ek8_reglist** %7, align 8
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %10, align 4
  br label %88

88:                                               ; preds = %84, %81
  br label %89

89:                                               ; preds = %88, %76
  br label %90

90:                                               ; preds = %89, %25
  %91 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %5, align 8
  %92 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %91, i32 1
  store %struct.et8ek8_reglist** %92, %struct.et8ek8_reglist*** %5, align 8
  br label %14

93:                                               ; preds = %14
  %94 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %6, align 8
  %95 = icmp ne %struct.et8ek8_reglist* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %6, align 8
  br label %100

98:                                               ; preds = %93
  %99 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %7, align 8
  br label %100

100:                                              ; preds = %98, %96
  %101 = phi %struct.et8ek8_reglist* [ %97, %96 ], [ %99, %98 ]
  ret %struct.et8ek8_reglist* %101
}

declare dso_local %struct.et8ek8_reglist** @et8ek8_reglist_first(%struct.et8ek8_meta_reglist*) #1

declare dso_local i32 @et8ek8_reglist_to_mbus(%struct.et8ek8_reglist*, %struct.v4l2_mbus_framefmt*) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
