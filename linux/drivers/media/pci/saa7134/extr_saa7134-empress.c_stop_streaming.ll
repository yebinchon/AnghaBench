; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_stop_streaming.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-empress.c_stop_streaming.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { %struct.saa7134_dmaqueue* }
%struct.saa7134_dmaqueue = type { %struct.saa7134_dev* }
%struct.saa7134_dev = type { i64 }

@SAA7134_SPECIAL_MODE = common dso_local global i32 0, align 4
@SAA7134_AUDIO_MUTE_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vb2_queue*)* @stop_streaming to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stop_streaming(%struct.vb2_queue* %0) #0 {
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
  %11 = load %struct.vb2_queue*, %struct.vb2_queue** %2, align 8
  %12 = call i32 @saa7134_ts_stop_streaming(%struct.vb2_queue* %11)
  %13 = load i32, i32* @SAA7134_SPECIAL_MODE, align 4
  %14 = call i32 @saa_writeb(i32 %13, i32 0)
  %15 = call i32 @msleep(i32 20)
  %16 = load i32, i32* @SAA7134_SPECIAL_MODE, align 4
  %17 = call i32 @saa_writeb(i32 %16, i32 1)
  %18 = call i32 @msleep(i32 100)
  %19 = load i32, i32* @SAA7134_AUDIO_MUTE_CTRL, align 4
  %20 = load i32, i32* @SAA7134_AUDIO_MUTE_CTRL, align 4
  %21 = call i32 @saa_readb(i32 %20)
  %22 = or i32 %21, 64
  %23 = call i32 @saa_writeb(i32 %19, i32 %22)
  %24 = load %struct.saa7134_dev*, %struct.saa7134_dev** %4, align 8
  %25 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  ret void
}

declare dso_local i32 @saa7134_ts_stop_streaming(%struct.vb2_queue*) #1

declare dso_local i32 @saa_writeb(i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @saa_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
