; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_stats_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bnad.c_bnad_stats_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnad = type { i32, i32, i32 }

@BNAD_RF_STATS_TIMER_RUNNING = common dso_local global i32 0, align 4
@bnad_stats_timeout = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BNAD_STATS_TIMER_FREQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnad*)* @bnad_stats_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnad_stats_timer_start(%struct.bnad* %0) #0 {
  %2 = alloca %struct.bnad*, align 8
  %3 = alloca i64, align 8
  store %struct.bnad* %0, %struct.bnad** %2, align 8
  %4 = load %struct.bnad*, %struct.bnad** %2, align 8
  %5 = getelementptr inbounds %struct.bnad, %struct.bnad* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load i32, i32* @BNAD_RF_STATS_TIMER_RUNNING, align 4
  %9 = load %struct.bnad*, %struct.bnad** %2, align 8
  %10 = getelementptr inbounds %struct.bnad, %struct.bnad* %9, i32 0, i32 2
  %11 = call i32 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %25, label %13

13:                                               ; preds = %1
  %14 = load %struct.bnad*, %struct.bnad** %2, align 8
  %15 = getelementptr inbounds %struct.bnad, %struct.bnad* %14, i32 0, i32 1
  %16 = load i32, i32* @bnad_stats_timeout, align 4
  %17 = call i32 @timer_setup(i32* %15, i32 %16, i32 0)
  %18 = load %struct.bnad*, %struct.bnad** %2, align 8
  %19 = getelementptr inbounds %struct.bnad, %struct.bnad* %18, i32 0, i32 1
  %20 = load i64, i64* @jiffies, align 8
  %21 = load i32, i32* @BNAD_STATS_TIMER_FREQ, align 4
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  %23 = add nsw i64 %20, %22
  %24 = call i32 @mod_timer(i32* %19, i64 %23)
  br label %25

25:                                               ; preds = %13, %1
  %26 = load %struct.bnad*, %struct.bnad** %2, align 8
  %27 = getelementptr inbounds %struct.bnad, %struct.bnad* %26, i32 0, i32 0
  %28 = load i64, i64* %3, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
