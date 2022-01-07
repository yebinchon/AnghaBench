; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_send_bt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_send_bt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.iwl_priv = type { i64 }
%struct.iwl_bt_cmd = type { i64, i32, i32, i32, i32 }

@BT_MAX_KILL_DEF = common dso_local global i32 0, align 4
@BT_LEAD_TIME_DEF = common dso_local global i32 0, align 4
@iwlwifi_mod_params = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@BT_COEX_DISABLE = common dso_local global i64 0, align 8
@BT_COEX_ENABLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"BT coex %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"active\00", align 1
@REPLY_BT_CONFIG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to send BT Coex Config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_send_bt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_send_bt_config(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  %3 = alloca %struct.iwl_bt_cmd, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %4 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 0
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 1
  store i32 0, i32* %5, align 8
  %6 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 2
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 3
  %8 = load i32, i32* @BT_MAX_KILL_DEF, align 4
  store i32 %8, i32* %7, align 8
  %9 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 4
  %10 = load i32, i32* @BT_LEAD_TIME_DEF, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @iwlwifi_mod_params, i32 0, i32 0), align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i64, i64* @BT_COEX_DISABLE, align 8
  %15 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 0
  store i64 %14, i64* %15, align 8
  br label %19

16:                                               ; preds = %1
  %17 = load i64, i64* @BT_COEX_ENABLE, align 8
  %18 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 0
  store i64 %17, i64* %18, align 8
  br label %19

19:                                               ; preds = %16, %13
  %20 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %23 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %25 = getelementptr inbounds %struct.iwl_bt_cmd, %struct.iwl_bt_cmd* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @BT_COEX_DISABLE, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %31 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %24, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %30)
  %32 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %33 = load i32, i32* @REPLY_BT_CONFIG, align 4
  %34 = call i64 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv* %32, i32 %33, i32 0, i32 24, %struct.iwl_bt_cmd* %3)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %38 = call i32 @IWL_ERR(%struct.iwl_priv* %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %19
  ret void
}

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, i8*) #1

declare dso_local i64 @iwl_dvm_send_cmd_pdu(%struct.iwl_priv*, i32, i32, i32, %struct.iwl_bt_cmd*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
