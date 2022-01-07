; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_pb_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cobalt/extr_cobalt-alsa-pcm.c_snd_cobalt_pcm_pb_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_cobalt_card = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_cobalt_pcm_pb_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cobalt_pcm_pb_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_cobalt_card*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_cobalt_card* %8, %struct.snd_cobalt_card** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %24 [
    i32 129, label %10
    i32 128, label %21
  ]

10:                                               ; preds = %2
  %11 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %12 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* @EBUSY, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %27

18:                                               ; preds = %10
  %19 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %20 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %19, i32 0, i32 0
  store i32 1, i32* %20, align 4
  store i32 0, i32* %3, align 4
  br label %27

21:                                               ; preds = %2
  %22 = load %struct.snd_cobalt_card*, %struct.snd_cobalt_card** %6, align 8
  %23 = getelementptr inbounds %struct.snd_cobalt_card, %struct.snd_cobalt_card* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 0, i32* %3, align 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %24, %21, %18, %15
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.snd_cobalt_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
