; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_vidioc_s_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-v4l.c_vidioc_s_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.stk1160 = type { i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32 }
%struct.stk1160_decimate_ctrl = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_s_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.stk1160*, align 8
  %9 = alloca %struct.vb2_queue*, align 8
  %10 = alloca %struct.stk1160_decimate_ctrl, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %12 = load %struct.file*, %struct.file** %5, align 8
  %13 = call %struct.stk1160* @video_drvdata(%struct.file* %12)
  store %struct.stk1160* %13, %struct.stk1160** %8, align 8
  %14 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %15 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %14, i32 0, i32 2
  store %struct.vb2_queue* %15, %struct.vb2_queue** %9, align 8
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %9, align 8
  %17 = call i64 @vb2_is_busy(%struct.vb2_queue* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EBUSY, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %47

22:                                               ; preds = %3
  %23 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %24 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %25 = call i32 @stk1160_try_fmt(%struct.stk1160* %23, %struct.v4l2_format* %24, %struct.stk1160_decimate_ctrl* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %11, align 4
  store i32 %29, i32* %4, align 4
  br label %47

30:                                               ; preds = %22
  %31 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %32 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %37 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %44 = getelementptr inbounds %struct.stk1160, %struct.stk1160* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  %45 = load %struct.stk1160*, %struct.stk1160** %8, align 8
  %46 = call i32 @stk1160_set_fmt(%struct.stk1160* %45, %struct.stk1160_decimate_ctrl* %10)
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %30, %28, %19
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local %struct.stk1160* @video_drvdata(%struct.file*) #1

declare dso_local i64 @vb2_is_busy(%struct.vb2_queue*) #1

declare dso_local i32 @stk1160_try_fmt(%struct.stk1160*, %struct.v4l2_format*, %struct.stk1160_decimate_ctrl*) #1

declare dso_local i32 @stk1160_set_fmt(%struct.stk1160*, %struct.stk1160_decimate_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
