; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_vidioc_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_vidioc_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.stk1160 = type { i32, i32, i32, i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@V4L2_STD_525_60 = common dso_local global i32 0, align 4
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_std(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.stk1160*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.stk1160* @video_drvdata(%struct.file* %10)
  store %struct.stk1160* %11, %struct.stk1160** %8, align 8
  %12 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %13 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %12, i32 0, i32 5
  store %struct.vb2_queue* %13, %struct.vb2_queue** %9, align 8
  %14 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %15 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %61

20:                                               ; preds = %3
  %21 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %22 = call i64 @vb2_is_busy(%struct.vb2_queue* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %61

27:                                               ; preds = %20
  %28 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %29 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %61

35:                                               ; preds = %27
  %36 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %37 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %36, i32 0, i32 1
  store i32 720, i32* %37, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @V4L2_STD_525_60, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i32 480, i32 576
  %44 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %45 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %48 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %50 = call i32 @stk1160_set_std(%struct.stk1160* %49)
  %51 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %52 = call i32 @stk1160_set_fmt(%struct.stk1160* %51, i32* null)
  %53 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %54 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %53, i32 0, i32 3
  %55 = load i32, i32* @video, align 4
  %56 = load i32, i32* @s_std, align 4
  %57 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %58 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @v4l2_device_call_all(i32* %54, i32 0, i32 %55, i32 %56, i32 %59)
  store i32 0, i32* %4, align 4
  br label %61

61:                                               ; preds = %35, %32, %24, %19
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local %struct.stk1160* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @stk1160_set_std(%struct.stk1160*) #1

declare dso_local i32 @stk1160_set_fmt(%struct.stk1160*, i32*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
