; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_balance.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-audio.c_set_balance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx18*, i32)* @set_balance to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_balance(%struct.cx18* %0, i32 %1) #0 {
  %3 = alloca %struct.cx18*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx18* %0, %struct.cx18** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = ashr i32 %6, 8
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp sgt i32 %8, 128
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.cx18*, %struct.cx18** %3, align 8
  %12 = call i32 @cx18_av_and_or(%struct.cx18* %11, i32 2261, i32 127, i32 128)
  %13 = load %struct.cx18*, %struct.cx18** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 127
  %16 = call i32 @cx18_av_and_or(%struct.cx18* %13, i32 2261, i32 -128, i32 %15)
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.cx18*, %struct.cx18** %3, align 8
  %19 = call i32 @cx18_av_and_or(%struct.cx18* %18, i32 2261, i32 127, i32 0)
  %20 = load %struct.cx18*, %struct.cx18** %3, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sub nsw i32 128, %21
  %23 = call i32 @cx18_av_and_or(%struct.cx18* %20, i32 2261, i32 -128, i32 %22)
  br label %24

24:                                               ; preds = %17, %10
  ret void
}

declare dso_local i32 @cx18_av_and_or(%struct.cx18*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
