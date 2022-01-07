; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_video_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_em28xx_set_video_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32, i32, i32, %struct.em28xx_fmt* }
%struct.em28xx_fmt = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*, i32, i32, i32)* @em28xx_set_video_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_set_video_format(%struct.em28xx* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.em28xx_fmt*, align 8
  %11 = alloca %struct.em28xx_v4l2*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 0
  %14 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  store %struct.em28xx_v4l2* %14, %struct.em28xx_v4l2** %11, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.em28xx_fmt* @format_by_fourcc(i32 %15)
  store %struct.em28xx_fmt* %16, %struct.em28xx_fmt** %10, align 8
  %17 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %10, align 8
  %18 = icmp ne %struct.em28xx_fmt* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %46

22:                                               ; preds = %4
  %23 = load %struct.em28xx_fmt*, %struct.em28xx_fmt** %10, align 8
  %24 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %25 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %24, i32 0, i32 4
  store %struct.em28xx_fmt* %23, %struct.em28xx_fmt** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %28 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %31 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %33 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %34 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %37 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %40 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %39, i32 0, i32 3
  %41 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %11, align 8
  %42 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %41, i32 0, i32 2
  %43 = call i32 @size_to_scale(%struct.em28xx* %32, i32 %35, i32 %38, i32* %40, i32* %42)
  %44 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %45 = call i32 @em28xx_resolution_set(%struct.em28xx* %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %22, %19
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local %struct.em28xx_fmt* @format_by_fourcc(i32) #1

declare dso_local i32 @size_to_scale(%struct.em28xx*, i32, i32, i32*, i32*) #1

declare dso_local i32 @em28xx_resolution_set(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
