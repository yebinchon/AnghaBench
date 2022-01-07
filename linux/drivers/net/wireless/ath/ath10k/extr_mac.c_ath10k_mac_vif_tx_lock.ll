; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_tx_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_mac.c_ath10k_mac_vif_tx_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k_vif = type { i32, i32, %struct.ath10k* }
%struct.ath10k = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@BITS_PER_LONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ath10k_mac_vif_tx_lock(%struct.ath10k_vif* %0, i32 %1) #0 {
  %3 = alloca %struct.ath10k_vif*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ath10k*, align 8
  store %struct.ath10k_vif* %0, %struct.ath10k_vif** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %7 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %6, i32 0, i32 2
  %8 = load %struct.ath10k*, %struct.ath10k** %7, align 8
  store %struct.ath10k* %8, %struct.ath10k** %5, align 8
  %9 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @BITS_PER_LONG, align 4
  %15 = icmp sge i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @WARN_ON(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @BIT(i32 %18)
  %20 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %21 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load %struct.ath10k*, %struct.ath10k** %5, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ath10k_vif*, %struct.ath10k_vif** %3, align 8
  %28 = getelementptr inbounds %struct.ath10k_vif, %struct.ath10k_vif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ieee80211_stop_queue(i32 %26, i32 %29)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @ieee80211_stop_queue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
