; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_mode_ival.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/et8ek8/extr_et8ek8_driver.c_et8ek8_reglist_find_mode_ival.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et8ek8_meta_reglist = type { i32 }
%struct.et8ek8_reglist = type { i64, %struct.et8ek8_mode }
%struct.et8ek8_mode = type { i64, i64, %struct.v4l2_fract }
%struct.v4l2_fract = type { i32 }

@ET8EK8_REGLIST_MODE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.et8ek8_reglist* (%struct.et8ek8_meta_reglist*, %struct.et8ek8_reglist*, %struct.v4l2_fract*)* @et8ek8_reglist_find_mode_ival to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.et8ek8_reglist* @et8ek8_reglist_find_mode_ival(%struct.et8ek8_meta_reglist* %0, %struct.et8ek8_reglist* %1, %struct.v4l2_fract* %2) #0 {
  %4 = alloca %struct.et8ek8_reglist*, align 8
  %5 = alloca %struct.et8ek8_meta_reglist*, align 8
  %6 = alloca %struct.et8ek8_reglist*, align 8
  %7 = alloca %struct.v4l2_fract*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.et8ek8_reglist**, align 8
  %10 = alloca %struct.et8ek8_mode*, align 8
  %11 = alloca %struct.et8ek8_mode*, align 8
  store %struct.et8ek8_meta_reglist* %0, %struct.et8ek8_meta_reglist** %5, align 8
  store %struct.et8ek8_reglist* %1, %struct.et8ek8_reglist** %6, align 8
  store %struct.v4l2_fract* %2, %struct.v4l2_fract** %7, align 8
  %12 = load %struct.v4l2_fract*, %struct.v4l2_fract** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @TIMEPERFRAME_AVG_FPS(i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.et8ek8_meta_reglist*, %struct.et8ek8_meta_reglist** %5, align 8
  %17 = call %struct.et8ek8_reglist** @et8ek8_reglist_first(%struct.et8ek8_meta_reglist* %16)
  store %struct.et8ek8_reglist** %17, %struct.et8ek8_reglist*** %9, align 8
  %18 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %6, align 8
  %19 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %18, i32 0, i32 1
  store %struct.et8ek8_mode* %19, %struct.et8ek8_mode** %10, align 8
  br label %20

20:                                               ; preds = %64, %3
  %21 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %9, align 8
  %22 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %21, align 8
  %23 = icmp ne %struct.et8ek8_reglist* %22, null
  br i1 %23, label %24, label %67

24:                                               ; preds = %20
  %25 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %9, align 8
  %26 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %25, align 8
  %27 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %26, i32 0, i32 1
  store %struct.et8ek8_mode* %27, %struct.et8ek8_mode** %11, align 8
  %28 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %9, align 8
  %29 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %28, align 8
  %30 = getelementptr inbounds %struct.et8ek8_reglist, %struct.et8ek8_reglist* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @ET8EK8_REGLIST_MODE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %24
  br label %64

35:                                               ; preds = %24
  %36 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %11, align 8
  %37 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %10, align 8
  %40 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %11, align 8
  %45 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %10, align 8
  %48 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  br label %64

52:                                               ; preds = %43
  %53 = load %struct.et8ek8_mode*, %struct.et8ek8_mode** %11, align 8
  %54 = getelementptr inbounds %struct.et8ek8_mode, %struct.et8ek8_mode* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @TIMEPERFRAME_AVG_FPS(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %52
  %61 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %9, align 8
  %62 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %61, align 8
  store %struct.et8ek8_reglist* %62, %struct.et8ek8_reglist** %4, align 8
  br label %68

63:                                               ; preds = %52
  br label %64

64:                                               ; preds = %63, %51, %34
  %65 = load %struct.et8ek8_reglist**, %struct.et8ek8_reglist*** %9, align 8
  %66 = getelementptr inbounds %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %65, i32 1
  store %struct.et8ek8_reglist** %66, %struct.et8ek8_reglist*** %9, align 8
  br label %20

67:                                               ; preds = %20
  store %struct.et8ek8_reglist* null, %struct.et8ek8_reglist** %4, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load %struct.et8ek8_reglist*, %struct.et8ek8_reglist** %4, align 8
  ret %struct.et8ek8_reglist* %69
}

declare dso_local i32 @TIMEPERFRAME_AVG_FPS(i32) #1

declare dso_local %struct.et8ek8_reglist** @et8ek8_reglist_first(%struct.et8ek8_meta_reglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
