; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_vidioc_reqbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/zr364xx/extr_zr364xx.c_zr364xx_vidioc_reqbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_requestbuffers = type { i32 }
%struct.zr364xx_camera = type { i8*, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_requestbuffers*)* @zr364xx_vidioc_reqbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zr364xx_vidioc_reqbufs(%struct.file* %0, i8* %1, %struct.v4l2_requestbuffers* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_requestbuffers*, align 8
  %8 = alloca %struct.zr364xx_camera*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_requestbuffers* %2, %struct.v4l2_requestbuffers** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.zr364xx_camera* @video_drvdata(%struct.file* %9)
  store %struct.zr364xx_camera* %10, %struct.zr364xx_camera** %8, align 8
  %11 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %12 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %17 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = icmp ne i8* %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15
  %22 = load i32, i32* @EBUSY, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %29

24:                                               ; preds = %15, %3
  %25 = load %struct.zr364xx_camera*, %struct.zr364xx_camera** %8, align 8
  %26 = getelementptr inbounds %struct.zr364xx_camera, %struct.zr364xx_camera* %25, i32 0, i32 1
  %27 = load %struct.v4l2_requestbuffers*, %struct.v4l2_requestbuffers** %7, align 8
  %28 = call i32 @videobuf_reqbufs(i32* %26, %struct.v4l2_requestbuffers* %27)
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local %struct.zr364xx_camera* @video_drvdata(%struct.file*) #1

declare dso_local i32 @videobuf_reqbufs(i32*, %struct.v4l2_requestbuffers*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
