; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_write_ac97.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stk1160/extr_stk1160-ac97.c_stk1160_write_ac97.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk1160 = type { i32 }

@STK1160_AC97_ADDR = common dso_local global i64 0, align 8
@STK1160_AC97_CMD = common dso_local global i64 0, align 8
@STK1160_AC97CTL_0 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stk1160*, i32, i32)* @stk1160_write_ac97 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stk1160_write_ac97(%struct.stk1160* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.stk1160*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stk1160* %0, %struct.stk1160** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %8 = load i64, i64* @STK1160_AC97_ADDR, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @stk1160_write_reg(%struct.stk1160* %7, i64 %8, i32 %9)
  %11 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %12 = load i64, i64* @STK1160_AC97_CMD, align 8
  %13 = load i32, i32* %6, align 4
  %14 = and i32 %13, 255
  %15 = call i32 @stk1160_write_reg(%struct.stk1160* %11, i64 %12, i32 %14)
  %16 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %17 = load i64, i64* @STK1160_AC97_CMD, align 8
  %18 = add nsw i64 %17, 1
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, 65280
  %21 = ashr i32 %20, 8
  %22 = call i32 @stk1160_write_reg(%struct.stk1160* %16, i64 %18, i32 %21)
  %23 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %24 = load i64, i64* @STK1160_AC97CTL_0, align 8
  %25 = call i32 @stk1160_write_reg(%struct.stk1160* %23, i64 %24, i32 140)
  %26 = load %struct.stk1160*, %struct.stk1160** %4, align 8
  %27 = call i32 @stk1160_ac97_wait_transfer_complete(%struct.stk1160* %26)
  ret void
}

declare dso_local i32 @stk1160_write_reg(%struct.stk1160*, i64, i32) #1

declare dso_local i32 @stk1160_ac97_wait_transfer_complete(%struct.stk1160*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
