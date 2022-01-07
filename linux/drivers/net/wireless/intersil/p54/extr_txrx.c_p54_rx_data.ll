; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_txrx.c_p54_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p54_common = type { i64, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.p54_rx_data = type { i32, i32, i64, i32, i64*, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@P54_HDR_FLAG_DATA_IN_FCS_GOOD = common dso_local global i32 0, align 4
@P54_DECRYPT_OK = common dso_local global i64 0, align 8
@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@P54_DECRYPT_FAIL_MICHAEL = common dso_local global i64 0, align 8
@P54_DECRYPT_FAIL_TKIP = common dso_local global i64 0, align 8
@RX_FLAG_MMIC_ERROR = common dso_local global i32 0, align 4
@RX_ENC_FLAG_SHORTPRE = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@RX_FLAG_MACTIME_END = common dso_local global i32 0, align 4
@P54_HDR_FLAG_DATA_ALIGN = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@P54_STATISTICS_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.p54_common*, %struct.sk_buff*)* @p54_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @p54_rx_data(%struct.p54_common* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.p54_common*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.p54_rx_data*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.p54_common* %0, %struct.p54_common** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to %struct.p54_rx_data*
  store %struct.p54_rx_data* %16, %struct.p54_rx_data** %6, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %17)
  store %struct.ieee80211_rx_status* %18, %struct.ieee80211_rx_status** %7, align 8
  %19 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %20 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %19, i32 0, i32 8
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  store i64 48, i64* %9, align 8
  %23 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %24 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, 15
  store i32 %26, i32* %12, align 4
  %27 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %28 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %244

36:                                               ; preds = %2
  %37 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %38 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @P54_HDR_FLAG_DATA_IN_FCS_GOOD, align 4
  %41 = call i32 @cpu_to_le16(i32 %40)
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %36
  store i32 0, i32* %3, align 4
  br label %244

45:                                               ; preds = %36
  %46 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %47 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @P54_DECRYPT_OK, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %57

51:                                               ; preds = %45
  %52 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %53 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %54 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %45
  %58 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %59 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @P54_DECRYPT_FAIL_MICHAEL, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %65 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @P54_DECRYPT_FAIL_TKIP, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %75

69:                                               ; preds = %63, %57
  %70 = load i32, i32* @RX_FLAG_MMIC_ERROR, align 4
  %71 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %72 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %69, %63
  %76 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %77 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %78 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @p54_rssi_to_dbm(%struct.p54_common* %76, i32 %79)
  %81 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %82 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %81, i32 0, i32 8
  store i32 %80, i32* %82, align 8
  %83 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %84 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = and i32 %85, 16
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %75
  %89 = load i32, i32* @RX_ENC_FLAG_SHORTPRE, align 4
  %90 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %91 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %90, i32 0, i32 7
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %88, %75
  %95 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %96 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %95, i32 0, i32 3
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %94
  %107 = load i32, i32* %12, align 4
  %108 = icmp slt i32 %107, 4
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  br label %113

110:                                              ; preds = %106
  %111 = load i32, i32* %12, align 4
  %112 = sub nsw i32 %111, 4
  br label %113

113:                                              ; preds = %110, %109
  %114 = phi i32 [ 0, %109 ], [ %112, %110 ]
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %116 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  br label %121

117:                                              ; preds = %94
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %120 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %113
  %122 = load i32, i32* %8, align 4
  %123 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %123, i32 0, i32 6
  store i32 %122, i32* %124, align 8
  %125 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %126 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %125, i32 0, i32 3
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %135 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %134, i32 0, i32 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %137 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %136, i32 0, i32 6
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %140 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %142 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %141, i32 0, i32 5
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @le32_to_cpu(i32 %143)
  store i32 %144, i32* %10, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %147 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = icmp slt i32 %145, %148
  br i1 %149, label %150, label %155

150:                                              ; preds = %121
  %151 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %152 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %151, i32 0, i32 4
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  br label %155

155:                                              ; preds = %150, %121
  %156 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %157 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %156, i32 0, i32 4
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = shl i32 %159, 32
  %161 = load i32, i32* %10, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %164 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  %165 = load i32, i32* %10, align 4
  %166 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %167 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 8
  %168 = load i32, i32* @RX_FLAG_MACTIME_END, align 4
  %169 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %170 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %169, i32 0, i32 4
  %171 = load i32, i32* %170, align 8
  %172 = or i32 %171, %168
  store i32 %172, i32* %170, align 8
  %173 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %174 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @P54_HDR_FLAG_DATA_ALIGN, align 4
  %177 = call i32 @cpu_to_le16(i32 %176)
  %178 = and i32 %175, %177
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %155
  %181 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %182 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %181, i32 0, i32 4
  %183 = load i64*, i64** %182, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 0
  %185 = load i64, i64* %184, align 8
  %186 = load i64, i64* %9, align 8
  %187 = add i64 %186, %185
  store i64 %187, i64* %9, align 8
  br label %188

188:                                              ; preds = %180, %155
  %189 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %190 = load i64, i64* %9, align 8
  %191 = call i32 @skb_pull(%struct.sk_buff* %189, i64 %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %193 = load %struct.p54_rx_data*, %struct.p54_rx_data** %6, align 8
  %194 = getelementptr inbounds %struct.p54_rx_data, %struct.p54_rx_data* %193, i32 0, i32 3
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @le16_to_cpu(i32 %195)
  %197 = call i32 @skb_trim(%struct.sk_buff* %192, i32 %196)
  %198 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %199 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %198, i32 0, i32 0
  %200 = load i64, i64* %199, align 8
  %201 = inttoptr i64 %200 to %struct.ieee80211_hdr*
  %202 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  store i32 %203, i32* %11, align 4
  %204 = load i32, i32* %11, align 4
  %205 = call i64 @ieee80211_is_probe_resp(i32 %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %188
  %208 = load i32, i32* %11, align 4
  %209 = call i64 @ieee80211_is_beacon(i32 %208)
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %215

211:                                              ; preds = %207, %188
  %212 = call i32 (...) @ktime_get_boottime_ns()
  %213 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %214 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %213, i32 0, i32 3
  store i32 %212, i32* %214, align 4
  br label %215

215:                                              ; preds = %211, %207
  %216 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %217 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %216, i32 0, i32 3
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %223 = and i32 %221, %222
  %224 = call i64 @unlikely(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %230

226:                                              ; preds = %215
  %227 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %228 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %229 = call i32 @p54_pspoll_workaround(%struct.p54_common* %227, %struct.sk_buff* %228)
  br label %230

230:                                              ; preds = %226, %215
  %231 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %232 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %231, i32 0, i32 3
  %233 = load %struct.TYPE_9__*, %struct.TYPE_9__** %232, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %235 = call i32 @ieee80211_rx_irqsafe(%struct.TYPE_9__* %233, %struct.sk_buff* %234)
  %236 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %237 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %236, i32 0, i32 3
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %237, align 8
  %239 = load %struct.p54_common*, %struct.p54_common** %4, align 8
  %240 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %239, i32 0, i32 2
  %241 = load i32, i32* @P54_STATISTICS_UPDATE, align 4
  %242 = call i32 @msecs_to_jiffies(i32 %241)
  %243 = call i32 @ieee80211_queue_delayed_work(%struct.TYPE_9__* %238, i32* %240, i32 %242)
  store i32 -1, i32* %3, align 4
  br label %244

244:                                              ; preds = %230, %44, %35
  %245 = load i32, i32* %3, align 4
  ret i32 %245
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @p54_rssi_to_dbm(%struct.p54_common*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i64 @ieee80211_is_probe_resp(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @ktime_get_boottime_ns(...) #1

declare dso_local i32 @p54_pspoll_workaround(%struct.p54_common*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_rx_irqsafe(%struct.TYPE_9__*, %struct.sk_buff*) #1

declare dso_local i32 @ieee80211_queue_delayed_work(%struct.TYPE_9__*, i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
