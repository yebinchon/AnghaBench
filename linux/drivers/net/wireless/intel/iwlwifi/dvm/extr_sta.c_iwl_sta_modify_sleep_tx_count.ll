; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_sta_modify_sleep_tx_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_sta.c_iwl_sta_modify_sleep_tx_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_addsta_cmd = type { i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@STA_MODIFY_SLEEP_TX_COUNT_MSK = common dso_local global i32 0, align 4
@STA_FLG_PWR_SAVE_MSK = common dso_local global i32 0, align 4
@STA_CONTROL_MODIFY_MSK = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_sta_modify_sleep_tx_count(%struct.iwl_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_addsta_cmd, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %7, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %15 = load i32, i32* @STA_MODIFY_SLEEP_TX_COUNT_MSK, align 4
  store i32 %15, i32* %14, align 4
  %16 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %7, i32 0, i32 2
  %17 = load i32, i32* @STA_FLG_PWR_SAVE_MSK, align 4
  store i32 %17, i32* %16, align 4
  %18 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %7, i32 0, i32 3
  %19 = load i32, i32* @STA_FLG_PWR_SAVE_MSK, align 4
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %7, i32 0, i32 4
  %21 = load i32, i32* @STA_CONTROL_MODIFY_MSK, align 4
  store i32 %21, i32* %20, align 4
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %23 = load i32, i32* @CMD_ASYNC, align 4
  %24 = call i32 @iwl_send_add_sta(%struct.iwl_priv* %22, %struct.iwl_addsta_cmd* %7, i32 %23)
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @iwl_send_add_sta(%struct.iwl_priv*, %struct.iwl_addsta_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
