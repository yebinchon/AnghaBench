; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_remove_sta_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_sta.c_iwl_mvm_remove_sta_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i64*, i32, i32 }
%struct.ieee80211_vif = type { i64 }
%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_key_conf = type { i32, i64, i64, i32 }
%struct.iwl_mvm_sta = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@IWL_MVM_INVALID_STA = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"mvm remove dynamic key: idx=%d sta=%d\0A\00", align 1
@WLAN_CIPHER_SUITE_AES_CMAC = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_BIP_GMAC_128 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_BIP_GMAC_256 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"offset %d not used in fw key table.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@STA_KEY_MAX_NUM = common dso_local global i32 0, align 4
@U8_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [37 x i8] c"station non-existent, early return.\0A\00", align 1
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_remove_sta_key(%struct.iwl_mvm* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_sta* %2, %struct.ieee80211_key_conf* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca %struct.ieee80211_key_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_mvm_sta*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store %struct.ieee80211_sta* %2, %struct.ieee80211_sta** %8, align 8
  store %struct.ieee80211_key_conf* %3, %struct.ieee80211_key_conf** %9, align 8
  %15 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* @IWL_MVM_INVALID_STA, align 4
  store i32 %23, i32* %12, align 4
  %24 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %25 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %24, i32 0, i32 2
  %26 = call i32 @lockdep_assert_held(i32* %25)
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %28 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %29 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %30 = call %struct.iwl_mvm_sta* @iwl_mvm_get_key_sta(%struct.iwl_mvm* %27, %struct.ieee80211_vif* %28, %struct.ieee80211_sta* %29)
  store %struct.iwl_mvm_sta* %30, %struct.iwl_mvm_sta** %11, align 8
  %31 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %32 = icmp ne %struct.iwl_mvm_sta* %31, null
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %35 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  br label %56

37:                                               ; preds = %4
  %38 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %39 = icmp ne %struct.ieee80211_sta* %38, null
  br i1 %39, label %55, label %40

40:                                               ; preds = %37
  %41 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %42 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %46
  %50 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %7, align 8
  %51 = call %struct.TYPE_4__* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif* %50)
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %12, align 4
  br label %55

55:                                               ; preds = %49, %46, %40, %37
  br label %56

56:                                               ; preds = %55, %33
  %57 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %58 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %59 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_mvm* %57, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %64 = icmp ne %struct.iwl_mvm_sta* %63, null
  br i1 %64, label %65, label %88

65:                                               ; preds = %56
  %66 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %67 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @WLAN_CIPHER_SUITE_AES_CMAC, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %83, label %71

71:                                               ; preds = %65
  %72 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @WLAN_CIPHER_SUITE_BIP_GMAC_128, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %83, label %77

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %79 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @WLAN_CIPHER_SUITE_BIP_GMAC_256, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %77, %71, %65
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %85 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %86 = load i32, i32* %12, align 4
  %87 = call i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm* %84, %struct.ieee80211_key_conf* %85, i32 %86, i32 1)
  store i32 %87, i32* %5, align 4
  br label %182

88:                                               ; preds = %77, %56
  %89 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %90 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @__test_and_clear_bit(i64 %91, i32 %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %105, label %97

97:                                               ; preds = %88
  %98 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %99 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %100 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = call i32 @IWL_ERR(%struct.iwl_mvm* %98, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %101)
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %5, align 4
  br label %182

105:                                              ; preds = %88
  store i32 0, i32* %14, align 4
  br label %106

106:                                              ; preds = %130, %105
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @STA_KEY_MAX_NUM, align 4
  %109 = icmp slt i32 %107, %108
  br i1 %109, label %110, label %133

110:                                              ; preds = %106
  %111 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %112 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %111, i32 0, i32 0
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %14, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @U8_MAX, align 8
  %119 = icmp slt i64 %117, %118
  br i1 %119, label %120, label %129

120:                                              ; preds = %110
  %121 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %122 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %121, i32 0, i32 0
  %123 = load i64*, i64** %122, align 8
  %124 = load i32, i32* %14, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %123, i64 %125
  %127 = load i64, i64* %126, align 8
  %128 = add nsw i64 %127, 1
  store i64 %128, i64* %126, align 8
  br label %129

129:                                              ; preds = %120, %110
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %14, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %14, align 4
  br label %106

133:                                              ; preds = %106
  %134 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %135 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %134, i32 0, i32 0
  %136 = load i64*, i64** %135, align 8
  %137 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %138 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds i64, i64* %136, i64 %139
  store i64 0, i64* %140, align 8
  %141 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %142 = icmp ne %struct.ieee80211_sta* %141, null
  br i1 %142, label %143, label %149

143:                                              ; preds = %133
  %144 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %11, align 8
  %145 = icmp ne %struct.iwl_mvm_sta* %144, null
  br i1 %145, label %149, label %146

146:                                              ; preds = %143
  %147 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %148 = call i32 (%struct.iwl_mvm*, i8*, ...) @IWL_DEBUG_WEP(%struct.iwl_mvm* %147, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %182

149:                                              ; preds = %143, %133
  %150 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %153 = load i32, i32* %10, align 4
  %154 = call i32 @__iwl_mvm_remove_sta_key(%struct.iwl_mvm* %150, i32 %151, %struct.ieee80211_key_conf* %152, i32 %153)
  store i32 %154, i32* %13, align 4
  %155 = load i32, i32* %13, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %149
  %158 = load i32, i32* %13, align 4
  store i32 %158, i32* %5, align 4
  br label %182

159:                                              ; preds = %149
  %160 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %161 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %164 = icmp eq i64 %162, %163
  br i1 %164, label %171, label %165

165:                                              ; preds = %159
  %166 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %167 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %166, i32 0, i32 1
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %165, %159
  %172 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %9, align 8
  %175 = load i32, i32* %10, align 4
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = zext i1 %177 to i32
  %179 = call i32 @__iwl_mvm_remove_sta_key(%struct.iwl_mvm* %172, i32 %173, %struct.ieee80211_key_conf* %174, i32 %178)
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %171, %165
  %181 = load i32, i32* %13, align 4
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %180, %157, %146, %97, %83
  %183 = load i32, i32* %5, align 4
  ret i32 %183
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.iwl_mvm_sta* @iwl_mvm_get_key_sta(%struct.iwl_mvm*, %struct.ieee80211_vif*, %struct.ieee80211_sta*) #1

declare dso_local %struct.TYPE_4__* @iwl_mvm_vif_from_mac80211(%struct.ieee80211_vif*) #1

declare dso_local i32 @IWL_DEBUG_WEP(%struct.iwl_mvm*, i8*, ...) #1

declare dso_local i32 @iwl_mvm_send_sta_igtk(%struct.iwl_mvm*, %struct.ieee80211_key_conf*, i32, i32) #1

declare dso_local i32 @__test_and_clear_bit(i64, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i64) #1

declare dso_local i32 @__iwl_mvm_remove_sta_key(%struct.iwl_mvm*, i32, %struct.ieee80211_key_conf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
