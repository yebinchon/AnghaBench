; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_td3116_muxsel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/bt8xx/extr_bttv-cards.c_td3116_muxsel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, i32)* @td3116_muxsel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @td3116_muxsel(%struct.bttv* %0, i32 %1) #0 {
  %3 = alloca %struct.bttv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bttv* %0, %struct.bttv** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 8
  %9 = lshr i32 %8, 3
  store i32 %9, i32* %6, align 4
  store i32 17, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = and i32 %10, 7
  %12 = shl i32 %11, 1
  %13 = load i32, i32* %6, align 4
  %14 = mul nsw i32 4, %13
  %15 = shl i32 %12, %14
  %16 = load i32, i32* %5, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load %struct.bttv*, %struct.bttv** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @td3116_latch_value(%struct.bttv* %18, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %21, -18
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = xor i32 %23, 1
  %25 = shl i32 %24, 4
  %26 = load i32, i32* %6, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.bttv*, %struct.bttv** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @td3116_latch_value(%struct.bttv* %30, i32 %31)
  ret void
}

declare dso_local i32 @td3116_latch_value(%struct.bttv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
