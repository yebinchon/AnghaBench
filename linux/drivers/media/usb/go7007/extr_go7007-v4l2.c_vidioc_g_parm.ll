; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.v4l2_fract, i32 }
%struct.v4l2_fract = type { i32, i32 }
%struct.go7007 = type { i32, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@V4L2_CAP_TIMEPERFRAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* @vidioc_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_parm(%struct.file* %0, i8* %1, %struct.v4l2_streamparm* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_streamparm*, align 8
  %8 = alloca %struct.go7007*, align 8
  %9 = alloca %struct.v4l2_fract, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_streamparm* %2, %struct.v4l2_streamparm** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.go7007* @video_drvdata(%struct.file* %10)
  store %struct.go7007* %11, %struct.go7007** %8, align 8
  %12 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 0
  %13 = load %struct.go7007*, %struct.go7007** %8, align 8
  %14 = getelementptr inbounds %struct.go7007, %struct.go7007* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = mul nsw i32 1001, %15
  store i32 %16, i32* %12, align 4
  %17 = getelementptr inbounds %struct.v4l2_fract, %struct.v4l2_fract* %9, i32 0, i32 1
  %18 = load %struct.go7007*, %struct.go7007** %8, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %17, align 4
  %21 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %22 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %45

29:                                               ; preds = %3
  %30 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %31 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load i32, i32* @V4L2_CAP_TIMEPERFRAME, align 4
  %35 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %34, i32* %38, align 4
  %39 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = bitcast %struct.v4l2_fract* %42 to i8*
  %44 = bitcast %struct.v4l2_fract* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %29, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.go7007* @video_drvdata(%struct.file*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
