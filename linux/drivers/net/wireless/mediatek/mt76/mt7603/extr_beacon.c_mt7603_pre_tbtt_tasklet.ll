; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_beacon.c_mt7603_pre_tbtt_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/mt7603/extr_beacon.c_mt7603_pre_tbtt_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7603_dev = type { i32*, i32*, i32, %struct.TYPE_13__, i32, %struct.mt7603_dev* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_11__*, i64 }
%struct.TYPE_11__ = type { %struct.mt76_queue* }
%struct.mt76_queue = type { i64, i32 }
%struct.beacon_bc_data = type { i32*, i32*, i32, %struct.TYPE_13__, i32, %struct.beacon_bc_data* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.ieee80211_vif* }
%struct.ieee80211_vif = type { i64 }
%struct.mt7603_vif = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@MT_TXQ_BEACON = common dso_local global i64 0, align 8
@IEEE80211_IFACE_ITER_RESUME_ALL = common dso_local global i32 0, align 4
@mt7603_update_beacon_iter = common dso_local global i32 0, align 4
@MT_WF_ARB_CAB_FLUSH = common dso_local global i32 0, align 4
@MT_TXQ_CAB = common dso_local global i64 0, align 8
@mt7603_add_buffered_bc = common dso_local global i32 0, align 4
@MT_WF_ARB_CAB_START = common dso_local global i32 0, align 4
@MT7603_MAX_INTERFACES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt7603_pre_tbtt_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mt7603_dev*, align 8
  %4 = alloca %struct.mt76_queue*, align 8
  %5 = alloca %struct.beacon_bc_data, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ieee80211_tx_info*, align 8
  %10 = alloca %struct.ieee80211_vif*, align 8
  %11 = alloca %struct.mt7603_vif*, align 8
  store i64 %0, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = inttoptr i64 %12 to %struct.mt7603_dev*
  store %struct.mt7603_dev* %13, %struct.mt7603_dev** %3, align 8
  %14 = bitcast %struct.beacon_bc_data* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 64, i1 false)
  %15 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %16 = call %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev* %15)
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  br label %225

24:                                               ; preds = %1
  %25 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %26 = bitcast %struct.mt7603_dev* %25 to %struct.beacon_bc_data*
  %27 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 5
  store %struct.beacon_bc_data* %26, %struct.beacon_bc_data** %27, align 8
  %28 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %29 = call i32 @__skb_queue_head_init(i32* %28)
  %30 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  %34 = load i64, i64* @MT_TXQ_BEACON, align 8
  %35 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 0
  %37 = load %struct.mt76_queue*, %struct.mt76_queue** %36, align 8
  store %struct.mt76_queue* %37, %struct.mt76_queue** %4, align 8
  %38 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %39 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %38, i32 0, i32 1
  %40 = call i32 @spin_lock_bh(i32* %39)
  %41 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %42 = call %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev* %41)
  %43 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %44 = load i32, i32* @mt7603_update_beacon_iter, align 4
  %45 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %46 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_12__* %42, i32 %43, i32 %44, %struct.mt7603_dev* %45)
  %47 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %48 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %49 = call i32 @mt76_queue_kick(%struct.mt7603_dev* %47, %struct.mt76_queue* %48)
  %50 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %51 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %50, i32 0, i32 1
  %52 = call i32 @spin_unlock_bh(i32* %51)
  %53 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %54 = load i32, i32* @MT_WF_ARB_CAB_FLUSH, align 4
  %55 = call i32 @GENMASK(i32 30, i32 16)
  %56 = call i32 @BIT(i32 0)
  %57 = or i32 %55, %56
  %58 = call i32 @mt76_wr(%struct.mt7603_dev* %53, i32 %54, i32 %57)
  %59 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %60 = load i64, i64* @MT_TXQ_CAB, align 8
  %61 = call i32 @mt76_queue_tx_cleanup(%struct.mt7603_dev* %59, i64 %60, i32 0)
  %62 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %63 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %62, i32 0, i32 3
  %64 = call i32 @mt76_csa_check(%struct.TYPE_13__* %63)
  %65 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %66 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %24
  br label %200

