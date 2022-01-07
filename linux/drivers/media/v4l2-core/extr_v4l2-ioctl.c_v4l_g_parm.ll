; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_g_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file.0*, i8*, i32*)* }
%struct.file = type opaque
%struct.v4l2_streamparm = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.file.0 = type opaque
%struct.file.1 = type { i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.1*, i8*, i8*)* @v4l_g_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_g_parm(%struct.v4l2_ioctl_ops* %0, %struct.file.1* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.1*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_streamparm*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.1* %1, %struct.file.1** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = bitcast i8* %13 to %struct.v4l2_streamparm*
  store %struct.v4l2_streamparm* %14, %struct.v4l2_streamparm** %10, align 8
  %15 = load %struct.file.1*, %struct.file.1** %7, align 8
  %16 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %17 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @check_fmt(%struct.file.1* %15, i64 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %12, align 4
  store i32 %23, i32* %5, align 4
  br label %76

24:                                               ; preds = %4
  %25 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %25, i32 0, i32 0
  %27 = load i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)** %26, align 8
  %28 = icmp ne i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %31 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)*, i32 (%struct.file*, i8*, %struct.v4l2_streamparm*)** %31, align 8
  %33 = load %struct.file.1*, %struct.file.1** %7, align 8
  %34 = bitcast %struct.file.1* %33 to %struct.file*
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %37 = call i32 %32(%struct.file* %34, i8* %35, %struct.v4l2_streamparm* %36)
  store i32 %37, i32* %5, align 4
  br label %76

38:                                               ; preds = %24
  %39 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %40 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %38
  %45 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %46 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %76

53:                                               ; preds = %44, %38
  %54 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %55 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i32 2, i32* %57, align 8
  %58 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %59 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %58, i32 0, i32 1
  %60 = load i32 (%struct.file.0*, i8*, i32*)*, i32 (%struct.file.0*, i8*, i32*)** %59, align 8
  %61 = load %struct.file.1*, %struct.file.1** %7, align 8
  %62 = bitcast %struct.file.1* %61 to %struct.file.0*
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 %60(%struct.file.0* %62, i8* %63, i32* %11)
  store i32 %64, i32* %12, align 4
  %65 = load i32, i32* %12, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %53
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %10, align 8
  %70 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = call i32 @v4l2_video_std_frame_period(i32 %68, i32* %72)
  br label %74

74:                                               ; preds = %67, %53
  %75 = load i32, i32* %12, align 4
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %74, %50, %29, %22
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local i32 @check_fmt(%struct.file.1*, i64) #1

declare dso_local i32 @v4l2_video_std_frame_period(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
