; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enumaudio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/go7007/extr_go7007-v4l2.c_vidioc_enumaudio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_audio = type { i64, i32, i32 }
%struct.go7007 = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_AUDCAP_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_audio*)* @vidioc_enumaudio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enumaudio(%struct.file* %0, i8* %1, %struct.v4l2_audio* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_audio*, align 8
  %8 = alloca %struct.go7007*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_audio* %2, %struct.v4l2_audio** %7, align 8
  %9 = load %struct.file*, %struct.file** %5, align 8
  %10 = call %struct.go7007* @video_drvdata(%struct.file* %9)
  store %struct.go7007* %10, %struct.go7007** %8, align 8
  %11 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %12 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.go7007*, %struct.go7007** %8, align 8
  %15 = getelementptr inbounds %struct.go7007, %struct.go7007* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp uge i64 %13, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %3
  %24 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %25 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.go7007*, %struct.go7007** %8, align 8
  %28 = getelementptr inbounds %struct.go7007, %struct.go7007* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @strscpy(i32 %26, i32 %37, i32 4)
  %39 = load i32, i32* @V4L2_AUDCAP_STEREO, align 4
  %40 = load %struct.v4l2_audio*, %struct.v4l2_audio** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_audio, %struct.v4l2_audio* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %23, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local %struct.go7007* @video_drvdata(%struct.file*) #1

declare dso_local i32 @strscpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