71:                                               ; preds = %24
  %72 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %73 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %74, align 8
  %76 = load i64, i64* @MT_TXQ_CAB, align 8
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load %struct.mt76_queue*, %struct.mt76_queue** %78, align 8
  store %struct.mt76_queue* %79, %struct.mt76_queue** %4, align 8
  br label %80

80:                                               ; preds = %98, %71
  %81 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %82 = call i32 @skb_queue_len(i32* %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %84 = call %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev* %83)
  %85 = load i32, i32* @IEEE80211_IFACE_ITER_RESUME_ALL, align 4
  %86 = load i32, i32* @mt7603_add_buffered_bc, align 4
  %87 = bitcast %struct.beacon_bc_data* %5 to %struct.mt7603_dev*
  %88 = call i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_12__* %84, i32 %85, i32 %86, %struct.mt7603_dev* %87)
  br label %89

89:                                               ; preds = %80
  %90 = load i32, i32* %8, align 4
  %91 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %92 = call i32 @skb_queue_len(i32* %91)
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %98

94:                                               ; preds = %89
  %95 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %96 = call i32 @skb_queue_len(i32* %95)
  %97 = icmp slt i32 %96, 8
  br label %98

98:                                               ; preds = %94, %89
  %99 = phi i1 [ false, %89 ], [ %97, %94 ]
  br i1 %99, label %80, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %102 = call i64 @skb_queue_empty(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %200

105:                                              ; preds = %100
  store i32 0, i32* %7, align 4
  br label %106

106:                                              ; preds = %129, %105
  %107 = load i32, i32* %7, align 4
  %108 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = call i32 @ARRAY_SIZE(i32* %109)
  %111 = icmp slt i32 %107, %110
  br i1 %111, label %112, label %132

112:                                              ; preds = %106
  %113 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %112
  br label %129

121:                                              ; preds = %112
  %122 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 0
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %7, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @mt76_skb_set_moredata(i32 %127, i32 0)
  br label %129

129:                                              ; preds = %121, %120
  %130 = load i32, i32* %7, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %7, align 4
  br label %106

132:                                              ; preds = %106
  %133 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %134 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %133, i32 0, i32 1
  %135 = call i32 @spin_lock_bh(i32* %134)
  br label %136

136:                                              ; preds = %140, %132
  %137 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 4
  %138 = call %struct.sk_buff* @__skb_dequeue(i32* %137)
  store %struct.sk_buff* %138, %struct.sk_buff** %6, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  br i1 %139, label %140, label %158

140:                                              ; preds = %136
  %141 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %142 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %141)
  store %struct.ieee80211_tx_info* %142, %struct.ieee80211_tx_info** %9, align 8
  %143 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %9, align 8
  %144 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %145, align 8
  store %struct.ieee80211_vif* %146, %struct.ieee80211_vif** %10, align 8
  %147 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %10, align 8
  %148 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = inttoptr i64 %149 to %struct.mt7603_vif*
  store %struct.mt7603_vif* %150, %struct.mt7603_vif** %11, align 8
  %151 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %152 = load i64, i64* @MT_TXQ_CAB, align 8
  %153 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %154 = load %struct.mt7603_vif*, %struct.mt7603_vif** %11, align 8
  %155 = getelementptr inbounds %struct.mt7603_vif, %struct.mt7603_vif* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %155, i32 0, i32 0
  %157 = call i32 @mt76_tx_queue_skb(%struct.mt7603_dev* %151, i64 %152, %struct.sk_buff* %153, i32* %156, i32* null)
  br label %136

158:                                              ; preds = %136
  %159 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %160 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %161 = call i32 @mt76_queue_kick(%struct.mt7603_dev* %159, %struct.mt76_queue* %160)
  %162 = load %struct.mt76_queue*, %struct.mt76_queue** %4, align 8
  %163 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %162, i32 0, i32 1
  %164 = call i32 @spin_unlock_bh(i32* %163)
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %185, %158
  %166 = load i32, i32* %7, align 4
  %167 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = call i32 @ARRAY_SIZE(i32* %168)
  %170 = icmp slt i32 %166, %169
  br i1 %170, label %171, label %188

