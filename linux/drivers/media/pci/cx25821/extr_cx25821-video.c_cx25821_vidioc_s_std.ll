; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-video.c_cx25821_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.cx25821_channel = type { i32, i32, %struct.cx25821_dev* }
%struct.cx25821_dev = type { i32 }

@V4L2_STD_625_50 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @cx25821_vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx25821_vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.cx25821_channel*, align 8
  %9 = alloca %struct.cx25821_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.cx25821_channel* @video_drvdata(%struct.file* %10)
  store %struct.cx25821_channel* %11, %struct.cx25821_channel** %8, align 8
  %12 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %13 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %12, i32 0, i32 2
  %14 = load %struct.cx25821_dev*, %struct.cx25821_dev** %13, align 8
  store %struct.cx25821_dev* %14, %struct.cx25821_dev** %9, align 8
  %15 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %16 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %39

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %24 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %26 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %25, i32 0, i32 0
  store i32 720, i32* %26, align 8
  %27 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %28 = getelementptr inbounds %struct.cx25821_dev, %struct.cx25821_dev* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @V4L2_STD_625_50, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 576, i32 480
  %35 = load %struct.cx25821_channel*, %struct.cx25821_channel** %8, align 8
  %36 = getelementptr inbounds %struct.cx25821_channel, %struct.cx25821_channel* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.cx25821_dev*, %struct.cx25821_dev** %9, align 8
  %38 = call i32 @medusa_set_videostandard(%struct.cx25821_dev* %37)
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %21, %20
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local %struct.cx25821_channel* @video_drvdata(%struct.file*) #1

declare dso_local i32 @medusa_set_videostandard(%struct.cx25821_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
