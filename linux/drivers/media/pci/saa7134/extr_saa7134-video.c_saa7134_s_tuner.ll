; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_tuner = type { i64, i32 }
%struct.saa7134_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@UNSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_s_tuner(%struct.file* %0, i8* %1, %struct.v4l2_tuner* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_tuner*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_tuner* %2, %struct.v4l2_tuner** %7, align 8
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %11)
  store %struct.saa7134_dev* %12, %struct.saa7134_dev** %8, align 8
  %13 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %14 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 0, %15
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %47

20:                                               ; preds = %3
  %21 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %22 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* @UNSET, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %30 = call i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev* %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @saa7134_tvaudio_rx2mode(i32 %31)
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %28, %20
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %39, label %46

39:                                               ; preds = %33
  %40 = load %struct.v4l2_tuner*, %struct.v4l2_tuner** %7, align 8
  %41 = getelementptr inbounds %struct.v4l2_tuner, %struct.v4l2_tuner* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %44 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %42, i32* %45, align 4
  br label %46

46:                                               ; preds = %39, %33
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %17
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @saa7134_tvaudio_getstereo(%struct.saa7134_dev*) #1

declare dso_local i32 @saa7134_tvaudio_rx2mode(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
