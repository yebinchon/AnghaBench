; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_rx_chub_update_mcc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_nvm.c_iwl_mvm_rx_chub_update_mcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_rx_cmd_buffer = type { i32 }
%struct.iwl_rx_packet = type { i64 }
%struct.iwl_mcc_chub_notif = type { i64, i32 }
%struct.ieee80211_regdomain = type { i32 }

@MCC_SOURCE_WIFI = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Ignore mcc update while associated\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"RX: received chub update mcc cmd (mcc '%s' src %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"SAR WGDS is disabled (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"SAR WGDS: geo profile %d is configured\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_rx_chub_update_mcc(%struct.iwl_mvm* %0, %struct.iwl_rx_cmd_buffer* %1) #0 {
  %3 = alloca %struct.iwl_mvm*, align 8
  %4 = alloca %struct.iwl_rx_cmd_buffer*, align 8
  %5 = alloca %struct.iwl_rx_packet*, align 8
  %6 = alloca %struct.iwl_mcc_chub_notif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i8], align 1
  %9 = alloca %struct.ieee80211_regdomain*, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %3, align 8
  store %struct.iwl_rx_cmd_buffer* %1, %struct.iwl_rx_cmd_buffer** %4, align 8
  %11 = load %struct.iwl_rx_cmd_buffer*, %struct.iwl_rx_cmd_buffer** %4, align 8
  %12 = call %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer* %11)
  store %struct.iwl_rx_packet* %12, %struct.iwl_rx_packet** %5, align 8
  %13 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.iwl_mcc_chub_notif*
  store %struct.iwl_mcc_chub_notif* %17, %struct.iwl_mcc_chub_notif** %6, align 8
  %18 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %18, i32 0, i32 1
  %20 = call i32 @lockdep_assert_held(i32* %19)
  %21 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %22 = call i64 @iwl_mvm_is_vif_assoc(%struct.iwl_mvm* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.iwl_mcc_chub_notif*, %struct.iwl_mcc_chub_notif** %6, align 8
  %26 = getelementptr inbounds %struct.iwl_mcc_chub_notif, %struct.iwl_mcc_chub_notif* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MCC_SOURCE_WIFI, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %32 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_LAR(%struct.iwl_mvm* %31, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %101

33:                                               ; preds = %24, %2
  %34 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %35 = call i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm* %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i64 @WARN_ON_ONCE(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  br label %101

42:                                               ; preds = %33
  %43 = load %struct.iwl_mcc_chub_notif*, %struct.iwl_mcc_chub_notif** %6, align 8
  %44 = getelementptr inbounds %struct.iwl_mcc_chub_notif, %struct.iwl_mcc_chub_notif* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = ashr i32 %46, 8
  %48 = trunc i32 %47 to i8
  %49 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  store i8 %48, i8* %49, align 1
  %50 = load %struct.iwl_mcc_chub_notif*, %struct.iwl_mcc_chub_notif** %6, align 8
  %51 = getelementptr inbounds %struct.iwl_mcc_chub_notif, %struct.iwl_mcc_chub_notif* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @le16_to_cpu(i32 %52)
  %54 = and i32 %53, 255
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 1
  store i8 %55, i8* %56, align 1
  %57 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 2
  store i8 0, i8* %57, align 1
  %58 = load %struct.iwl_mcc_chub_notif*, %struct.iwl_mcc_chub_notif** %6, align 8
  %59 = getelementptr inbounds %struct.iwl_mcc_chub_notif, %struct.iwl_mcc_chub_notif* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %7, align 4
  %62 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %63 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %64 = load i32, i32* %7, align 4
  %65 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_LAR(%struct.iwl_mvm* %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i8* %63, i32 %64)
  %66 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [3 x i8], [3 x i8]* %8, i64 0, i64 0
  %72 = load i32, i32* %7, align 4
  %73 = call %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(i32 %70, i8* %71, i32 %72, i32* null)
  store %struct.ieee80211_regdomain* %73, %struct.ieee80211_regdomain** %9, align 8
  %74 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %75 = call i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %42
  br label %101

78:                                               ; preds = %42
  %79 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %80 = call i32 @iwl_mvm_get_sar_geo_profile(%struct.iwl_mvm* %79)
  store i32 %80, i32* %10, align 4
  %81 = load i32, i32* %10, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %84, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %85)
  br label %91

87:                                               ; preds = %78
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %89 = load i32, i32* %10, align 4
  %90 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %88, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %89)
  br label %91

91:                                               ; preds = %87, %83
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %3, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %98 = call i32 @regulatory_set_wiphy_regd(i32 %96, %struct.ieee80211_regdomain* %97)
  %99 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %9, align 8
  %100 = call i32 @kfree(%struct.ieee80211_regdomain* %99)
  br label %101

101:                                              ; preds = %91, %77, %41, %30
  ret void
}

declare dso_local %struct.iwl_rx_packet* @rxb_addr(%struct.iwl_rx_cmd_buffer*) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @iwl_mvm_is_vif_assoc(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_LAR(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_mvm_is_lar_supported(%struct.iwl_mvm*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local %struct.ieee80211_regdomain* @iwl_mvm_get_regdomain(i32, i8*, i32, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @iwl_mvm_get_sar_geo_profile(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i32) #1

declare dso_local i32 @regulatory_set_wiphy_regd(i32, %struct.ieee80211_regdomain*) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
