; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_send_burst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_tx.c_mt76_txq_send_burst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, i32)*, i32 (%struct.mt76_dev*, %struct.mt76_queue*)* }
%struct.sk_buff = type { i32 }
%struct.mt76_wcid = type { i32, i32 }
%struct.mt76_queue = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.mt76_sw_queue* }
%struct.mt76_sw_queue = type { i32, %struct.mt76_queue* }
%struct.mt76_txq = type { i32, %struct.mt76_wcid* }
%struct.ieee80211_txq = type { i32, i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }

@MT_WCID_FLAG_PS = common dso_local global i32 0, align 4
@MT_WCID_TX_INFO_SET = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@MT76_RESET = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt76_dev*, %struct.mt76_sw_queue*, %struct.mt76_txq*, i32*)* @mt76_txq_send_burst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt76_txq_send_burst(%struct.mt76_dev* %0, %struct.mt76_sw_queue* %1, %struct.mt76_txq* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mt76_dev*, align 8
  %7 = alloca %struct.mt76_sw_queue*, align 8
  %8 = alloca %struct.mt76_txq*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_txq*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.mt76_wcid*, align 8
  %13 = alloca %struct.mt76_queue*, align 8
  %14 = alloca %struct.ieee80211_tx_info*, align 8
  %15 = alloca %struct.sk_buff*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.ieee80211_tx_rate, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.mt76_dev* %0, %struct.mt76_dev** %6, align 8
  store %struct.mt76_sw_queue* %1, %struct.mt76_sw_queue** %7, align 8
  store %struct.mt76_txq* %2, %struct.mt76_txq** %8, align 8
  store i32* %3, i32** %9, align 8
  %23 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %24 = call %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq* %23)
  store %struct.ieee80211_txq* %24, %struct.ieee80211_txq** %10, align 8
  %25 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %26 = call i32 @mt76_txq_get_qid(%struct.ieee80211_txq* %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %28 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %27, i32 0, i32 1
  %29 = load %struct.mt76_wcid*, %struct.mt76_wcid** %28, align 8
  store %struct.mt76_wcid* %29, %struct.mt76_wcid** %12, align 8
  %30 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %31 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %30, i32 0, i32 1
  %32 = load %struct.mt76_queue*, %struct.mt76_queue** %31, align 8
  store %struct.mt76_queue* %32, %struct.mt76_queue** %13, align 8
  store i32 1, i32* %16, align 4
  %33 = load i32, i32* @MT_WCID_FLAG_PS, align 4
  %34 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %35 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %34, i32 0, i32 1
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32*, i32** %9, align 8
  store i32 1, i32* %39, align 4
  store i32 0, i32* %5, align 4
  br label %240

40:                                               ; preds = %4
  %41 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %42 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %43 = call %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev* %41, %struct.mt76_txq* %42, i32 0)
  store %struct.sk_buff* %43, %struct.sk_buff** %15, align 8
  %44 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %45 = icmp ne %struct.sk_buff* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %40
  %47 = load i32*, i32** %9, align 8
  store i32 1, i32* %47, align 4
  store i32 0, i32* %5, align 4
  br label %240

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %50 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %49)
  store %struct.ieee80211_tx_info* %50, %struct.ieee80211_tx_info** %14, align 8
  %51 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %52 = getelementptr inbounds %struct.mt76_wcid, %struct.mt76_wcid* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MT_WCID_TX_INFO_SET, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %70, label %57

57:                                               ; preds = %48
  %58 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %59 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %62 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %65 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %66 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %67, align 8
  %69 = call i32 @ieee80211_get_tx_rates(i32 %60, i32 %63, %struct.sk_buff* %64, %struct.ieee80211_tx_rate* %68, i32 1)
  br label %70

70:                                               ; preds = %57, %48
  %71 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %72 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %73, align 8
  %75 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %74, i64 0
  %76 = bitcast %struct.ieee80211_tx_rate* %18 to i8*
  %77 = bitcast %struct.ieee80211_tx_rate* %75 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %76, i8* align 4 %77, i64 4, i1 false)
  %78 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %79 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %82 = and i32 %80, %81
  store i32 %82, i32* %20, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %84 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %88 = and i32 %86, %87
  store i32 %88, i32* %19, align 4
  %89 = load i32, i32* %19, align 4
  %90 = icmp ne i32 %89, 0
  %91 = zext i1 %90 to i64
  %92 = select i1 %90, i32 16, i32 3
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %19, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %70
  %96 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %98 = call i32 @mt76_check_agg_ssn(%struct.mt76_txq* %96, %struct.sk_buff* %97)
  br label %99

99:                                               ; preds = %95, %70
  %100 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %101 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %100, i32 0, i32 1
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = load i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, i32)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, i32)** %103, align 8
  %105 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %108 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %109 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %110 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 %104(%struct.mt76_dev* %105, i32 %106, %struct.sk_buff* %107, %struct.mt76_wcid* %108, i32 %111)
  store i32 %112, i32* %21, align 4
  %113 = load i32, i32* %21, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %99
  %116 = load i32, i32* %21, align 4
  store i32 %116, i32* %5, align 4
  br label %240

117:                                              ; preds = %99
  br label %118

118:                                              ; preds = %197, %117
  %119 = load i32, i32* %20, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %118
  br label %201

