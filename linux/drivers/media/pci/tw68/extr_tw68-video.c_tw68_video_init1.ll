; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_init1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_video_init1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw68_dev = type { %struct.TYPE_2__, %struct.v4l2_ctrl_handler }
%struct.TYPE_2__ = type { %struct.v4l2_ctrl_handler* }
%struct.v4l2_ctrl_handler = type { i32 }

@tw68_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_BRIGHTNESS = common dso_local global i32 0, align 4
@V4L2_CID_CONTRAST = common dso_local global i32 0, align 4
@V4L2_CID_SATURATION = common dso_local global i32 0, align 4
@V4L2_CID_HUE = common dso_local global i32 0, align 4
@V4L2_CID_COLOR_KILLER = common dso_local global i32 0, align 4
@V4L2_CID_CHROMA_AGC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw68_video_init1(%struct.tw68_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tw68_dev*, align 8
  %4 = alloca %struct.v4l2_ctrl_handler*, align 8
  store %struct.tw68_dev* %0, %struct.tw68_dev** %3, align 8
  %5 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %6 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %5, i32 0, i32 1
  store %struct.v4l2_ctrl_handler* %6, %struct.v4l2_ctrl_handler** %4, align 8
  %7 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %8 = call i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler* %7, i32 6)
  %9 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %10 = load i32, i32* @V4L2_CID_BRIGHTNESS, align 4
  %11 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %9, i32* @tw68_ctrl_ops, i32 %10, i32 -128, i32 127, i32 1, i32 20)
  %12 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %13 = load i32, i32* @V4L2_CID_CONTRAST, align 4
  %14 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %12, i32* @tw68_ctrl_ops, i32 %13, i32 0, i32 255, i32 1, i32 100)
  %15 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %16 = load i32, i32* @V4L2_CID_SATURATION, align 4
  %17 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %15, i32* @tw68_ctrl_ops, i32 %16, i32 0, i32 255, i32 1, i32 128)
  %18 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %19 = load i32, i32* @V4L2_CID_HUE, align 4
  %20 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %18, i32* @tw68_ctrl_ops, i32 %19, i32 -128, i32 127, i32 1, i32 0)
  %21 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %22 = load i32, i32* @V4L2_CID_COLOR_KILLER, align 4
  %23 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %21, i32* @tw68_ctrl_ops, i32 %22, i32 0, i32 1, i32 1, i32 0)
  %24 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %25 = load i32, i32* @V4L2_CID_CHROMA_AGC, align 4
  %26 = call i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler* %24, i32* @tw68_ctrl_ops, i32 %25, i32 0, i32 1, i32 1, i32 1)
  %27 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %33 = call i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler* %32)
  %34 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %35 = getelementptr inbounds %struct.v4l2_ctrl_handler, %struct.v4l2_ctrl_handler* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %2, align 4
  br label %44

37:                                               ; preds = %1
  %38 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %39 = load %struct.tw68_dev*, %struct.tw68_dev** %3, align 8
  %40 = getelementptr inbounds %struct.tw68_dev, %struct.tw68_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  store %struct.v4l2_ctrl_handler* %38, %struct.v4l2_ctrl_handler** %41, align 8
  %42 = load %struct.v4l2_ctrl_handler*, %struct.v4l2_ctrl_handler** %4, align 8
  %43 = call i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler* %42)
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %37, %31
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.v4l2_ctrl_handler*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.v4l2_ctrl_handler*, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @v4l2_ctrl_handler_free(%struct.v4l2_ctrl_handler*) #1

declare dso_local i32 @v4l2_ctrl_handler_setup(%struct.v4l2_ctrl_handler*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
