; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-video.c_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.em28xx = type { %struct.em28xx_v4l2* }
%struct.em28xx_v4l2 = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.em28xx*, align 8
  %13 = alloca %struct.em28xx_v4l2*, align 8
  %14 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %15 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %16 = call %struct.em28xx* @vb2_get_drv_priv(%struct.vb2_queue* %15)
  store %struct.em28xx* %16, %struct.em28xx** %12, align 8
  %17 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  %18 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %17, i32 0, i32 0
  %19 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %18, align 8
  store %struct.em28xx_v4l2* %19, %struct.em28xx_v4l2** %13, align 8
  %20 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  %21 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  %24 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %22, %25
  %27 = load %struct.em28xx_v4l2*, %struct.em28xx_v4l2** %13, align 8
  %28 = getelementptr inbounds %struct.em28xx_v4l2, %struct.em28xx_v4l2* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %26, %31
  %33 = add nsw i32 %32, 7
  %34 = ashr i32 %33, 3
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %5
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = zext i32 %42 to i64
  %44 = load i64, i64* %14, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  br label %50

49:                                               ; preds = %39
  br label %50

50:                                               ; preds = %49, %46
  %51 = phi i32 [ %48, %46 ], [ 0, %49 ]
  store i32 %51, i32* %6, align 4
  br label %60

52:                                               ; preds = %5
  %53 = load i32*, i32** %9, align 8
  store i32 1, i32* %53, align 4
  %54 = load i64, i64* %14, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i32*, i32** %10, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.em28xx*, %struct.em28xx** %12, align 8
  %59 = call i32 @em28xx_enable_analog_tuner(%struct.em28xx* %58)
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %52, %50
  %61 = load i32, i32* %6, align 4
  ret i32 %61
}

declare dso_local %struct.em28xx* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @em28xx_enable_analog_tuner(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
