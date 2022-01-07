; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_dev_txfifo_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_lib.c_iwlagn_dev_txfifo_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"flush request fail\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"wait transmit/flush all frames\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwlagn_dev_txfifo_flush(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %7 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ieee80211_stop_queues(i32 %8)
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %11 = call i64 @iwlagn_txfifo_flush(%struct.iwl_priv* %10, i32 0)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %15 = call i32 @IWL_ERR(%struct.iwl_priv* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %23

16:                                               ; preds = %1
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %18 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @iwl_trans_wait_tx_queues_empty(i32 %21, i32 -1)
  br label %23

23:                                               ; preds = %16, %13
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee80211_wake_queues(i32 %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 0
  %30 = call i32 @mutex_unlock(i32* %29)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ieee80211_stop_queues(i32) #1

declare dso_local i64 @iwlagn_txfifo_flush(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
