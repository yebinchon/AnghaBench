; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_start_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_start_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i32, i32 }

@core = common dso_local global i32 0, align 4
@init = common dso_local global i32 0, align 4
@SAA7134_AUDIO_MUTE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32)* @start_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @start_streaming(%struct.vb2_queue* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vb2_queue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.saa7134_dmaqueue*, align 8
  %7 = alloca %struct.saa7134_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.vb2_queue* %0, %struct.vb2_queue** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %11 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %10, i32 0, i32 0
  %12 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %11, align 8
  store %struct.saa7134_dmaqueue* %12, %struct.saa7134_dmaqueue** %6, align 8
  %13 = load %struct.saa7134_dmaqueue*, %struct.saa7134_dmaqueue** %6, align 8
  %14 = getelementptr inbounds %struct.saa7134_dmaqueue, %struct.saa7134_dmaqueue* %13, i32 0, i32 0
  %15 = load %struct.saa7134_dev*, %struct.saa7134_dev** %14, align 8
  store %struct.saa7134_dev* %15, %struct.saa7134_dev** %7, align 8
  store i32 0, i32* %8, align 4
  %16 = load %struct.vb2_queue*, %struct.vb2_queue** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @saa7134_ts_start_streaming(%struct.vb2_queue* %16, i32 %17)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %9, align 4
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %2
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %28 [
    i32 130, label %27
    i32 129, label %27
    i32 128, label %27
  ]

27:                                               ; preds = %23, %23, %23
  store i32 1, i32* %8, align 4
  br label %28

28:                                               ; preds = %23, %27
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %30 = load i32, i32* @core, align 4
  %31 = load i32, i32* @init, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @saa_call_all(%struct.saa7134_dev* %29, i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @SAA7134_AUDIO_MUTE_CTRL, align 4
  %35 = load i32, i32* @SAA7134_AUDIO_MUTE_CTRL, align 4
  %36 = call i32 @saa_readb(i32 %35)
  %37 = and i32 %36, -65
  %38 = call i32 @saa_writeb(i32 %34, i32 %37)
  %39 = load %struct.saa7134_dev*, %struct.saa7134_dev** %7, align 8
  %40 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %39, i32 0, i32 1
  store i32 1, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %28, %21
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @saa7134_ts_start_streaming(%struct.vb2_queue*, i32) #1

declare dso_local i32 @saa_call_all(%struct.saa7134_dev*, i32, i32, i32) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
