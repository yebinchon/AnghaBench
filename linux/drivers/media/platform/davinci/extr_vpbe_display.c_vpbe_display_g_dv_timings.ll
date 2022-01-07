; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_dv_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_display.c_vpbe_display_g_dv_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_dv_timings = type { i32 }
%struct.vpbe_layer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.vpbe_device* }
%struct.vpbe_device = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.v4l2_dv_timings }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"VIDIOC_G_DV_TIMINGS\0A\00", align 1
@VPBE_ENC_DV_TIMINGS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_dv_timings*)* @vpbe_display_g_dv_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpbe_display_g_dv_timings(%struct.file* %0, i8* %1, %struct.v4l2_dv_timings* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_dv_timings*, align 8
  %8 = alloca %struct.vpbe_layer*, align 8
  %9 = alloca %struct.vpbe_device*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_dv_timings* %2, %struct.v4l2_dv_timings** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vpbe_layer* @video_drvdata(%struct.file* %10)
  store %struct.vpbe_layer* %11, %struct.vpbe_layer** %8, align 8
  %12 = load %struct.vpbe_layer*, %struct.vpbe_layer** %8, align 8
  %13 = getelementptr inbounds %struct.vpbe_layer, %struct.vpbe_layer* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load %struct.vpbe_device*, %struct.vpbe_device** %15, align 8
  store %struct.vpbe_device* %16, %struct.vpbe_device** %9, align 8
  %17 = load i32, i32* @debug, align 4
  %18 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %19 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %18, i32 0, i32 1
  %20 = call i32 @v4l2_dbg(i32 1, i32 %17, i32* %19, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %22 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @VPBE_ENC_DV_TIMINGS, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %3
  %29 = load %struct.v4l2_dv_timings*, %struct.v4l2_dv_timings** %7, align 8
  %30 = load %struct.vpbe_device*, %struct.vpbe_device** %9, align 8
  %31 = getelementptr inbounds %struct.vpbe_device, %struct.vpbe_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = bitcast %struct.v4l2_dv_timings* %29 to i8*
  %34 = bitcast %struct.v4l2_dv_timings* %32 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %33, i8* align 4 %34, i64 4, i1 false)
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %39

38:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.vpbe_layer* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
