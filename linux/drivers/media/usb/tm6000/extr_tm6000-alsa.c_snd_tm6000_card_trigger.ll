; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_snd_tm6000_card_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_snd_tm6000_card_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_tm6000_card = type { %struct.tm6000_core* }
%struct.tm6000_core = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_tm6000_card_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_tm6000_card_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_tm6000_card*, align 8
  %6 = alloca %struct.tm6000_core*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_tm6000_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_tm6000_card* %9, %struct.snd_tm6000_card** %5, align 8
  %10 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %5, align 8
  %11 = getelementptr inbounds %struct.snd_tm6000_card, %struct.snd_tm6000_card* %10, i32 0, i32 0
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %11, align 8
  store %struct.tm6000_core* %12, %struct.tm6000_core** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %22 [
    i32 132, label %14
    i32 131, label %14
    i32 130, label %14
    i32 133, label %18
    i32 128, label %18
    i32 129, label %18
  ]

14:                                               ; preds = %2, %2, %2
  %15 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %16 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %15, i32 0, i32 1
  %17 = call i32 @atomic_set(i32* %16, i32 1)
  br label %25

18:                                               ; preds = %2, %2, %2
  %19 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %20 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %19, i32 0, i32 1
  %21 = call i32 @atomic_set(i32* %20, i32 0)
  br label %25

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %25

25:                                               ; preds = %22, %18, %14
  %26 = load %struct.tm6000_core*, %struct.tm6000_core** %6, align 8
  %27 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %26, i32 0, i32 0
  %28 = call i32 @schedule_work(i32* %27)
  %29 = load i32, i32* %7, align 4
  ret i32 %29
}

declare dso_local %struct.snd_tm6000_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
