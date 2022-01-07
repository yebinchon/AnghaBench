; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_setup_connection_keep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_setup_connection_keep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.iwl_wowlan_status = type { i32, i32, %struct.TYPE_4__*, i64, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.iwl_mvm_vif = type { i32, i64 }
%struct.iwl_mvm_d3_gtk_iter_data = type { i32, i32, i32, i32, i64, %struct.iwl_wowlan_status*, %struct.iwl_mvm* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32 }
%struct.anon = type { %struct.ieee80211_key_conf, [32 x i32] }

@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON = common dso_local global i32 0, align 4
@IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH = common dso_local global i32 0, align 4
@iwl_mvm_d3_update_keys = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_CCMP = common dso_local global i32 0, align 4
@WLAN_KEY_LEN_TKIP = common dso_local global i32 0, align 4
@NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.iwl_wowlan_status*)* @iwl_mvm_setup_connection_keep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_setup_connection_keep(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.iwl_wowlan_status* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca %struct.iwl_wowlan_status*, align 8
  %8 = alloca %struct.iwl_mvm_vif*, align 8
  %9 = alloca %struct.iwl_mvm_d3_gtk_iter_data, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_key_conf*, align 8
  %12 = alloca %struct.anon, align 4
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store %struct.iwl_wowlan_status* %2, %struct.iwl_wowlan_status** %7, align 8
  %14 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %15 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %14)
  store %struct.iwl_mvm_vif* %15, %struct.iwl_mvm_vif** %8, align 8
  %16 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 2
  store i32 0, i32* %18, align 8
  %19 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 3
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 4
  store i64 0, i64* %20, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 5
  %22 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  store %struct.iwl_wowlan_status* %22, %struct.iwl_wowlan_status** %21, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 6
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_mvm* %24, %struct.iwl_mvm** %23, align 8
  %25 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON, align 4
  %26 = load i32, i32* @IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %29 = icmp ne %struct.iwl_wowlan_status* %28, null
  br i1 %29, label %30, label %36

30:                                               ; preds = %3
  %31 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %32 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %30, %3
  store i32 0, i32* %4, align 4
  br label %175

37:                                               ; preds = %30
  %38 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %39 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @le32_to_cpu(i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %175

46:                                               ; preds = %37
  %47 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 0
  store i32 1, i32* %47, align 8
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %49 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %52 = load i32, i32* @iwl_mvm_d3_update_keys, align 4
  %53 = call i32 @ieee80211_iter_keys(i32 %50, %struct.ieee80211_vif* %51, i32 %52, %struct.iwl_mvm_d3_gtk_iter_data* %9)
  %54 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 4
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %175

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %58
  br label %165

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %175

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 0
  store i32 0, i32* %69, align 8
  %70 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %71 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %74 = load i32, i32* @iwl_mvm_d3_update_keys, align 4
  %75 = call i32 @ieee80211_iter_keys(i32 %72, %struct.ieee80211_vif* %73, i32 %74, %struct.iwl_mvm_d3_gtk_iter_data* %9)
  %76 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %77 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %164

80:                                               ; preds = %68
  %81 = bitcast %struct.anon* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %81, i8 0, i64 144, i1 false)
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %83 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %83, align 4
  %86 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %82, i32 0, i32 3
  %87 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %88 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %87, i32 0, i32 2
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i64 0
  %91 = call i32 @iwlmvm_wowlan_gtk_idx(%struct.TYPE_4__* %90)
  store i32 %91, i32* %86, align 4
  %92 = getelementptr inbounds %struct.iwl_mvm_d3_gtk_iter_data, %struct.iwl_mvm_d3_gtk_iter_data* %9, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %135 [
    i32 129, label %94
    i32 128, label %109
  ]

94:                                               ; preds = %80
  %95 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %97 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %99 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %102 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %101, i32 0, i32 2
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @WLAN_KEY_LEN_CCMP, align 4
  %108 = call i32 @memcpy(i32 %100, i32 %106, i32 %107)
  br label %135

109:                                              ; preds = %80
  %110 = load i32, i32* @WLAN_KEY_LEN_TKIP, align 4
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %112 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %111, i32 0, i32 1
  store i32 %110, i32* %112, align 4
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %114 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %117 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %116, i32 0, i32 2
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @memcpy(i32 %115, i32 %121, i32 16)
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %124 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @NL80211_TKIP_DATA_OFFSET_RX_MIC_KEY, align 4
  %127 = add nsw i32 %125, %126
  %128 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %129 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %128, i32 0, i32 2
  %130 = load %struct.TYPE_4__*, %struct.TYPE_4__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i64 0
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @memcpy(i32 %127, i32 %133, i32 8)
  br label %135

135:                                              ; preds = %80, %109, %94
  %136 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %137 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %138 = call i32* @ieee80211_gtk_rekey_add(%struct.ieee80211_vif* %136, %struct.ieee80211_key_conf* %137)
  %139 = bitcast i32* %138 to %struct.ieee80211_key_conf*
  store %struct.ieee80211_key_conf* %139, %struct.ieee80211_key_conf** %11, align 8
  %140 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %141 = bitcast %struct.ieee80211_key_conf* %140 to i32*
  %142 = call i64 @IS_ERR(i32* %141)
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %135
  store i32 0, i32* %4, align 4
  br label %175

145:                                              ; preds = %135
  %146 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %147 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %11, align 8
  %148 = bitcast %struct.ieee80211_key_conf* %147 to i32*
  %149 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %150 = call i32 @iwl_mvm_set_key_rx_seq(%struct.iwl_mvm* %146, i32* %148, %struct.iwl_wowlan_status* %149)
  %151 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %152 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @le64_to_cpu(i32 %153)
  %155 = call i32 @cpu_to_be64(i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %157 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %158 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = bitcast i32* %13 to i8*
  %162 = load i32, i32* @GFP_KERNEL, align 4
  %163 = call i32 @ieee80211_gtk_rekey_notify(%struct.ieee80211_vif* %156, i32 %160, i8* %161, i32 %162)
  br label %164

164:                                              ; preds = %145, %68
  br label %165

165:                                              ; preds = %164, %62
  %166 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %167 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %166, i32 0, i32 0
  store i32 1, i32* %167, align 8
  %168 = load %struct.iwl_wowlan_status*, %struct.iwl_wowlan_status** %7, align 8
  %169 = getelementptr inbounds %struct.iwl_wowlan_status, %struct.iwl_wowlan_status* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = call i64 @le16_to_cpu(i32 %170)
  %172 = add nsw i64 %171, 16
  %173 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %8, align 8
  %174 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %173, i32 0, i32 1
  store i64 %172, i64* %174, align 8
  store i32 1, i32* %4, align 4
  br label %175

175:                                              ; preds = %165, %144, %67, %57, %45, %36
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @ieee80211_iter_keys(i32, %struct.ieee80211_vif*, i32, %struct.iwl_mvm_d3_gtk_iter_data*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @iwlmvm_wowlan_gtk_idx(%struct.TYPE_4__*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32* @ieee80211_gtk_rekey_add(%struct.ieee80211_vif*, %struct.ieee80211_key_conf*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @iwl_mvm_set_key_rx_seq(%struct.iwl_mvm*, i32*, %struct.iwl_wowlan_status*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ieee80211_gtk_rekey_notify(%struct.ieee80211_vif*, i32, i8*, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
