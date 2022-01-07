; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_get_audio_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_get_audio_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tw28_get_audio_gain(%struct.solo_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.solo_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = sdiv i32 %7, 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = srem i32 %9, 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.solo_dev*, %struct.solo_dev** %3, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @TW286x_AUDIO_INPUT_GAIN_ADDR(i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @TW_AUDIO_INPUT_GAIN_ADDR(i32 %15)
  %17 = call i32 @tw_readbyte(%struct.solo_dev* %11, i32 %12, i32 %14, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = srem i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = ashr i32 %22, 4
  br label %27

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 15
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i32 [ %23, %21 ], [ %26, %24 ]
  ret i32 %28
}

declare dso_local i32 @tw_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW286x_AUDIO_INPUT_GAIN_ADDR(i32) #1

declare dso_local i32 @TW_AUDIO_INPUT_GAIN_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
