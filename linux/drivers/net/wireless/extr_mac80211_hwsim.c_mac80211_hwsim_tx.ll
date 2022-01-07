; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_mac80211_hwsim.c_mac80211_hwsim_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32, %struct.mac80211_hwsim_data* }
%struct.mac80211_hwsim_data = type { i32, i32, i32, i64, %struct.ieee80211_channel*, i64, %struct.ieee80211_channel*, i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_tx_control = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ieee80211_tx_info = type { i32, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ieee80211_chanctx_conf = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ieee80211_channel* }
%struct.ieee80211_mgmt = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_rate = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"TX w/o channel - queue = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Trying to TX when idle - reject\0A\00", align 1
@SUPPORTS_RC_TABLE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_NO_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_tx_control*, %struct.sk_buff*)* @mac80211_hwsim_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mac80211_hwsim_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_tx_control* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_tx_control*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.mac80211_hwsim_data*, align 8
  %8 = alloca %struct.ieee80211_tx_info*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca %struct.ieee80211_chanctx_conf*, align 8
  %11 = alloca %struct.ieee80211_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.ieee80211_mgmt*, align 8
  %15 = alloca %struct.ieee80211_rate*, align 8
  %16 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_tx_control* %1, %struct.ieee80211_tx_control** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %17, i32 0, i32 1
  %19 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %18, align 8
  store %struct.mac80211_hwsim_data* %19, %struct.mac80211_hwsim_data** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %20)
  store %struct.ieee80211_tx_info* %21, %struct.ieee80211_tx_info** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %26, %struct.ieee80211_hdr** %9, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %29, 10
  %31 = zext i1 %30 to i32
  %32 = call i64 @WARN_ON(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %3
  %35 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %37 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %35, %struct.sk_buff* %36)
  br label %266

38:                                               ; preds = %3
  %39 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %40 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %39, i32 0, i32 7
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  %44 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %45 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %44, i32 0, i32 6
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %45, align 8
  store %struct.ieee80211_channel* %46, %struct.ieee80211_channel** %11, align 8
  br label %74

47:                                               ; preds = %38
  %48 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %49 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp eq i32 %50, 4
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %54 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %53, i32 0, i32 4
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %54, align 8
  store %struct.ieee80211_channel* %55, %struct.ieee80211_channel** %11, align 8
  br label %73

56:                                               ; preds = %47
  %57 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %58 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_13__*, %struct.TYPE_13__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.ieee80211_chanctx_conf* @rcu_dereference(i32 %62)
  store %struct.ieee80211_chanctx_conf* %63, %struct.ieee80211_chanctx_conf** %10, align 8
  %64 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %65 = icmp ne %struct.ieee80211_chanctx_conf* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %56
  %67 = load %struct.ieee80211_chanctx_conf*, %struct.ieee80211_chanctx_conf** %10, align 8
  %68 = getelementptr inbounds %struct.ieee80211_chanctx_conf, %struct.ieee80211_chanctx_conf* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %68, i32 0, i32 0
  %70 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %69, align 8
  store %struct.ieee80211_channel* %70, %struct.ieee80211_channel** %11, align 8
  br label %72

71:                                               ; preds = %56
  store %struct.ieee80211_channel* null, %struct.ieee80211_channel** %11, align 8
  br label %72

72:                                               ; preds = %71, %66
  br label %73

73:                                               ; preds = %72, %52
  br label %74

74:                                               ; preds = %73, %43
  %75 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %76 = icmp ne %struct.ieee80211_channel* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %80 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @WARN(i32 %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %74
  %85 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %87 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %85, %struct.sk_buff* %86)
  br label %266

88:                                               ; preds = %74
  %89 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %90 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %88
  %94 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %95 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %94, i32 0, i32 4
  %96 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %95, align 8
  %97 = icmp ne %struct.ieee80211_channel* %96, null
  br i1 %97, label %106, label %98

