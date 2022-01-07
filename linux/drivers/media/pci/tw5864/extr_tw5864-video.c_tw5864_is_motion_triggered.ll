; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_is_motion_triggered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_is_motion_triggered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_h264_frame = type { %struct.TYPE_2__, %struct.tw5864_input* }
%struct.TYPE_2__ = type { i64 }
%struct.tw5864_input = type { i32* }

@MD_CELLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tw5864_h264_frame*)* @tw5864_is_motion_triggered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw5864_is_motion_triggered(%struct.tw5864_h264_frame* %0) #0 {
  %2 = alloca %struct.tw5864_h264_frame*, align 8
  %3 = alloca %struct.tw5864_input*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tw5864_h264_frame* %0, %struct.tw5864_h264_frame** %2, align 8
  %9 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %2, align 8
  %10 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %9, i32 0, i32 1
  %11 = load %struct.tw5864_input*, %struct.tw5864_input** %10, align 8
  store %struct.tw5864_input* %11, %struct.tw5864_input** %3, align 8
  %12 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %2, align 8
  %13 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %44, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @MD_CELLS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.tw5864_input*, %struct.tw5864_input** %3, align 8
  %23 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @tw5864_md_metric_from_mvd(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ugt i32 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %21
  store i32 1, i32* %6, align 4
  br label %39

39:                                               ; preds = %38, %21
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %47

43:                                               ; preds = %39
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %17

47:                                               ; preds = %42, %17
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @tw5864_md_metric_from_mvd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
