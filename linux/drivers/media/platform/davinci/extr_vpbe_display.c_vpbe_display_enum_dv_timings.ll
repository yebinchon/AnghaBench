; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_enum_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_enum_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_enum_dv_timings = type { i32 }
%struct.vpbe_layer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)* }
%struct.vpbe_device.0 = type opaque
%struct.v4l2_enum_dv_timings.1 = type opaque

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"VIDIOC_ENUM_DV_TIMINGS\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to enumerate dv timings info\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_enum_dv_timings*)* @vpbe_display_enum_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_enum_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_enum_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_enum_dv_timings*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_device*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_enum_dv_timings* %2, %struct.v4l2_enum_dv_timings** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %11)
  store %struct.vpbe_layer* %12, %struct.vpbe_layer** %8, align 8
  %13 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %14 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.vpbe_device*, %struct.vpbe_device** %16, align 8
  store %struct.vpbe_device* %17, %struct.vpbe_device** %9, align 8
  %18 = load i32, i32* @debug, align 4
  %19 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %20 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %19, i32 0, i32 0
  %21 = call i32 @v4l2_dbg(i32 1, i32 %18, i32* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %23 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)*, i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)** %24, align 8
  %26 = icmp ne i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %49

30:                                               ; preds = %3
  %31 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %32 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)*, i32 (%struct.vpbe_device.0*, %struct.v4l2_enum_dv_timings.1*)** %33, align 8
  %35 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %36 = bitcast %struct.vpbe_device* %35 to %struct.vpbe_device.0*
  %37 = load %struct.v4l2_enum_dv_timings*, %struct.v4l2_enum_dv_timings** %7, align 8
  %38 = bitcast %struct.v4l2_enum_dv_timings* %37 to %struct.v4l2_enum_dv_timings.1*
  %39 = call i32 %34(%struct.vpbe_device.0* %36, %struct.v4l2_enum_dv_timings.1* %38)
  store i32 %39, i32* %10, align 4
  %40 = load i32, i32* %10, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %30
  %43 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %44 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %43, i32 0, i32 0
  %45 = call i32 @v4l2_err(i32* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %49

48:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %48, %42, %27
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