98:                                               ; preds = %93
  %99 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %100 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @wiphy_dbg(i32 %101, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %103 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %105 = call i32 @ieee80211_free_txskb(%struct.ieee80211_hw* %103, %struct.sk_buff* %104)
  br label %266

106:                                              ; preds = %93, %88
  %107 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %108 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = icmp ne %struct.TYPE_13__* %110, null
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %114 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 1
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** %115, align 8
  %117 = call i32 @hwsim_check_magic(%struct.TYPE_13__* %116)
  br label %118

118:                                              ; preds = %112, %106
  %119 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %120 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %118
  %124 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @hwsim_check_sta_magic(i32 %126)
  br label %128

128:                                              ; preds = %123, %118
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %130 = load i32, i32* @SUPPORTS_RC_TABLE, align 4
  %131 = call i64 @ieee80211_hw_check(%struct.ieee80211_hw* %129, i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %152

133:                                              ; preds = %128
  %134 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %135 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %136, align 8
  %138 = load %struct.ieee80211_tx_control*, %struct.ieee80211_tx_control** %5, align 8
  %139 = getelementptr inbounds %struct.ieee80211_tx_control, %struct.ieee80211_tx_control* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %142, i32 0, i32 2
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %147 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %146, i32 0, i32 2
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %148, align 8
  %150 = call i32 @ARRAY_SIZE(%struct.TYPE_14__* %149)
  %151 = call i32 @ieee80211_get_tx_rates(%struct.TYPE_13__* %137, i32 %140, %struct.sk_buff* %141, %struct.TYPE_14__* %145, i32 %150)
  br label %152

152:                                              ; preds = %133, %128
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = icmp sge i32 %155, 32
  br i1 %156, label %157, label %188

157:                                              ; preds = %152
  %158 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %159 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = call i64 @ieee80211_is_probe_resp(i32 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %188

163:                                              ; preds = %157
  %164 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %165 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %167, %struct.ieee80211_mgmt** %14, align 8
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %169 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %170 = call %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw* %168, %struct.ieee80211_tx_info* %169)
  store %struct.ieee80211_rate* %170, %struct.ieee80211_rate** %15, align 8
  %171 = call i64 (...) @mac80211_hwsim_get_tsf_raw()
  store i64 %171, i64* %16, align 8
  %172 = load i64, i64* %16, align 8
  %173 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %174 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = add nsw i64 %172, %175
  %177 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %15, align 8
  %178 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = sdiv i32 1920, %179
  %181 = sext i32 %180 to i64
  %182 = add nsw i64 %176, %181
  %183 = call i32 @cpu_to_le64(i64 %182)
  %184 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %14, align 8
  %185 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 0
  store i32 %183, i32* %187, align 4
  br label %188

188:                                              ; preds = %163, %157, %152
  %189 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %191 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %192 = call i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw* %189, %struct.sk_buff* %190, %struct.ieee80211_channel* %191)
  %193 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %194 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = call i64 @READ_ONCE(i32 %195)
  store i64 %196, i64* %13, align 8
  %197 = load i64, i64* %13, align 8
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %203

199:                                              ; preds = %188
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %202 = load i64, i64* %13, align 8
  call void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw* %200, %struct.sk_buff* %201, i64 %202)
  br label %266

203:                                              ; preds = %188
  %204 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %205 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.mac80211_hwsim_data*, %struct.mac80211_hwsim_data** %7, align 8
  %212 = getelementptr inbounds %struct.mac80211_hwsim_data, %struct.mac80211_hwsim_data* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = add nsw i32 %213, %210
  store i32 %214, i32* %212, align 8
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %216 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %217 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %218 = call i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw* %215, %struct.sk_buff* %216, %struct.ieee80211_channel* %217)
  store i32 %218, i32* %12, align 4
  %219 = load i32, i32* %12, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %232

221:                                              ; preds = %203
  %222 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = icmp sge i32 %224, 16
  br i1 %225, label %226, label %232

226:                                              ; preds = %221
  %227 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %11, align 8
  %228 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %229 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @mac80211_hwsim_monitor_ack(%struct.ieee80211_channel* %227, i32 %230)
  br label %232

232:                                              ; preds = %226, %221, %203
  %233 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %234 = call i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info* %233)
  %235 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %236 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %235, i32 0, i32 2
  %237 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i64 0
  %240 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %239, i32 0, i32 0
  store i32 1, i32* %240, align 4
  %241 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %242 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %241, i32 0, i32 2
  %243 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %242, i32 0, i32 0
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i64 1
  %246 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %245, i32 0, i32 1
  store i32 -1, i32* %246, align 4
  %247 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %248 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i32, i32* @IEEE80211_TX_CTL_NO_ACK, align 4
  %251 = and i32 %249, %250
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %262, label %253

253:                                              ; preds = %232
  %254 = load i32, i32* %12, align 4
  %255 = icmp ne i32 %254, 0
  br i1 %255, label %256, label %262

256:                                              ; preds = %253
  %257 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %258 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %8, align 8
  %259 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = or i32 %260, %257
  store i32 %261, i32* %259, align 4
  br label %262

262:                                              ; preds = %256, %253, %232
  %263 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %265 = call i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw* %263, %struct.sk_buff* %264)
  br label %266

266:                                              ; preds = %262, %199, %98, %84, %34
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ieee80211_free_txskb(%struct.ieee80211_hw*, %struct.sk_buff*) #1

declare dso_local %struct.ieee80211_chanctx_conf* @rcu_dereference(i32) #1

declare dso_local i64 @WARN(i32, i8*, i32) #1

declare dso_local i32 @wiphy_dbg(i32, i8*) #1

declare dso_local i32 @hwsim_check_magic(%struct.TYPE_13__*) #1

declare dso_local i32 @hwsim_check_sta_magic(i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @ieee80211_get_tx_rates(%struct.TYPE_13__*, i32, %struct.sk_buff*, %struct.TYPE_14__*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_14__*) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local %struct.ieee80211_rate* @ieee80211_get_tx_rate(%struct.ieee80211_hw*, %struct.ieee80211_tx_info*) #1

declare dso_local i64 @mac80211_hwsim_get_tsf_raw(...) #1

declare dso_local i32 @cpu_to_le64(i64) #1

declare dso_local i32 @mac80211_hwsim_monitor_rx(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local void @mac80211_hwsim_tx_frame_nl(%struct.ieee80211_hw*, %struct.sk_buff*, i64) #1

declare dso_local i32 @mac80211_hwsim_tx_frame_no_nl(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.ieee80211_channel*) #1

declare dso_local i32 @mac80211_hwsim_monitor_ack(%struct.ieee80211_channel*, i32) #1

declare dso_local i32 @ieee80211_tx_info_clear_status(%struct.ieee80211_tx_info*) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(%struct.ieee80211_hw*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
