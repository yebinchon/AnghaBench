; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_tx.c_iwlagn_tx_cmd_build_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8* }
%struct.iwl_priv = type { i8*, %struct.TYPE_11__*, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.iwl_tx_cmd = type { i32, i32, i64, i8*, i8* }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ieee80211_sta = type { i32 }

@IWLAGN_LOW_RETRY_LIMIT = common dso_local global i8* null, align 8
@IWLAGN_RTS_DFAULT_RETRY_LIMIT = common dso_local global i8* null, align 8
@IWLAGN_MGMT_DFAULT_RETRY_LIMIT = common dso_local global i8* null, align 8
@IWLAGN_BAR_DFAULT_RETRY_LIMIT = common dso_local global i8* null, align 8
@IWLAGN_DEFAULT_TX_RETRY = common dso_local global i8* null, align 8
@TX_CMD_FLG_STA_RATE_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@IWL_RATE_COUNT_LEGACY = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@iwl_rates = common dso_local global %struct.TYPE_12__* null, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i32 0, align 4
@IWL_LAST_CCK_RATE = common dso_local global i32 0, align 4
@RATE_MCS_CCK_MSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*, %struct.iwl_tx_cmd*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, i32)* @iwlagn_tx_cmd_build_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwlagn_tx_cmd_build_rate(%struct.iwl_priv* %0, %struct.iwl_tx_cmd* %1, %struct.ieee80211_tx_info* %2, %struct.ieee80211_sta* %3, i32 %4) #0 {
  %6 = alloca %struct.iwl_priv*, align 8
  %7 = alloca %struct.iwl_tx_cmd*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %6, align 8
  store %struct.iwl_tx_cmd* %1, %struct.iwl_tx_cmd** %7, align 8
  store %struct.ieee80211_tx_info* %2, %struct.ieee80211_tx_info** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i8*, i8** @IWLAGN_LOW_RETRY_LIMIT, align 8
  store i8* %21, i8** %13, align 8
  %22 = load i8*, i8** @IWLAGN_LOW_RETRY_LIMIT, align 8
  store i8* %22, i8** %14, align 8
  br label %43

