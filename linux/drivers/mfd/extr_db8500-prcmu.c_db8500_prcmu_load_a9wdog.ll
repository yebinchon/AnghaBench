; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_load_a9wdog.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_db8500_prcmu_load_a9wdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MB4H_A9WDOG_LOAD = common dso_local global i32 0, align 4
@A9WDOG_ID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @db8500_prcmu_load_a9wdog(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @MB4H_A9WDOG_LOAD, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @A9WDOG_ID_MASK, align 4
  %8 = and i32 %6, %7
  %9 = load i32, i32* %4, align 4
  %10 = shl i32 %9, 4
  %11 = and i32 %10, 240
  %12 = or i32 %8, %11
  %13 = load i32, i32* %4, align 4
  %14 = ashr i32 %13, 4
  %15 = and i32 %14, 255
  %16 = load i32, i32* %4, align 4
  %17 = ashr i32 %16, 12
  %18 = and i32 %17, 255
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 20
  %21 = and i32 %20, 255
  %22 = call i32 @prcmu_a9wdog(i32 %5, i32 %12, i32 %15, i32 %18, i32 %21)
  ret i32 %22
}

declare dso_local i32 @prcmu_a9wdog(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