122:                                              ; preds = %118
  %123 = load i32, i32* @MT76_RESET, align 4
  %124 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %125 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %124, i32 0, i32 2
  %126 = call i64 @test_bit(i32 %123, i32* %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %122
  %129 = load i32, i32* @EBUSY, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %5, align 4
  br label %240

131:                                              ; preds = %122
  %132 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %133 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %134 = call %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev* %132, %struct.mt76_txq* %133, i32 0)
  store %struct.sk_buff* %134, %struct.sk_buff** %15, align 8
  %135 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %136 = icmp ne %struct.sk_buff* %135, null
  br i1 %136, label %139, label %137

137:                                              ; preds = %131
  %138 = load i32*, i32** %9, align 8
  store i32 1, i32* %138, align 4
  br label %201

139:                                              ; preds = %131
  %140 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %141 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %140)
  store %struct.ieee80211_tx_info* %141, %struct.ieee80211_tx_info** %14, align 8
  %142 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %143 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %146 = and i32 %144, %145
  store i32 %146, i32* %22, align 4
  %147 = load i32, i32* %19, align 4
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %147, %148
  br i1 %149, label %157, label %150

150:                                              ; preds = %139
  %151 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %152 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %150, %139
  %158 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %159 = getelementptr inbounds %struct.mt76_txq, %struct.mt76_txq* %158, i32 0, i32 0
  %160 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %161 = call i32 @skb_queue_tail(i32* %159, %struct.sk_buff* %160)
  br label %201

162:                                              ; preds = %150
  %163 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %14, align 8
  %164 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %165, align 8
  %167 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %166, i64 0
  %168 = bitcast %struct.ieee80211_tx_rate* %167 to i8*
  %169 = bitcast %struct.ieee80211_tx_rate* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %168, i8* align 4 %169, i64 4, i1 false)
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %162
  %173 = load %struct.mt76_txq*, %struct.mt76_txq** %8, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %175 = call i32 @mt76_check_agg_ssn(%struct.mt76_txq* %173, %struct.sk_buff* %174)
  br label %176

176:                                              ; preds = %172, %162
  %177 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %178 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %177, i32 0, i32 1
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, i32)*, i32 (%struct.mt76_dev*, i32, %struct.sk_buff*, %struct.mt76_wcid*, i32)** %180, align 8
  %182 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %183 = load i32, i32* %11, align 4
  %184 = load %struct.sk_buff*, %struct.sk_buff** %15, align 8
  %185 = load %struct.mt76_wcid*, %struct.mt76_wcid** %12, align 8
  %186 = load %struct.ieee80211_txq*, %struct.ieee80211_txq** %10, align 8
  %187 = getelementptr inbounds %struct.ieee80211_txq, %struct.ieee80211_txq* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = call i32 %181(%struct.mt76_dev* %182, i32 %183, %struct.sk_buff* %184, %struct.mt76_wcid* %185, i32 %188)
  store i32 %189, i32* %21, align 4
  %190 = load i32, i32* %21, align 4
  %191 = icmp slt i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %176
  %193 = load i32, i32* %21, align 4
  store i32 %193, i32* %5, align 4
  br label %240

194:                                              ; preds = %176
  %195 = load i32, i32* %16, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %16, align 4
  br label %197

197:                                              ; preds = %194
  %198 = load i32, i32* %16, align 4
  %199 = load i32, i32* %17, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %118, label %201

201:                                              ; preds = %197, %157, %137, %121
  %202 = load i32, i32* %20, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %230, label %204

204:                                              ; preds = %201
  %205 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %206 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %207 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = sext i32 %208 to i64
  %210 = sub i64 0, %209
  %211 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %205, i64 %210
  %212 = load %struct.mt76_queue*, %struct.mt76_queue** %13, align 8
  %213 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %212, i32 0, i32 0
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %213, align 8
  %215 = load i32, i32* %21, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %217, i32 0, i32 1
  store %struct.mt76_sw_queue* %211, %struct.mt76_sw_queue** %218, align 8
  %219 = load %struct.mt76_queue*, %struct.mt76_queue** %13, align 8
  %220 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %219, i32 0, i32 0
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %220, align 8
  %222 = load i32, i32* %21, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i64 %223
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  store i32 1, i32* %225, align 8
  %226 = load %struct.mt76_sw_queue*, %struct.mt76_sw_queue** %7, align 8
  %227 = getelementptr inbounds %struct.mt76_sw_queue, %struct.mt76_sw_queue* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %227, align 8
  br label %230

230:                                              ; preds = %204, %201
  %231 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %232 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %231, i32 0, i32 1
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %233, i32 0, i32 1
  %235 = load i32 (%struct.mt76_dev*, %struct.mt76_queue*)*, i32 (%struct.mt76_dev*, %struct.mt76_queue*)** %234, align 8
  %236 = load %struct.mt76_dev*, %struct.mt76_dev** %6, align 8
  %237 = load %struct.mt76_queue*, %struct.mt76_queue** %13, align 8
  %238 = call i32 %235(%struct.mt76_dev* %236, %struct.mt76_queue* %237)
  %239 = load i32, i32* %16, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %230, %192, %128, %115, %46, %38
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local %struct.ieee80211_txq* @mtxq_to_txq(%struct.mt76_txq*) #1

declare dso_local i32 @mt76_txq_get_qid(%struct.ieee80211_txq*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @mt76_txq_dequeue(%struct.mt76_dev*, %struct.mt76_txq*, i32) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_get_tx_rates(i32, i32, %struct.sk_buff*, %struct.ieee80211_tx_rate*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @mt76_check_agg_ssn(%struct.mt76_txq*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
