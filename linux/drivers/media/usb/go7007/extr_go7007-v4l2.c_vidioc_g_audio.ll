; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_g_audio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_g_audio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i64, i32, i32 }
%struct.go7007 = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_g_audio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_g_audio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_audio*, align 8
  %7 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %6, align 8
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = call %struct.go7007* @video_drvdata(%struct.file* %8)
  store %struct.go7007* %9, %struct.go7007** %7, align 8
  %10 = load %struct.go7007*, %struct.go7007** %7, align 8
  %11 = getelementptr inbounds %struct.go7007, %struct.go7007* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %14 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %16 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.go7007*, %struct.go7007** %7, align 8
  %19 = getelementptr inbounds %struct.go7007, %struct.go7007* %18, i32 0, i32 1
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = load %struct.go7007*, %struct.go7007** %7, align 8
  %24 = getelementptr inbounds %struct.go7007, %struct.go7007* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strscpy(i32 %17, i32 %28, i32 4)
  %30 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %31 = load %struct.v4l2_audio*, %struct.v4l2_audio** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  ret i32 0
}

declare dso_local %struct.go7007* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
