; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_capability*)* }
%struct.file = type opaque
%struct.v4l2_capability = type opaque
%struct.file.0 = type { i32 }
%struct.v4l2_capability.1 = type { i32, i32, i32 }
%struct.video_device = type { i32 }

@LINUX_VERSION_CODE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@V4L2_CAP_EXT_PIX_FORMAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_querycap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_querycap(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca %struct.v4l2_ioctl_ops*, align 8
  %6 = alloca %struct.file.0*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.v4l2_capability.1*, align 8
  %10 = alloca %struct.video_device*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %5, align 8
  store %struct.file.0* %1, %struct.file.0** %6, align 8
  store i8* %2, i8** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.v4l2_capability.1*
  store %struct.v4l2_capability.1* %13, %struct.v4l2_capability.1** %9, align 8
  %14 = load %struct.file.0*, %struct.file.0** %6, align 8
  %15 = call %struct.video_device* @video_devdata(%struct.file.0* %14)
  store %struct.video_device* %15, %struct.video_device** %10, align 8
  %16 = load i32, i32* @LINUX_VERSION_CODE, align 4
  %17 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %18 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = load %struct.video_device*, %struct.video_device** %10, align 8
  %20 = getelementptr inbounds %struct.video_device, %struct.video_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %23 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.video_device*, %struct.video_device** %10, align 8
  %25 = getelementptr inbounds %struct.video_device, %struct.video_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %30 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %5, align 8
  %32 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.file*, i8*, %struct.v4l2_capability*)*, i32 (%struct.file*, i8*, %struct.v4l2_capability*)** %32, align 8
  %34 = load %struct.file.0*, %struct.file.0** %6, align 8
  %35 = bitcast %struct.file.0* %34 to %struct.file*
  %36 = load i8*, i8** %7, align 8
  %37 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %38 = bitcast %struct.v4l2_capability.1* %37 to %struct.v4l2_capability*
  %39 = call i32 %33(%struct.file* %35, i8* %36, %struct.v4l2_capability* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %41 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.video_device*, %struct.video_device** %10, align 8
  %44 = getelementptr inbounds %struct.video_device, %struct.video_device* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  %49 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %50 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.video_device*, %struct.video_device** %10, align 8
  %53 = getelementptr inbounds %struct.video_device, %struct.video_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %56 = or i32 %54, %55
  %57 = and i32 %51, %56
  %58 = load %struct.video_device*, %struct.video_device** %10, align 8
  %59 = getelementptr inbounds %struct.video_device, %struct.video_device* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %62 = or i32 %60, %61
  %63 = icmp ne i32 %57, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @WARN_ON(i32 %64)
  %66 = load i32, i32* @V4L2_CAP_EXT_PIX_FORMAT, align 4
  %67 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %68 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* @V4L2_CAP_EXT_PIX_FORMAT, align 4
  %72 = load %struct.v4l2_capability.1*, %struct.v4l2_capability.1** %9, align 8
  %73 = getelementptr inbounds %struct.v4l2_capability.1, %struct.v4l2_capability.1* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %11, align 4
  ret i32 %76
}

declare dso_local %struct.video_device* @video_devdata(%struct.file.0*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
