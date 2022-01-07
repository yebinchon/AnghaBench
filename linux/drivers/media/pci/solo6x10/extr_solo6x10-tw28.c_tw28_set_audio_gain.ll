; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_set_audio_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-tw28.c_tw28_set_audio_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.solo_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw28_set_audio_gain(%struct.solo_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.solo_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.solo_dev* %0, %struct.solo_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  %10 = sdiv i32 %9, 4
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 4
  store i32 %12, i32* %5, align 4
  %13 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TW286x_AUDIO_INPUT_GAIN_ADDR(i32 %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @TW_AUDIO_INPUT_GAIN_ADDR(i32 %17)
  %19 = call i32 @tw_readbyte(%struct.solo_dev* %13, i32 %14, i32 %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = srem i32 %21, 2
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 15, i32 240
  %26 = and i32 %20, %25
  %27 = load i32, i32* %5, align 4
  %28 = srem i32 %27, 2
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %3
  %31 = load i32, i32* %6, align 4
  %32 = shl i32 %31, 4
  br label %35

33:                                               ; preds = %3
  %34 = load i32, i32* %6, align 4
  br label %35

35:                                               ; preds = %33, %30
  %36 = phi i32 [ %32, %30 ], [ %34, %33 ]
  %37 = or i32 %26, %36
  store i32 %37, i32* %6, align 4
  %38 = load %struct.solo_dev*, %struct.solo_dev** %4, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @TW286x_AUDIO_INPUT_GAIN_ADDR(i32 %40)
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @TW_AUDIO_INPUT_GAIN_ADDR(i32 %42)
  %44 = load i32, i32* %6, align 4
  %45 = call i32 @tw_writebyte(%struct.solo_dev* %38, i32 %39, i32 %41, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @tw_readbyte(%struct.solo_dev*, i32, i32, i32) #1

declare dso_local i32 @TW286x_AUDIO_INPUT_GAIN_ADDR(i32) #1

declare dso_local i32 @TW_AUDIO_INPUT_GAIN_ADDR(i32) #1

declare dso_local i32 @tw_writebyte(%struct.solo_dev*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
