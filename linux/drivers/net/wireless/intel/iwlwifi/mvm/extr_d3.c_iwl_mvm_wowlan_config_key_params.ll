; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_wowlan_config_key_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_d3.c_iwl_mvm_wowlan_config_key_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.iwl_wowlan_kek_kck_material_cmd = type { i32, i8*, i32, i8*, i32 }
%struct.iwl_wowlan_tkip_params_cmd = type { i32, i8*, i32, i8*, i32 }
%struct.wowlan_key_data = type { i32, i32, i32, %struct.iwl_wowlan_tkip_params_cmd*, i64, %struct.iwl_wowlan_tkip_params_cmd* }
%struct.iwl_mvm_vif = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i64 }

@IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@iwl_mvm_wowlan_program_keys = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@WOWLAN_TSC_RSC_PARAM = common dso_local global i32 0, align 4
@IWL_UCODE_TLV_API_TKIP_MIC_KEYS = common dso_local global i32 0, align 4
@WOWLAN_TKIP_PARAM = common dso_local global i32 0, align 4
@NL80211_KCK_LEN = common dso_local global i32 0, align 4
@NL80211_KEK_LEN = common dso_local global i32 0, align 4
@WOWLAN_KEK_KCK_MATERIAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_mvm*, %struct.ieee80211_vif*, i32)* @iwl_mvm_wowlan_config_key_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_mvm_wowlan_config_key_params(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.iwl_wowlan_kek_kck_material_cmd, align 8
  %9 = alloca %struct.iwl_wowlan_tkip_params_cmd, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wowlan_key_data, align 8
  %12 = alloca %struct.iwl_mvm_vif*, align 8
  %13 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = bitcast %struct.iwl_wowlan_kek_kck_material_cmd* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 40, i1 false)
  %15 = bitcast %struct.iwl_wowlan_tkip_params_cmd* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %15, i8 0, i64 40, i1 false)
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @IWL_UCODE_TLV_CAPA_CNSLDTD_D3_D0_IMG, align 4
  %21 = call i32 @fw_has_capa(i32* %19, i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 0
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %22, align 8
  %27 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 1
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 2
  store i32 0, i32* %28, align 8
  %29 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 3
  store %struct.iwl_wowlan_tkip_params_cmd* null, %struct.iwl_wowlan_tkip_params_cmd** %29, align 8
  %30 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 4
  store i64 0, i64* %30, align 8
  %31 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 5
  store %struct.iwl_wowlan_tkip_params_cmd* %9, %struct.iwl_wowlan_tkip_params_cmd** %31, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %33 = call %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %32)
  store %struct.iwl_mvm_vif* %33, %struct.iwl_mvm_vif** %12, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.iwl_wowlan_tkip_params_cmd* @kzalloc(i32 40, i32 %34)
  %36 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 3
  store %struct.iwl_wowlan_tkip_params_cmd* %35, %struct.iwl_wowlan_tkip_params_cmd** %36, align 8
  %37 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 3
  %38 = load %struct.iwl_wowlan_tkip_params_cmd*, %struct.iwl_wowlan_tkip_params_cmd** %37, align 8
  %39 = icmp ne %struct.iwl_wowlan_tkip_params_cmd* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %3
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %143

43:                                               ; preds = %3
  %44 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %45 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %48 = load i32, i32* @iwl_mvm_wowlan_program_keys, align 4
  %49 = call i32 @ieee80211_iter_keys(i32 %46, %struct.ieee80211_vif* %47, i32 %48, %struct.wowlan_key_data* %11)
  %50 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %43
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %13, align 4
  br label %138

56:                                               ; preds = %43
  %57 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %56
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %62 = load i32, i32* @WOWLAN_TSC_RSC_PARAM, align 4
  %63 = load i32, i32* %7, align 4
  %64 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 3
  %65 = load %struct.iwl_wowlan_tkip_params_cmd*, %struct.iwl_wowlan_tkip_params_cmd** %64, align 8
  %66 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %61, i32 %62, i32 %63, i32 40, %struct.iwl_wowlan_tkip_params_cmd* %65)
  store i32 %66, i32* %13, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %138

70:                                               ; preds = %60
  br label %71

