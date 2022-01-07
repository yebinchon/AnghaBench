; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vpfe_device = type { i32, %struct.v4l2_format, i32, i64 }
%struct.vpfe_pixel_format = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpfe_s_fmt_vid_cap\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Streaming is started\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vpfe_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vpfe_device*, align 8
  %9 = alloca %struct.vpfe_pixel_format*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %8, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 2
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %18 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %23 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %22, i32 0, i32 2
  %24 = call i32 @v4l2_err(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %60

27:                                               ; preds = %3
  %28 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = call %struct.vpfe_pixel_format* @vpfe_check_format(%struct.vpfe_device* %28, i32* %31)
  store %struct.vpfe_pixel_format* %32, %struct.vpfe_pixel_format** %9, align 8
  %33 = load %struct.vpfe_pixel_format*, %struct.vpfe_pixel_format** %9, align 8
  %34 = icmp ne %struct.vpfe_pixel_format* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %60

38:                                               ; preds = %27
  %39 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %40 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %39, i32 0, i32 0
  %41 = call i32 @mutex_lock_interruptible(i32* %40)
  store i32 %41, i32* %10, align 4
  %42 = load i32, i32* %10, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %60

46:                                               ; preds = %38
  %47 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %48 = call i32 @vpfe_detach_irq(%struct.vpfe_device* %47)
  %49 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %50 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %49, i32 0, i32 1
  %51 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %52 = bitcast %struct.v4l2_format* %50 to i8*
  %53 = bitcast %struct.v4l2_format* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %55 = call i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device* %54)
  store i32 %55, i32* %10, align 4
  %56 = load %struct.vpfe_device*, %struct.vpfe_device** %8, align 8
  %57 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %56, i32 0, i32 0
  %58 = call i32 @mutex_unlock(i32* %57)
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %46, %44, %35, %21
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.vpfe_pixel_format* @vpfe_check_format(%struct.vpfe_device*, i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @vpfe_detach_irq(%struct.vpfe_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @vpfe_config_ccdc_image_format(%struct.vpfe_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
