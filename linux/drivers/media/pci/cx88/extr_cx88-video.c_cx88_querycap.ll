; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_querycap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-video.c_cx88_querycap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx88_core = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.v4l2_capability = type { i32, i32 }

@V4L2_CAP_READWRITE = common dso_local global i32 0, align 4
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_VBI_CAPTURE = common dso_local global i32 0, align 4
@V4L2_CAP_DEVICE_CAPS = common dso_local global i32 0, align 4
@UNSET = common dso_local global i64 0, align 8
@V4L2_CAP_TUNER = common dso_local global i32 0, align 4
@CX88_RADIO = common dso_local global i64 0, align 8
@V4L2_CAP_RADIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx88_querycap(%struct.file* %0, %struct.cx88_core* %1, %struct.v4l2_capability* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.cx88_core*, align 8
  %6 = alloca %struct.v4l2_capability*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.cx88_core* %1, %struct.cx88_core** %5, align 8
  store %struct.v4l2_capability* %2, %struct.v4l2_capability** %6, align 8
  %7 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %8 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %11 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @strscpy(i32 %9, i32 %13, i32 4)
  %15 = load i32, i32* @V4L2_CAP_READWRITE, align 4
  %16 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @V4L2_CAP_VBI_CAPTURE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @V4L2_CAP_DEVICE_CAPS, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %25 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %27 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @UNSET, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %3
  %33 = load i32, i32* @V4L2_CAP_TUNER, align 4
  %34 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %32, %3
  %39 = load %struct.cx88_core*, %struct.cx88_core** %5, align 8
  %40 = getelementptr inbounds %struct.cx88_core, %struct.cx88_core* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @CX88_RADIO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %38
  %47 = load i32, i32* @V4L2_CAP_RADIO, align 4
  %48 = load %struct.v4l2_capability*, %struct.v4l2_capability** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %46, %38
  ret i32 0
}

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
