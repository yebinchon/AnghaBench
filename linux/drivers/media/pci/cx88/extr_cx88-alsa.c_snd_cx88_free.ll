; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-alsa.c_snd_cx88_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx88_audio_dev = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx88_audio_dev*)* @snd_cx88_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx88_free(%struct.cx88_audio_dev* %0) #0 {
  %2 = alloca %struct.cx88_audio_dev*, align 8
  store %struct.cx88_audio_dev* %0, %struct.cx88_audio_dev** %2, align 8
  %3 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %4 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp sge i64 %5, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %9 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %12 = call i32 @free_irq(i64 %10, %struct.cx88_audio_dev* %11)
  br label %13

13:                                               ; preds = %7, %1
  %14 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %15 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %18 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @cx88_core_put(i32 %16, i32 %19)
  %21 = load %struct.cx88_audio_dev*, %struct.cx88_audio_dev** %2, align 8
  %22 = getelementptr inbounds %struct.cx88_audio_dev, %struct.cx88_audio_dev* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @pci_disable_device(i32 %23)
  ret i32 0
}

declare dso_local i32 @free_irq(i64, %struct.cx88_audio_dev*) #1

declare dso_local i32 @cx88_core_put(i32, i32) #1

declare dso_local i32 @pci_disable_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
