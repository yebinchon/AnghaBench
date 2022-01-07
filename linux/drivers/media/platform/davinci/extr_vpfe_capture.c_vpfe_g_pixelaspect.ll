; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpfe_capture.c_vpfe_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { %struct.v4l2_fract }
%struct.v4l2_fract = type { i32 }
%struct.file = type { i32 }
%struct.vpfe_device = type { i64, i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"vpfe_g_pixelaspect\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@vpfe_standards = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @vpfe_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vpfe_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.vpfe_device*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call %struct.vpfe_device* @video_drvdata(%struct.file* %11)
  store %struct.vpfe_device* %12, %struct.vpfe_device** %10, align 8
  %13 = load i32, i32* @debug, align 4
  %14 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %15 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %14, i32 0, i32 1
  %16 = call i32 @v4l2_dbg(i32 1, i32 %13, i32* %15, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %41

23:                                               ; preds = %4
  %24 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %25 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vpfe_standards, align 8
  %28 = call i64 @ARRAY_SIZE(%struct.TYPE_3__* %27)
  %29 = icmp uge i64 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %41

31:                                               ; preds = %23
  %32 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @vpfe_standards, align 8
  %34 = load %struct.vpfe_device*, %struct.vpfe_device** %10, align 8
  %35 = getelementptr inbounds %struct.vpfe_device, %struct.vpfe_device* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = bitcast %struct.v4l2_fract* %32 to i8*
  %40 = bitcast %struct.v4l2_fract* %38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %39, i8* align 4 %40, i64 4, i1 false)
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %31, %30, %20
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local %struct.vpfe_device* @video_drvdata(%struct.file*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_3__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
