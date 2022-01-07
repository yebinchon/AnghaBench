; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwlagn_send_beacon_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwlagn_send_beacon_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_14__*, i32, %struct.TYPE_12__*, %struct.TYPE_8__*, %struct.iwl_tx_beacon_cmd*, i32 }
%struct.TYPE_14__ = type { i64, %struct.iwl_tx_beacon_cmd* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.iwl_tx_beacon_cmd = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.iwl_host_cmd = type { i32*, i8**, %struct.iwl_tx_beacon_cmd**, i32 }
%struct.ieee80211_tx_info = type { i64, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }

@REPLY_TX_BEACON = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"trying to build beacon w/o beacon context!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TX_CMD_LIFE_TIME_INFINITE = common dso_local global i32 0, align 4
@TX_CMD_FLG_SEQ_CTL_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_TSF_MSK = common dso_local global i32 0, align 4
@TX_CMD_FLG_STA_RATE_MSK = common dso_local global i32 0, align 4
@IEEE80211_TX_RC_MCS = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@IWL_FIRST_OFDM_RATE = common dso_local global i64 0, align 8
@IWL_FIRST_CCK_RATE = common dso_local global i64 0, align 8
@IWL_LAST_CCK_RATE = common dso_local global i64 0, align 8
@RATE_MCS_CCK_MSK = common dso_local global i64 0, align 8
@IWL_HCMD_DFL_NOCOPY = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwlagn_send_beacon_cmd(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca %struct.iwl_tx_beacon_cmd*, align 8
  %5 = alloca %struct.iwl_host_cmd, align 8
  %6 = alloca %struct.ieee80211_tx_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %10 = bitcast %struct.iwl_host_cmd* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 3
  %12 = load i32, i32* @REPLY_TX_BEACON, align 4
  store i32 %12, i32* %11, align 8
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 5
  %15 = call i32 @lockdep_assert_held(i32* %14)
  %16 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %17 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = icmp ne %struct.TYPE_8__* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %1
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = call i32 @IWL_ERR(%struct.iwl_priv* %21, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %204

23:                                               ; preds = %1
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %24, i32 0, i32 0
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %25, align 8
  %27 = icmp ne %struct.TYPE_14__* %26, null
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i64 @WARN_ON(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %23
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %204

35:                                               ; preds = %23
  %36 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %37 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %36, i32 0, i32 4
  %38 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %37, align 8
  %39 = icmp ne %struct.iwl_tx_beacon_cmd* %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = call %struct.iwl_tx_beacon_cmd* @kzalloc(i32 20, i32 %41)
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 4
  store %struct.iwl_tx_beacon_cmd* %42, %struct.iwl_tx_beacon_cmd** %44, align 8
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %47 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %46, i32 0, i32 4
  %48 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %47, align 8
  store %struct.iwl_tx_beacon_cmd* %48, %struct.iwl_tx_beacon_cmd** %4, align 8
  %49 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %50 = icmp ne %struct.iwl_tx_beacon_cmd* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = load i32, i32* @ENOMEM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %204

54:                                               ; preds = %45
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %56 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = trunc i64 %60 to i32
  %62 = call i32 @cpu_to_le16(i32 %61)
  %63 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  store i32 %62, i32* %65, align 4
  %66 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %67 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %66, i32 0, i32 3
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 3
  store i32 %70, i32* %73, align 4
  %74 = load i32, i32* @TX_CMD_LIFE_TIME_INFINITE, align 4
  %75 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @TX_CMD_FLG_SEQ_CTL_MSK, align 4
  %80 = load i32, i32* @TX_CMD_FLG_TSF_MSK, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @TX_CMD_FLG_STA_RATE_MSK, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %85 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  store i32 %83, i32* %86, align 4
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %88 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %89 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %90 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 1
  %93 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %92, align 8
  %94 = load i64, i64* %7, align 8
  %95 = call i32 @iwl_set_beacon_tim(%struct.iwl_priv* %87, %struct.iwl_tx_beacon_cmd* %88, %struct.iwl_tx_beacon_cmd* %93, i64 %94)
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %97 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %96, i32 0, i32 0
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %97, align 8
  %99 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__* %98)
  store %struct.ieee80211_tx_info* %99, %struct.ieee80211_tx_info** %6, align 8
  %100 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %119, label %108

108:                                              ; preds = %54
  %109 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %110 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @IEEE80211_TX_RC_MCS, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %108, %54
  store i64 0, i64* %9, align 8
  br label %128

120:                                              ; preds = %108
  %121 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %122 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i64 0
  %126 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  store i64 %127, i64* %9, align 8
  br label %128

128:                                              ; preds = %120, %119
  %129 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %130 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %131 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %134 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %133, i32 0, i32 2
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @iwl_toggle_tx_ant(%struct.iwl_priv* %129, i32 %132, i32 %137)
  %139 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %140 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 8
  %141 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %142 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i64 @iwl_ant_idx_to_flags(i32 %143)
  store i64 %144, i64* %8, align 8
  %145 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %6, align 8
  %146 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %149 = icmp eq i64 %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %128
  %151 = load i64, i64* @IWL_FIRST_OFDM_RATE, align 8
  %152 = load i64, i64* %9, align 8
  %153 = add nsw i64 %152, %151
  store i64 %153, i64* %9, align 8
  br label %167

154:                                              ; preds = %128
  %155 = load i64, i64* %9, align 8
  %156 = load i64, i64* @IWL_FIRST_CCK_RATE, align 8
  %157 = icmp sge i64 %155, %156
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i64, i64* %9, align 8
  %160 = load i64, i64* @IWL_LAST_CCK_RATE, align 8
  %161 = icmp sle i64 %159, %160
  br i1 %161, label %162, label %166

162:                                              ; preds = %158
  %163 = load i64, i64* @RATE_MCS_CCK_MSK, align 8
  %164 = load i64, i64* %8, align 8
  %165 = or i64 %164, %163
  store i64 %165, i64* %8, align 8
  br label %166

166:                                              ; preds = %162, %158, %154
  br label %167

167:                                              ; preds = %166, %150
  %168 = load i64, i64* %9, align 8
  %169 = load i64, i64* %8, align 8
  %170 = call i32 @iwl_hw_set_rate_n_flags(i64 %168, i64 %169)
  %171 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %172 = getelementptr inbounds %struct.iwl_tx_beacon_cmd, %struct.iwl_tx_beacon_cmd* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %172, i32 0, i32 1
  store i32 %170, i32* %173, align 4
  %174 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  store i32 20, i32* %176, align 4
  %177 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %4, align 8
  %178 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %179 = load %struct.iwl_tx_beacon_cmd**, %struct.iwl_tx_beacon_cmd*** %178, align 8
  %180 = getelementptr inbounds %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %179, i64 0
  store %struct.iwl_tx_beacon_cmd* %177, %struct.iwl_tx_beacon_cmd** %180, align 8
  %181 = load i8*, i8** @IWL_HCMD_DFL_NOCOPY, align 8
  %182 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %183 = load i8**, i8*** %182, align 8
  %184 = getelementptr inbounds i8*, i8** %183, i64 0
  store i8* %181, i8** %184, align 8
  %185 = load i64, i64* %7, align 8
  %186 = trunc i64 %185 to i32
  %187 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = getelementptr inbounds i32, i32* %188, i64 1
  store i32 %186, i32* %189, align 4
  %190 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %191 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %190, i32 0, i32 0
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 1
  %194 = load %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %193, align 8
  %195 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %196 = load %struct.iwl_tx_beacon_cmd**, %struct.iwl_tx_beacon_cmd*** %195, align 8
  %197 = getelementptr inbounds %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd** %196, i64 1
  store %struct.iwl_tx_beacon_cmd* %194, %struct.iwl_tx_beacon_cmd** %197, align 8
  %198 = load i8*, i8** @IWL_HCMD_DFL_NOCOPY, align 8
  %199 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %200 = load i8**, i8*** %199, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 1
  store i8* %198, i8** %201, align 8
  %202 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %203 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %202, %struct.iwl_host_cmd* %5)
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %167, %51, %32, %20
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*) #2

declare dso_local i64 @WARN_ON(i32) #2

declare dso_local %struct.iwl_tx_beacon_cmd* @kzalloc(i32, i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_set_beacon_tim(%struct.iwl_priv*, %struct.iwl_tx_beacon_cmd*, %struct.iwl_tx_beacon_cmd*, i64) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.TYPE_14__*) #2

declare dso_local i32 @iwl_toggle_tx_ant(%struct.iwl_priv*, i32, i32) #2

declare dso_local i64 @iwl_ant_idx_to_flags(i32) #2

declare dso_local i32 @iwl_hw_set_rate_n_flags(i64, i64) #2

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
