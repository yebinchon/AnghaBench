; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_set_cto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_set_cto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, i32, i32 }

@TMOUT = common dso_local global i32 0, align 4
@CLKDIV = common dso_local global i32 0, align 4
@MSEC_PER_SEC = common dso_local global i64 0, align 8
@EVENT_CMD_COMPLETE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*)* @dw_mci_set_cto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_set_cto(%struct.dw_mci* %0) #0 {
  %2 = alloca %struct.dw_mci*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.dw_mci* %0, %struct.dw_mci** %2, align 8
  %7 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %8 = load i32, i32* @TMOUT, align 4
  %9 = call i32 @mci_readl(%struct.dw_mci* %7, i32 %8)
  %10 = and i32 %9, 255
  store i32 %10, i32* %3, align 4
  %11 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %12 = load i32, i32* @CLKDIV, align 4
  %13 = call i32 @mci_readl(%struct.dw_mci* %11, i32 %12)
  %14 = and i32 %13, 255
  %15 = mul nsw i32 %14, 2
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %19

19:                                               ; preds = %18, %1
  %20 = load i64, i64* @MSEC_PER_SEC, align 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = mul i32 %21, %22
  %24 = load i32, i32* %4, align 4
  %25 = mul i32 %23, %24
  %26 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %27 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @DIV_ROUND_UP_ULL(i32 %25, i32 %28)
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add i32 %30, 10
  store i32 %31, i32* %5, align 4
  %32 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %33 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %32, i32 0, i32 0
  %34 = load i64, i64* %6, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load i32, i32* @EVENT_CMD_COMPLETE, align 4
  %37 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %38 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %37, i32 0, i32 2
  %39 = call i32 @test_bit(i32 %36, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %19
  %42 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %43 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %42, i32 0, i32 1
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i64 @msecs_to_jiffies(i32 %45)
  %47 = add nsw i64 %44, %46
  %48 = add nsw i64 %47, 1
  %49 = call i32 @mod_timer(i32* %43, i64 %48)
  br label %50

50:                                               ; preds = %41, %19
  %51 = load %struct.dw_mci*, %struct.dw_mci** %2, align 8
  %52 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %51, i32 0, i32 0
  %53 = load i64, i64* %6, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  ret void
}

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @DIV_ROUND_UP_ULL(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
