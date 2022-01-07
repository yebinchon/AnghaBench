; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_g_pixelaspect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-core.c_vidioc_g_pixelaspect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_fract = type { i32 }
%struct.video_device = type { i64 }

@VFL_DIR_RX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32, %struct.v4l2_fract*)* @vidioc_g_pixelaspect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_pixelaspect(%struct.file* %0, i8* %1, i32 %2, %struct.v4l2_fract* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.v4l2_fract*, align 8
  %10 = alloca %struct.video_device*, align 8
  store %struct.file* %0, %struct.file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.v4l2_fract* %3, %struct.v4l2_fract** %9, align 8
  %11 = load %struct.file*, %struct.file** %6, align 8
  %12 = call %struct.video_device* @video_devdata(%struct.file* %11)
  store %struct.video_device* %12, %struct.video_device** %10, align 8
  %13 = load %struct.video_device*, %struct.video_device** %10, align 8
  %14 = getelementptr inbounds %struct.video_device, %struct.video_device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @VFL_DIR_RX, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.file*, %struct.file** %6, align 8
  %20 = load i8*, i8** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %23 = call i32 @vivid_vid_cap_g_pixelaspect(%struct.file* %19, i8* %20, i32 %21, %struct.v4l2_fract* %22)
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.file*, %struct.file** %6, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load %struct.v4l2_fract*, %struct.v4l2_fract** %9, align 8
  %29 = call i32 @vivid_vid_out_g_pixelaspect(%struct.file* %25, i8* %26, i32 %27, %struct.v4l2_fract* %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local i32 @vivid_vid_cap_g_pixelaspect(%struct.file*, i8*, i32, %struct.v4l2_fract*) #1

declare dso_local i32 @vivid_vid_out_g_pixelaspect(%struct.file*, i8*, i32, %struct.v4l2_fract*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
