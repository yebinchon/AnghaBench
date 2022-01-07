; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_video_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_video_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw686x_dev = type { %struct.TYPE_2__*, %struct.tw686x_video_channel* }
%struct.TYPE_2__ = type { i32 (%struct.tw686x_video_channel*, i32)* }
%struct.tw686x_video_channel = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw686x_video_free(%struct.tw686x_dev* %0) #0 {
  %2 = alloca %struct.tw686x_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.tw686x_video_channel*, align 8
  store %struct.tw686x_dev* %0, %struct.tw686x_dev** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %9 = call i32 @max_channels(%struct.tw686x_dev* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %49

11:                                               ; preds = %6
  %12 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %13 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %12, i32 0, i32 1
  %14 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %14, i64 %16
  store %struct.tw686x_video_channel* %17, %struct.tw686x_video_channel** %5, align 8
  %18 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %5, align 8
  %19 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @video_unregister_device(i32 %20)
  %22 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %23 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32 (%struct.tw686x_video_channel*, i32)*, i32 (%struct.tw686x_video_channel*, i32)** %25, align 8
  %27 = icmp ne i32 (%struct.tw686x_video_channel*, i32)* %26, null
  br i1 %27, label %28, label %45

28:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %29

29:                                               ; preds = %41, %28
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %30, 2
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.tw686x_dev*, %struct.tw686x_dev** %2, align 8
  %34 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (%struct.tw686x_video_channel*, i32)*, i32 (%struct.tw686x_video_channel*, i32)** %36, align 8
  %38 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %5, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 %37(%struct.tw686x_video_channel* %38, i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %4, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %4, align 4
  br label %29

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44, %11
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %3, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %3, align 4
  br label %6

49:                                               ; preds = %6
  ret void
}

declare dso_local i32 @max_channels(%struct.tw686x_dev*) #1

declare dso_local i32 @video_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
