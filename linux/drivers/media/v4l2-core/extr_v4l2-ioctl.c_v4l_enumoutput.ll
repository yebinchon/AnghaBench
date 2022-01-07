; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_enumoutput.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_enumoutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_output*)* }
%struct.file = type opaque
%struct.v4l2_output = type { i32 }
%struct.file.0 = type { i32 }
%struct.video_device = type { i32 }

@VIDIOC_S_STD = common dso_local global i32 0, align 4
@V4L2_OUT_CAP_STD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_enumoutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_enumoutput(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file.0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.video_device*, align 8
  %10 = alloca %struct.v4l2_output*, align 8
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file.0* %1, %struct.file.0** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.file.0*, %struct.file.0** %6, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file.0* %11)
  store %struct.video_device* %12, %struct.video_device** %9, align 8
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.v4l2_output*
  store %struct.v4l2_output* %14, %struct.v4l2_output** %10, align 8
  %15 = load %struct.video_device*, %struct.video_device** %9, align 8
  %16 = load i32, i32* @VIDIOC_S_STD, align 4
  %17 = call i64 @is_valid_ioctl(%struct.video_device* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %4
  %20 = load i32, i32* @V4L2_OUT_CAP_STD, align 4
  %21 = load %struct.v4l2_output*, %struct.v4l2_output** %10, align 8
  %22 = getelementptr inbounds %struct.v4l2_output, %struct.v4l2_output* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %19, %4
  %26 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %27 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %26, i32 0, i32 0
  %28 = load i32 (%struct.file*, i8*, %struct.v4l2_output*)*, i32 (%struct.file*, i8*, %struct.v4l2_output*)** %27, align 8
  %29 = load %struct.file.0*, %struct.file.0** %6, align 8
  %30 = bitcast %struct.file.0* %29 to %struct.file*
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.v4l2_output*, %struct.v4l2_output** %10, align 8
  %33 = call i32 %28(%struct.file* %30, i8* %31, %struct.v4l2_output* %32)
  ret i32 %33
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i64 @is_valid_ioctl(%struct.video_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