171:                                              ; preds = %165
  %172 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %173 = load i32, i32* %7, align 4
  %174 = call i32 @MT_WF_ARB_CAB_COUNT_B0_REG(i32 %173)
  %175 = getelementptr inbounds %struct.beacon_bc_data, %struct.beacon_bc_data* %5, i32 0, i32 1
  %176 = load i32*, i32** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32, i32* %176, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %7, align 4
  %182 = call i32 @MT_WF_ARB_CAB_COUNT_B0_SHIFT(i32 %181)
  %183 = shl i32 %180, %182
  %184 = call i32 @mt76_wr(%struct.mt7603_dev* %172, i32 %174, i32 %183)
  br label %185

185:                                              ; preds = %171
  %186 = load i32, i32* %7, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %7, align 4
  br label %165

188:                                              ; preds = %165
  %189 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %190 = load i32, i32* @MT_WF_ARB_CAB_START, align 4
  %191 = call i32 @MT_WF_ARB_CAB_START_BSSn(i32 0)
  %192 = call i32 @MT_WF_ARB_CAB_START_BSS0n(i32 1)
  %193 = load i32, i32* @MT7603_MAX_INTERFACES, align 4
  %194 = sub nsw i32 %193, 1
  %195 = shl i32 1, %194
  %196 = sub nsw i32 %195, 1
  %197 = mul nsw i32 %192, %196
  %198 = or i32 %191, %197
  %199 = call i32 @mt76_wr(%struct.mt7603_dev* %189, i32 %190, i32 %198)
  br label %200

200:                                              ; preds = %188, %104, %70
  %201 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %202 = load i64, i64* @MT_TXQ_BEACON, align 8
  %203 = call i32 @mt76_queue_tx_cleanup(%struct.mt7603_dev* %201, i64 %202, i32 0)
  %204 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %205 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %204, i32 0, i32 3
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %206, align 8
  %208 = load i64, i64* @MT_TXQ_BEACON, align 8
  %209 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i64 %208
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load %struct.mt76_queue*, %struct.mt76_queue** %210, align 8
  %212 = getelementptr inbounds %struct.mt76_queue, %struct.mt76_queue* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %215 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i64 @hweight8(i32 %217)
  %219 = icmp sgt i64 %213, %218
  br i1 %219, label %220, label %225

220:                                              ; preds = %200
  %221 = load %struct.mt7603_dev*, %struct.mt7603_dev** %3, align 8
  %222 = getelementptr inbounds %struct.mt7603_dev, %struct.mt7603_dev* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %23, %220, %200
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_12__* @mt76_hw(%struct.mt7603_dev*) #2

declare dso_local i32 @__skb_queue_head_init(i32*) #2

declare dso_local i32 @spin_lock_bh(i32*) #2

declare dso_local i32 @ieee80211_iterate_active_interfaces_atomic(%struct.TYPE_12__*, i32, i32, %struct.mt7603_dev*) #2

declare dso_local i32 @mt76_queue_kick(%struct.mt7603_dev*, %struct.mt76_queue*) #2

declare dso_local i32 @spin_unlock_bh(i32*) #2

declare dso_local i32 @mt76_wr(%struct.mt7603_dev*, i32, i32) #2

declare dso_local i32 @GENMASK(i32, i32) #2

declare dso_local i32 @BIT(i32) #2

declare dso_local i32 @mt76_queue_tx_cleanup(%struct.mt7603_dev*, i64, i32) #2

declare dso_local i32 @mt76_csa_check(%struct.TYPE_13__*) #2

declare dso_local i32 @skb_queue_len(i32*) #2

declare dso_local i64 @skb_queue_empty(i32*) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

declare dso_local i32 @mt76_skb_set_moredata(i32, i32) #2

declare dso_local %struct.sk_buff* @__skb_dequeue(i32*) #2

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #2

declare dso_local i32 @mt76_tx_queue_skb(%struct.mt7603_dev*, i64, %struct.sk_buff*, i32*, i32*) #2

declare dso_local i32 @MT_WF_ARB_CAB_COUNT_B0_REG(i32) #2

declare dso_local i32 @MT_WF_ARB_CAB_COUNT_B0_SHIFT(i32) #2

declare dso_local i32 @MT_WF_ARB_CAB_START_BSSn(i32) #2

declare dso_local i32 @MT_WF_ARB_CAB_START_BSS0n(i32) #2

declare dso_local i64 @hweight8(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
