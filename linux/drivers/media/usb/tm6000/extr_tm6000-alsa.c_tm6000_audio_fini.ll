; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_tm6000_audio_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_tm6000_audio_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tm6000_core = type { %struct.snd_tm6000_card* }
%struct.snd_tm6000_card = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_audio_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_audio_fini(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca %struct.snd_tm6000_card*, align 8
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  %5 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %6 = icmp ne %struct.tm6000_core* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %10 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %9, i32 0, i32 0
  %11 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %10, align 8
  store %struct.snd_tm6000_card* %11, %struct.snd_tm6000_card** %4, align 8
  %12 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %4, align 8
  %13 = icmp ne %struct.snd_tm6000_card* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %32

15:                                               ; preds = %8
  %16 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %4, align 8
  %17 = getelementptr inbounds %struct.snd_tm6000_card, %struct.snd_tm6000_card* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %32

21:                                               ; preds = %15
  %22 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %4, align 8
  %23 = getelementptr inbounds %struct.snd_tm6000_card, %struct.snd_tm6000_card* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @snd_card_free(i32* %24)
  %26 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %4, align 8
  %27 = getelementptr inbounds %struct.snd_tm6000_card, %struct.snd_tm6000_card* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  %28 = load %struct.snd_tm6000_card*, %struct.snd_tm6000_card** %4, align 8
  %29 = call i32 @kfree(%struct.snd_tm6000_card* %28)
  %30 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %31 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %30, i32 0, i32 0
  store %struct.snd_tm6000_card* null, %struct.snd_tm6000_card** %31, align 8
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %21, %20, %14, %7
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @snd_card_free(i32*) #1

declare dso_local i32 @kfree(%struct.snd_tm6000_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
