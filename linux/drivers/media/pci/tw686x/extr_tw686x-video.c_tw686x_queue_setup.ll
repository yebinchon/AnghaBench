; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.tw686x_video_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @tw686x_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tw686x_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.tw686x_video_channel*, align 8
  %13 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.tw686x_video_channel* %15, %struct.tw686x_video_channel** %12, align 8
  %16 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %12, align 8
  %17 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %12, align 8
  %20 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %18, %21
  %23 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %12, align 8
  %24 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %22, %27
  %29 = ashr i32 %28, 3
  store i32 %29, i32* %13, align 4
  %30 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %31 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = load i32, i32* %33, align 4
  %35 = add i32 %32, %34
  %36 = icmp ult i32 %35, 3
  br i1 %36, label %37, label %43

37:                                               ; preds = %5
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub i32 3, %40
  %42 = load i32*, i32** %8, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %37, %5
  %44 = load i32*, i32** %9, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 1
  br i1 %50, label %57, label %51

51:                                               ; preds = %47
  %52 = load i32*, i32** %10, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51, %47
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %6, align 4
  br label %66

60:                                               ; preds = %51
  store i32 0, i32* %6, align 4
  br label %66

61:                                               ; preds = %43
  %62 = load i32, i32* %13, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %9, align 8
  store i32 1, i32* %65, align 4
  store i32 0, i32* %6, align 4
  br label %66

66:                                               ; preds = %61, %60, %57
  %67 = load i32, i32* %6, align 4
  ret i32 %67
}

declare dso_local %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
