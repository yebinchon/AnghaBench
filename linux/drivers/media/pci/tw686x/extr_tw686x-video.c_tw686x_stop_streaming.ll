; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw686x/extr_tw686x-video.c_tw686x_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.tw686x_video_channel = type { i32, i32, %struct.tw686x_dev* }
%struct.tw686x_dev = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@VB2_BUF_STATE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @tw686x_stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw686x_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.tw686x_video_channel*, align 8
  %4 = alloca %struct.tw686x_dev*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %7 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %8 = call %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue* %7)
  store %struct.tw686x_video_channel* %8, %struct.tw686x_video_channel** %3, align 8
  %9 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %10 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %9, i32 0, i32 2
  %11 = load %struct.tw686x_dev*, %struct.tw686x_dev** %10, align 8
  store %struct.tw686x_dev* %11, %struct.tw686x_dev** %4, align 8
  %12 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %13 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %17 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %16, i32 0, i32 1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %17, align 8
  store %struct.pci_dev* %18, %struct.pci_dev** %5, align 8
  %19 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %20 = getelementptr inbounds %struct.tw686x_dev, %struct.tw686x_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32* %20, i64 %21)
  %23 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %24 = icmp ne %struct.pci_dev* %23, null
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.tw686x_dev*, %struct.tw686x_dev** %4, align 8
  %27 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %28 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @tw686x_disable_channel(%struct.tw686x_dev* %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %1
  %32 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %33 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %37 = load i32, i32* @VB2_BUF_STATE_ERROR, align 4
  %38 = call i32 @tw686x_clear_queue(%struct.tw686x_video_channel* %36, i32 %37)
  %39 = load %struct.tw686x_video_channel*, %struct.tw686x_video_channel** %3, align 8
  %40 = getelementptr inbounds %struct.tw686x_video_channel, %struct.tw686x_video_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %6, align 8
  %42 = call i32 @spin_unlock_irqrestore(i32* %40, i64 %41)
  ret void
}

declare dso_local %struct.tw686x_video_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tw686x_disable_channel(%struct.tw686x_dev*, i32) #1

declare dso_local i32 @tw686x_clear_queue(%struct.tw686x_video_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
