; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_vb2_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_vb2_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i32, %struct.saa7134_dmaqueue, i32, %struct.saa7134_dmaqueue }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @saa7134_vb2_stop_streaming(%struct.vb2_queue* %0) #0 {
  %2 = alloca %struct.vb2_queue*, align 8
  %3 = alloca %struct.saa7134_dmaqueue*, align 8
  %4 = alloca %struct.saa7134_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %2, align 8
  %5 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %6 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %5, i32 0, i32 0
  %7 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %6, align 8
  store %struct.saa7134_dmaqueue* %7, %struct.saa7134_dmaqueue** %3, align 8
  %8 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %9 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %8, i32 0, i32 0
  %10 = load %struct.saa7134_dev*, %struct.saa7134_dev** %9, align 8
  store %struct.saa7134_dev* %10, %struct.saa7134_dev** %4, align 8
  %11 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %12 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %13 = call i32 @saa7134_stop_streaming(%struct.saa7134_dev* %11, %struct.saa7134_dmaqueue* %12)
  %14 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %16 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %15, i32 0, i32 4
  %17 = icmp eq %struct.saa7134_dmaqueue* %14, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %20 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %19, i32 0, i32 3
  %21 = call i32 @vb2_is_streaming(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %18, %1
  %24 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %3, align 8
  %25 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %26 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %25, i32 0, i32 2
  %27 = icmp eq %struct.saa7134_dmaqueue* %24, %26
  br i1 %27, label %28, label %37

28:                                               ; preds = %23
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 1
  %31 = call i32 @vb2_is_streaming(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %28, %18
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 0
  %36 = call i32 @pm_qos_remove_request(i32* %35)
  br label %37

37:                                               ; preds = %33, %28, %23
  ret void
}

declare dso_local i32 @saa7134_stop_streaming(%struct.saa7134_dev*, %struct.saa7134_dmaqueue*) #1

declare dso_local i32 @vb2_is_streaming(i32*) #1

declare dso_local i32 @pm_qos_remove_request(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
