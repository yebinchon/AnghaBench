; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_audio_unregister.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-alsa.c_cx23885_audio_unregister.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { %struct.cx23885_audio_dev* }
%struct.cx23885_audio_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cx23885_audio_unregister(%struct.cx23885_dev* %0) #0 {
  %2 = alloca %struct.cx23885_dev*, align 8
  %3 = alloca %struct.cx23885_audio_dev*, align 8
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %2, align 8
  %4 = load %struct.cx23885_dev*, %struct.cx23885_dev** %2, align 8
  %5 = getelementptr inbounds %struct.cx23885_dev, %struct.cx23885_dev* %4, i32 0, i32 0
  %6 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %5, align 8
  store %struct.cx23885_audio_dev* %6, %struct.cx23885_audio_dev** %3, align 8
  %7 = load %struct.cx23885_audio_dev*, %struct.cx23885_audio_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cx23885_audio_dev, %struct.cx23885_audio_dev* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @snd_card_free(i32 %9)
  ret void
}

declare dso_local i32 @snd_card_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
