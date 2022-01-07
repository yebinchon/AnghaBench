; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-video.c_cx23885_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frequency = type { i32 }
%struct.cx23885_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx23885_set_frequency(%struct.file* %0, i8* %1, %struct.v4l2_frequency* %2) #0 {
  %4 = alloca %struct.file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.v4l2_frequency*, align 8
  %7 = alloca %struct.cx23885_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.v4l2_frequency* %2, %struct.v4l2_frequency** %6, align 8
  %9 = load %struct.file*, %struct.file** %4, align 8
  %10 = call %struct.cx23885_dev* @video_drvdata(%struct.file* %9)
  store %struct.cx23885_dev* %10, %struct.cx23885_dev** %7, align 8
  %11 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %12 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %18 [
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %3, %3, %3, %3
  %15 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %16 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %17 = call i32 @cx23885_set_freq_via_ops(%struct.cx23885_dev* %15, %struct.v4l2_frequency* %16)
  store i32 %17, i32* %8, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %7, align 8
  %20 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %6, align 8
  %21 = call i32 @cx23885_set_freq(%struct.cx23885_dev* %19, %struct.v4l2_frequency* %20)
  store i32 %21, i32* %8, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load i32, i32* %8, align 4
  ret i32 %23
}

declare dso_local %struct.cx23885_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @cx23885_set_freq_via_ops(%struct.cx23885_dev*, %struct.v4l2_frequency*) #1

declare dso_local i32 @cx23885_set_freq(%struct.cx23885_dev*, %struct.v4l2_frequency*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