71:                                               ; preds = %70, %56
  %72 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %71
  %76 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %77 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* @IWL_UCODE_TLV_API_TKIP_MIC_KEYS, align 4
  %81 = call i32 @fw_has_api(i32* %79, i32 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %75
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %85 = load i32, i32* @WOWLAN_TKIP_PARAM, align 4
  %86 = load i32, i32* %7, align 4
  %87 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %84, i32 %85, i32 %86, i32 40, %struct.iwl_wowlan_tkip_params_cmd* %9)
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %83
  br label %138

91:                                               ; preds = %83
  br label %92

92:                                               ; preds = %91, %75, %71
  %93 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %94 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %137

98:                                               ; preds = %92
  %99 = bitcast %struct.iwl_wowlan_kek_kck_material_cmd* %8 to %struct.iwl_wowlan_tkip_params_cmd*
  %100 = call i32 @memset(%struct.iwl_wowlan_tkip_params_cmd* %99, i32 0, i32 40)
  %101 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd, %struct.iwl_wowlan_kek_kck_material_cmd* %8, i32 0, i32 4
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @NL80211_KCK_LEN, align 4
  %108 = call i32 @memcpy(i32 %102, i32 %106, i32 %107)
  %109 = load i32, i32* @NL80211_KCK_LEN, align 4
  %110 = call i8* @cpu_to_le16(i32 %109)
  %111 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd, %struct.iwl_wowlan_kek_kck_material_cmd* %8, i32 0, i32 3
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd, %struct.iwl_wowlan_kek_kck_material_cmd* %8, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %115 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @NL80211_KEK_LEN, align 4
  %119 = call i32 @memcpy(i32 %113, i32 %117, i32 %118)
  %120 = load i32, i32* @NL80211_KEK_LEN, align 4
  %121 = call i8* @cpu_to_le16(i32 %120)
  %122 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd, %struct.iwl_wowlan_kek_kck_material_cmd* %8, i32 0, i32 1
  store i8* %121, i8** %122, align 8
  %123 = load %struct.iwl_mvm_vif*, %struct.iwl_mvm_vif** %12, align 8
  %124 = getelementptr inbounds %struct.iwl_mvm_vif, %struct.iwl_mvm_vif* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = getelementptr inbounds %struct.iwl_wowlan_kek_kck_material_cmd, %struct.iwl_wowlan_kek_kck_material_cmd* %8, i32 0, i32 0
  store i32 %126, i32* %127, align 8
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %129 = load i32, i32* @WOWLAN_KEK_KCK_MATERIAL, align 4
  %130 = load i32, i32* %7, align 4
  %131 = bitcast %struct.iwl_wowlan_kek_kck_material_cmd* %8 to %struct.iwl_wowlan_tkip_params_cmd*
  %132 = call i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm* %128, i32 %129, i32 %130, i32 40, %struct.iwl_wowlan_tkip_params_cmd* %131)
  store i32 %132, i32* %13, align 4
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %98
  br label %138

136:                                              ; preds = %98
  br label %137

137:                                              ; preds = %136, %92
  store i32 0, i32* %13, align 4
  br label %138

138:                                              ; preds = %137, %135, %90, %69, %53
  %139 = getelementptr inbounds %struct.wowlan_key_data, %struct.wowlan_key_data* %11, i32 0, i32 3
  %140 = load %struct.iwl_wowlan_tkip_params_cmd*, %struct.iwl_wowlan_tkip_params_cmd** %139, align 8
  %141 = call i32 @kfree(%struct.iwl_wowlan_tkip_params_cmd* %140)
  %142 = load i32, i32* %13, align 4
  store i32 %142, i32* %4, align 4
  br label %143

143:                                              ; preds = %138, %40
  %144 = load i32, i32* %4, align 4
  ret i32 %144
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @fw_has_capa(i32*, i32) #2

declare dso_local %struct.iwl_mvm_vif* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #2

declare dso_local %struct.iwl_wowlan_tkip_params_cmd* @kzalloc(i32, i32) #2

declare dso_local i32 @ieee80211_iter_keys(i32, %struct.ieee80211_vif*, i32, %struct.wowlan_key_data*) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu(%struct.iwl_mvm*, i32, i32, i32, %struct.iwl_wowlan_tkip_params_cmd*) #2

declare dso_local i32 @fw_has_api(i32*, i32) #2

declare dso_local i32 @memset(%struct.iwl_wowlan_tkip_params_cmd*, i32, i32) #2

declare dso_local i32 @memcpy(i32, i32, i32) #2

declare dso_local i8* @cpu_to_le16(i32) #2

declare dso_local i32 @kfree(%struct.iwl_wowlan_tkip_params_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
