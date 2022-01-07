; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_max2175.c_max2175_s_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_frequency = type { i64, i32 }
%struct.max2175 = type { %struct.TYPE_10__*, i64, i32, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"s_freq: new %u curr %u, mode_resolved %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"s_freq: ret %d curr %u mode_resolved %d mode %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_frequency*)* @max2175_s_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max2175_s_frequency(%struct.v4l2_subdev* %0, %struct.v4l2_frequency* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_frequency*, align 8
  %6 = alloca %struct.max2175*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_frequency* %1, %struct.v4l2_frequency** %5, align 8
  %9 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %10 = call %struct.max2175* @max2175_from_sd(%struct.v4l2_subdev* %9)
  store %struct.max2175* %10, %struct.max2175** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.max2175*, %struct.max2175** %6, align 8
  %12 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.max2175*, %struct.max2175** %6, align 8
  %16 = getelementptr inbounds %struct.max2175, %struct.max2175* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.max2175*, %struct.max2175** %6, align 8
  %19 = getelementptr inbounds %struct.max2175, %struct.max2175* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 (%struct.max2175*, i8*, i32, i32, i64, ...) @mxm_dbg(%struct.max2175* %11, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %17, i64 %20)
  %22 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %90

29:                                               ; preds = %2
  %30 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %5, align 8
  %31 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.max2175*, %struct.max2175** %6, align 8
  %34 = getelementptr inbounds %struct.max2175, %struct.max2175* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.max2175*, %struct.max2175** %6, align 8
  %39 = getelementptr inbounds %struct.max2175, %struct.max2175* %38, i32 0, i32 4
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clamp(i32 %32, i32 %37, i32 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.max2175*, %struct.max2175** %6, align 8
  %45 = getelementptr inbounds %struct.max2175, %struct.max2175* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %69

48:                                               ; preds = %29
  %49 = load %struct.max2175*, %struct.max2175** %6, align 8
  %50 = load %struct.max2175*, %struct.max2175** %6, align 8
  %51 = getelementptr inbounds %struct.max2175, %struct.max2175* %50, i32 0, i32 0
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @max2175_freq_rx_mode_valid(%struct.max2175* %49, i32 %55, i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %48
  %60 = load %struct.max2175*, %struct.max2175** %6, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.max2175*, %struct.max2175** %6, align 8
  %63 = getelementptr inbounds %struct.max2175, %struct.max2175* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @max2175_tune_rf_freq(%struct.max2175* %60, i32 %61, i32 %67)
  store i32 %68, i32* %8, align 4
  br label %73

69:                                               ; preds = %48, %29
  %70 = load %struct.max2175*, %struct.max2175** %6, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @max2175_set_freq_and_mode(%struct.max2175* %70, i32 %71)
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %69, %59
  %74 = load %struct.max2175*, %struct.max2175** %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.max2175*, %struct.max2175** %6, align 8
  %77 = getelementptr inbounds %struct.max2175, %struct.max2175* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.max2175*, %struct.max2175** %6, align 8
  %80 = getelementptr inbounds %struct.max2175, %struct.max2175* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.max2175*, %struct.max2175** %6, align 8
  %83 = getelementptr inbounds %struct.max2175, %struct.max2175* %82, i32 0, i32 0
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.max2175*, i8*, i32, i32, i64, ...) @mxm_dbg(%struct.max2175* %74, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i32 %75, i32 %78, i64 %81, i32 %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %73, %26
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local %struct.max2175* @max2175_from_sd(%struct.v4l2_subdev*) #1

declare dso_local i32 @mxm_dbg(%struct.max2175*, i8*, i32, i32, i64, ...) #1

declare dso_local i32 @clamp(i32, i32, i32) #1

declare dso_local i64 @max2175_freq_rx_mode_valid(%struct.max2175*, i32, i32) #1

declare dso_local i32 @max2175_tune_rf_freq(%struct.max2175*, i32, i32) #1

declare dso_local i32 @max2175_set_freq_and_mode(%struct.max2175*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
