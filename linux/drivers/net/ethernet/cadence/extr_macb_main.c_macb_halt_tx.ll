; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_halt_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_main.c_macb_halt_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macb = type { i32 }

@NCR = common dso_local global i32 0, align 4
@THALT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MACB_HALT_TIMEOUT = common dso_local global i32 0, align 4
@TSR = common dso_local global i32 0, align 4
@TGO = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macb*)* @macb_halt_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @macb_halt_tx(%struct.macb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.macb*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.macb* %0, %struct.macb** %3, align 8
  %7 = load %struct.macb*, %struct.macb** %3, align 8
  %8 = load i32, i32* @NCR, align 4
  %9 = load %struct.macb*, %struct.macb** %3, align 8
  %10 = load i32, i32* @NCR, align 4
  %11 = call i32 @macb_readl(%struct.macb* %9, i32 %10)
  %12 = load i32, i32* @THALT, align 4
  %13 = call i32 @MACB_BIT(i32 %12)
  %14 = or i32 %11, %13
  %15 = call i32 @macb_writel(%struct.macb* %7, i32 %8, i32 %14)
  %16 = load i64, i64* @jiffies, align 8
  %17 = load i32, i32* @MACB_HALT_TIMEOUT, align 4
  %18 = call i64 @usecs_to_jiffies(i32 %17)
  %19 = add i64 %16, %18
  store i64 %19, i64* %5, align 8
  br label %20

20:                                               ; preds = %33, %1
  %21 = load i64, i64* @jiffies, align 8
  store i64 %21, i64* %4, align 8
  %22 = load %struct.macb*, %struct.macb** %3, align 8
  %23 = load i32, i32* @TSR, align 4
  %24 = call i32 @macb_readl(%struct.macb* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @TGO, align 4
  %27 = call i32 @MACB_BIT(i32 %26)
  %28 = and i32 %25, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %41

31:                                               ; preds = %20
  %32 = call i32 @udelay(i32 250)
  br label %33

33:                                               ; preds = %31
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @time_before(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %20, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %38, %30
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @macb_writel(%struct.macb*, i32, i32) #1

declare dso_local i32 @macb_readl(%struct.macb*, i32) #1

declare dso_local i32 @MACB_BIT(i32) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
