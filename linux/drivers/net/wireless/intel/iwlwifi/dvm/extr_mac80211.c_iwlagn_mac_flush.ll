; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_mac80211.c_iwlagn_mac_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_priv = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@STATUS_EXIT_PENDING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Aborting flush due to device shutdown\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"Aborting flush due to RF Kill\0A\00", align 1
@IWL_IPAN_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@IWL_DEFAULT_CMD_QUEUE_NUM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Flushing SCD queues: 0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"flush request fail\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"wait transmit/flush all frames\0A\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"leave\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32, i32)* @iwlagn_mac_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_mac_flush(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.iwl_priv*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %12 = call %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw* %11)
  store %struct.iwl_priv* %12, %struct.iwl_priv** %9, align 8
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %17 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @STATUS_EXIT_PENDING, align 4
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 2
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %4
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %25 = call i32 @IWL_DEBUG_TX(%struct.iwl_priv* %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %75

26:                                               ; preds = %4
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %28 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %32 = call i32 @IWL_DEBUG_TX(%struct.iwl_priv* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %75

33:                                               ; preds = %26
  %34 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %35 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %34, i32 0, i32 1
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = sub nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* @IWL_IPAN_CMD_QUEUE_NUM, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = load i32, i32* @IWL_DEFAULT_CMD_QUEUE_NUM, align 4
  %48 = call i32 @BIT(i32 %47)
  %49 = or i32 %46, %48
  %50 = xor i32 %49, -1
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %33
  %56 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %57 = load i32, i32* %10, align 4
  %58 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %56, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %57)
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @iwlagn_txfifo_flush(%struct.iwl_priv* %59, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %65 = call i32 @IWL_ERR(%struct.iwl_priv* %64, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  br label %75

66:                                               ; preds = %55
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %69 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv* %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %70 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %71 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %70, i32 0, i32 1
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = load i32, i32* %10, align 4
  %74 = call i32 @iwl_trans_wait_tx_queues_empty(%struct.TYPE_6__* %72, i32 %73)
  br label %75

75:                                               ; preds = %67, %63, %30, %23
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %77 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load %struct.iwl_priv*, %struct.iwl_priv** %9, align 8
  %80 = call i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv* %79, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  ret void
}

declare dso_local %struct.iwl_priv* @IWL_MAC80211_GET_DVM(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @IWL_DEBUG_MAC80211(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_TX(%struct.iwl_priv*, i8*) #1

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @IWL_DEBUG_TX_QUEUES(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i64 @iwlagn_txfifo_flush(%struct.iwl_priv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_trans_wait_tx_queues_empty(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
