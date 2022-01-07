; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rx_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/extr_mwl8k.c_mwl8k_rx_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.mwl8k_priv* }
%struct.mwl8k_priv = type { i32, i64 }

@MWL8K_A2H_INT_RX_READY = common dso_local global i32 0, align 4
@MWL8K_HIU_A2H_INTERRUPT_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @mwl8k_rx_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwl8k_rx_poll(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.mwl8k_priv*, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %9, align 8
  store %struct.mwl8k_priv* %10, %struct.mwl8k_priv** %4, align 8
  store i32 32, i32* %5, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @rxq_process(%struct.ieee80211_hw* %11, i32 0, i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %5, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i64 @rxq_refill(%struct.ieee80211_hw* %18, i32 0, i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = sub nsw i64 %22, %20
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %1
  %28 = load i32, i32* @MWL8K_A2H_INT_RX_READY, align 4
  %29 = xor i32 %28, -1
  %30 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %31 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MWL8K_HIU_A2H_INTERRUPT_STATUS, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  br label %40

36:                                               ; preds = %1
  %37 = load %struct.mwl8k_priv*, %struct.mwl8k_priv** %4, align 8
  %38 = getelementptr inbounds %struct.mwl8k_priv, %struct.mwl8k_priv* %37, i32 0, i32 0
  %39 = call i32 @tasklet_schedule(i32* %38)
  br label %40

40:                                               ; preds = %36, %27
  ret void
}

declare dso_local i64 @rxq_process(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i64 @rxq_refill(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
