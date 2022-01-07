; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54spi.c_p54spi_op_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54s_priv* }
%struct.p54s_priv = type { i64, i32, i32, i32, i32 }

@FW_STATE_READY = common dso_local global i64 0, align 8
@FW_STATE_OFF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @p54spi_op_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54spi_op_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54s_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.p54s_priv*, %struct.p54s_priv** %6, align 8
  store %struct.p54s_priv* %7, %struct.p54s_priv** %3, align 8
  %8 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %9 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %8, i32 0, i32 2
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %12 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @FW_STATE_READY, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %19 = call i32 @p54spi_power_off(%struct.p54s_priv* %18)
  %20 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %21 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %20, i32 0, i32 3
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %25 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %24, i32 0, i32 4
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %28 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %27, i32 0, i32 3
  %29 = load i64, i64* %4, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load i64, i64* @FW_STATE_OFF, align 8
  %32 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %33 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %35 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %34, i32 0, i32 2
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.p54s_priv*, %struct.p54s_priv** %3, align 8
  %38 = getelementptr inbounds %struct.p54s_priv, %struct.p54s_priv* %37, i32 0, i32 1
  %39 = call i32 @cancel_work_sync(i32* %38)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @p54spi_power_off(%struct.p54s_priv*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