23:                                               ; preds = %5
  %24 = load i8*, i8** @IWLAGN_RTS_DFAULT_RETRY_LIMIT, align 8
  store i8* %24, i8** %13, align 8
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @ieee80211_is_probe_resp(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i8*, i8** @IWLAGN_MGMT_DFAULT_RETRY_LIMIT, align 8
  store i8* %29, i8** %14, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i8*, i8** %13, align 8
  %32 = call i8* @min(i8* %30, i8* %31)
  store i8* %32, i8** %13, align 8
  br label %42

33:                                               ; preds = %23
  %34 = load i32, i32* %10, align 4
  %35 = call i64 @ieee80211_is_back_req(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i8*, i8** @IWLAGN_BAR_DFAULT_RETRY_LIMIT, align 8
  store i8* %38, i8** %14, align 8
  br label %41

39:                                               ; preds = %33
  %40 = load i8*, i8** @IWLAGN_DEFAULT_TX_RETRY, align 8
  store i8* %40, i8** %14, align 8
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %28
  br label %43

43:                                               ; preds = %42, %20
  %44 = load i8*, i8** %14, align 8
  %45 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %46 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %45, i32 0, i32 4
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %13, align 8
  %48 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %49 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %48, i32 0, i32 3
  store i8* %47, i8** %49, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @ieee80211_is_data(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %55 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %57 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %58 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %199

61:                                               ; preds = %43
  %62 = load i32, i32* %10, align 4
  %63 = call i64 @ieee80211_is_back_req(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %61
  %66 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %67 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %68 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %65, %61
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %74 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i64 0
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %12, align 4
  %80 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %81 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 0
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %97, label %90

90:                                               ; preds = %72
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %90
  %94 = load i32, i32* %12, align 4
  %95 = load i32, i32* @IWL_RATE_COUNT_LEGACY, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %93, %90, %72
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %99 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %104 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds i32, i32* %102, i64 %105
  %107 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %108 = call i32 @rate_lowest_index(i32* %106, %struct.ieee80211_sta* %107)
  store i32 %108, i32* %12, align 4
  br label %109

109:                                              ; preds = %97, %93
  %110 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %111 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %121

115:                                              ; preds = %109
  %116 = load i64, i64* @IWL_FIRST_OFDM_RATE, align 8
  %117 = load i32, i32* %12, align 4
  %118 = sext i32 %117 to i64
  %119 = add nsw i64 %118, %116
  %120 = trunc i64 %119 to i32
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %115, %109
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** @iwl_rates, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  %127 = load i8*, i8** %126, align 8
  store i8* %127, i8** %15, align 8
  store i32 0, i32* %11, align 4
  %128 = load i32, i32* %12, align 4
  %129 = load i32, i32* @IWL_FIRST_CCK_RATE, align 4
  %130 = icmp sge i32 %128, %129
  br i1 %130, label %131, label %139

131:                                              ; preds = %121
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* @IWL_LAST_CCK_RATE, align 4
  %134 = icmp sle i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %131
  %136 = load i32, i32* @RATE_MCS_CCK_MSK, align 4
  %137 = load i32, i32* %11, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %11, align 4
  br label %139

139:                                              ; preds = %135, %131, %121
  %140 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %141 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %140, i32 0, i32 3
  %142 = load %struct.TYPE_10__*, %struct.TYPE_10__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = icmp ne %struct.TYPE_9__* %144, null
  br i1 %145, label %146, label %174

146:                                              ; preds = %139
  %147 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %148 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %147, i32 0, i32 3
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %174

155:                                              ; preds = %146
  %156 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %157 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %174

160:                                              ; preds = %155
  %161 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %162 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %163 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %166 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %165, i32 0, i32 1
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i32 @first_antenna(i32 %169)
  %171 = call i8* @iwl_toggle_tx_ant(%struct.iwl_priv* %161, i8* %164, i32 %170)
  %172 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %173 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %172, i32 0, i32 0
  store i8* %171, i8** %173, align 8
  br label %187

174:                                              ; preds = %155, %146, %139
  %175 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %176 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %177 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %176, i32 0, i32 0
  %178 = load i8*, i8** %177, align 8
  %179 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %180 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %179, i32 0, i32 1
  %181 = load %struct.TYPE_11__*, %struct.TYPE_11__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i8* @iwl_toggle_tx_ant(%struct.iwl_priv* %175, i8* %178, i32 %183)
  %185 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %186 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  br label %187

187:                                              ; preds = %174, %160
  %188 = load %struct.iwl_priv*, %struct.iwl_priv** %6, align 8
  %189 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %188, i32 0, i32 0
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @iwl_ant_idx_to_flags(i8* %190)
  %192 = load i32, i32* %11, align 4
  %193 = or i32 %192, %191
  store i32 %193, i32* %11, align 4
  %194 = load i8*, i8** %15, align 8
  %195 = load i32, i32* %11, align 4
  %196 = call i32 @iwl_hw_set_rate_n_flags(i8* %194, i32 %195)
  %197 = load %struct.iwl_tx_cmd*, %struct.iwl_tx_cmd** %7, align 8
  %198 = getelementptr inbounds %struct.iwl_tx_cmd, %struct.iwl_tx_cmd* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  br label %199

199:                                              ; preds = %187, %53
  ret void
}

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i8* @min(i8*, i8*) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @rate_lowest_index(i32*, %struct.ieee80211_sta*) #1

declare dso_local i8* @iwl_toggle_tx_ant(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @first_antenna(i32) #1

declare dso_local i32 @iwl_ant_idx_to_flags(i8*) #1

declare dso_local i32 @iwl_hw_set_rate_n_flags(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
