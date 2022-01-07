; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_sf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sf.c_iwl_mvm_sf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_sf_cfg_cmd = type { i32 }
%struct.ieee80211_sta = type { i32 }

@SF_CFG_DUMMY_NOTIF_OFF = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"No station: Cannot switch SF to FULL_ON\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid station id\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Invalid state: %d. not sending Smart Fifo cmd\0A\00", align 1
@REPLY_SF_CFG_CMD = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, i64, i32)* @iwl_mvm_sf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_sf_config(%struct.iwl_mvm* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_sf_cfg_cmd, align 4
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.iwl_sf_cfg_cmd, %struct.iwl_sf_cfg_cmd* %8, i32 0, i32 0
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @cpu_to_le32(i32 %12)
  store i32 %13, i32* %11, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %15 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %3
  %21 = load i32, i32* @SF_CFG_DUMMY_NOTIF_OFF, align 4
  %22 = call i32 @cpu_to_le32(i32 %21)
  %23 = getelementptr inbounds %struct.iwl_sf_cfg_cmd, %struct.iwl_sf_cfg_cmd* %8, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, %22
  store i32 %25, i32* %23, align 4
  br label %26

26:                                               ; preds = %20, %3
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 130
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %94

36:                                               ; preds = %29, %26
  %37 = load i32, i32* %7, align 4
  switch i32 %37, label %76 [
    i32 128, label %38
    i32 130, label %41
    i32 129, label %73
  ]

38:                                               ; preds = %36
  %39 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %40 = call i32 @iwl_mvm_fill_sf_command(%struct.iwl_mvm* %39, %struct.iwl_sf_cfg_cmd* %8, %struct.ieee80211_sta* null)
  br label %81

41:                                               ; preds = %36
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* @IWL_MVM_INVALID_STA, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %47 = call i32 @IWL_ERR(%struct.iwl_mvm* %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %94

50:                                               ; preds = %41
  %51 = call i32 (...) @rcu_read_lock()
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32, i32* %54, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.ieee80211_sta* @rcu_dereference(i32 %57)
  store %struct.ieee80211_sta* %58, %struct.ieee80211_sta** %9, align 8
  %59 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %60 = call i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %50
  %63 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %64 = call i32 @IWL_ERR(%struct.iwl_mvm* %63, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %65 = call i32 (...) @rcu_read_unlock()
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %94

68:                                               ; preds = %50
  %69 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %70 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %71 = call i32 @iwl_mvm_fill_sf_command(%struct.iwl_mvm* %69, %struct.iwl_sf_cfg_cmd* %8, %struct.ieee80211_sta* %70)
  %72 = call i32 (...) @rcu_read_unlock()
  br label %81

73:                                               ; preds = %36
  %74 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %75 = call i32 @iwl_mvm_fill_sf_command(%struct.iwl_mvm* %74, %struct.iwl_sf_cfg_cmd* %8, %struct.ieee80211_sta* null)
  br label %81

76:                                               ; preds = %36
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %4, align 4
  br label %94

81:                                               ; preds = %73, %68, %38
  %82 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %83 = load i32, i32* @REPLY_SF_CFG_CMD, align 4
  %84 = load i32, i32* @CMD_ASYNC, align 4
  %85 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %82, i32 %83, i32 %84, i32 4, %struct.iwl_sf_cfg_cmd* %8)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %92, label %88

88:                                               ; preds = %81
  %89 = load i32, i32* %7, align 4
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  br label %92

92:                                               ; preds = %88, %81
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %92, %76, %62, %45, %35
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @iwl_mvm_fill_sf_command(%struct.iwl_mvm*, %struct.iwl_sf_cfg_cmd*, %struct.ieee80211_sta*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.ieee80211_sta* @rcu_dereference(i32) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.ieee80211_sta*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_sf_cfg_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
