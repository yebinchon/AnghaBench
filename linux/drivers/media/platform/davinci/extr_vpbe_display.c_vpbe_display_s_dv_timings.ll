; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_s_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_s_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.vpbe_layer = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)* }
%struct.vpbe_device.0 = type opaque
%struct.v4l2_dv_timings.1 = type opaque

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"VIDIOC_S_DV_TIMINGS\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Failed to set the dv timings info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vpbe_display_s_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_s_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %11)
  store %struct.vpbe_layer* %12, %struct.vpbe_layer** %8, align 8
  %13 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %14 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.vpbe_device*, %struct.vpbe_device** %16, align 8
  store %struct.vpbe_device* %17, %struct.vpbe_device** %9, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %20 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %19, i32 0, i32 0
  %21 = call i32 @v4l2_dbg(i32 1, i32 %18, i32* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %23 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %22, i32 0, i32 0
  %24 = call i64 @vb2_is_busy(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %57

29:                                               ; preds = %3
  %30 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %31 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)*, i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)** %32, align 8
  %34 = icmp ne i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %29
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %57

38:                                               ; preds = %29
  %39 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %40 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)*, i32 (%struct.vpbe_device.0*, %struct.v4l2_dv_timings.1*)** %41, align 8
  %43 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %44 = bitcast %struct.vpbe_device* %43 to %struct.vpbe_device.0*
  %45 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %46 = bitcast %struct.v4l2_dv_timings* %45 to %struct.v4l2_dv_timings.1*
  %47 = call i32 %42(%struct.vpbe_device.0* %44, %struct.v4l2_dv_timings.1* %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %38
  %51 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %52 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %51, i32 0, i32 0
  %53 = call i32 @v4l2_err(i32* %52, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %38
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %50, %35, %26
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i64 @vb2_is_busy(i32*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
