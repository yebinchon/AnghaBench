; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_xmit_frame_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_xmit_frame_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.igb_ring = type { i64, i32, %struct.igb_tx_buffer* }
%struct.igb_tx_buffer = type { i32, i32, %struct.sk_buff*, i32, i32 }
%struct.igb_adapter = type { i32, i32, %struct.TYPE_7__, %struct.sk_buff*, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { i16, i32, i32* }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i64 0, align 8
@__IGB_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_TSTAMP = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@e1000_82576 = common dso_local global i64 0, align 8
@IGB_TX_FLAGS_VLAN = common dso_local global i32 0, align 4
@IGB_TX_FLAGS_VLAN_SHIFT = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @igb_xmit_frame_ring(%struct.sk_buff* %0, %struct.igb_ring* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.igb_tx_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.igb_adapter*, align 8
  %14 = alloca %struct.igb_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.igb_ring* %1, %struct.igb_ring** %5, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = call i32 @skb_headlen(%struct.sk_buff* %15)
  %17 = call i64 @TXD_USE_COUNT(i32 %16)
  store i64 %17, i64* %10, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i32 @vlan_get_protocol(%struct.sk_buff* %18)
  store i32 %19, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i16 0, i16* %9, align 2
  br label %20

20:                                               ; preds = %41, %2
  %21 = load i16, i16* %9, align 2
  %22 = zext i16 %21 to i32
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = icmp slt i32 %22, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %20
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32*, i32** %32, align 8
  %34 = load i16, i16* %9, align 2
  %35 = zext i16 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @skb_frag_size(i32* %36)
  %38 = call i64 @TXD_USE_COUNT(i32 %37)
  %39 = load i64, i64* %10, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %10, align 8
  br label %41

41:                                               ; preds = %29
  %42 = load i16, i16* %9, align 2
  %43 = add i16 %42, 1
  store i16 %43, i16* %9, align 2
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %46 = load i64, i64* %10, align 8
  %47 = add nsw i64 %46, 3
  %48 = call i64 @igb_maybe_stop_tx(%struct.igb_ring* %45, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %51, i32* %3, align 4
  br label %216

52:                                               ; preds = %44
  %53 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %54 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %53, i32 0, i32 2
  %55 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %54, align 8
  %56 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %57 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %55, i64 %58
  store %struct.igb_tx_buffer* %59, %struct.igb_tx_buffer** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %61 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %61, i32 0, i32 2
  store %struct.sk_buff* %60, %struct.sk_buff** %62, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %67 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 4
  %68 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %68, i32 0, i32 0
  store i32 1, i32* %69, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %70)
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %75 = and i32 %73, %74
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %130

78:                                               ; preds = %52
  %79 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %80 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = call %struct.igb_adapter* @netdev_priv(i32 %81)
  store %struct.igb_adapter* %82, %struct.igb_adapter** %13, align 8
  %83 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %84 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %83, i32 0, i32 6
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @HWTSTAMP_TX_ON, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %124

89:                                               ; preds = %78
  %90 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %91 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %92 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %91, i32 0, i32 0
  %93 = call i32 @test_and_set_bit_lock(i32 %90, i32* %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %124, label %95

95:                                               ; preds = %89
  %96 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = call %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff* %97)
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @IGB_TX_FLAGS_TSTAMP, align 4
  %103 = load i32, i32* %8, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %8, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = call %struct.sk_buff* @skb_get(%struct.sk_buff* %105)
  %107 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %108 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %107, i32 0, i32 3
  store %struct.sk_buff* %106, %struct.sk_buff** %108, align 8
  %109 = load i32, i32* @jiffies, align 4
  %110 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %111 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 4
  %112 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %113 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %112, i32 0, i32 2
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @e1000_82576, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %123

119:                                              ; preds = %95
  %120 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %121 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %120, i32 0, i32 1
  %122 = call i32 @schedule_work(i32* %121)
  br label %123

123:                                              ; preds = %119, %95
  br label %129

124:                                              ; preds = %89, %78
  %125 = load %struct.igb_adapter*, %struct.igb_adapter** %13, align 8
  %126 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %125, i32 0, i32 4
  %127 = load i32, i32* %126, align 8
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 8
  br label %129

129:                                              ; preds = %124, %123
  br label %130

130:                                              ; preds = %129, %52
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %144

134:                                              ; preds = %130
  %135 = load i32, i32* @IGB_TX_FLAGS_VLAN, align 4
  %136 = load i32, i32* %8, align 4
  %137 = or i32 %136, %135
  store i32 %137, i32* %8, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %138)
  %140 = load i32, i32* @IGB_TX_FLAGS_VLAN_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %8, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %8, align 4
  br label %144

144:                                              ; preds = %134, %130
  %145 = load i32, i32* %8, align 4
  %146 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %147 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i32, i32* %11, align 4
  %149 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %150 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %149, i32 0, i32 3
  store i32 %148, i32* %150, align 8
  %151 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %152 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %153 = call i32 @igb_tso(%struct.igb_ring* %151, %struct.igb_tx_buffer* %152, i32* %12)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* %7, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %144
  br label %174

157:                                              ; preds = %144
  %158 = load i32, i32* %7, align 4
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %164, label %160

160:                                              ; preds = %157
  %161 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %162 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %163 = call i32 @igb_tx_csum(%struct.igb_ring* %161, %struct.igb_tx_buffer* %162)
  br label %164

164:                                              ; preds = %160, %157
  br label %165

165:                                              ; preds = %164
  %166 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %167 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @igb_tx_map(%struct.igb_ring* %166, %struct.igb_tx_buffer* %167, i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %165
  br label %181

172:                                              ; preds = %165
  %173 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %173, i32* %3, align 4
  br label %216

174:                                              ; preds = %156
  %175 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %176 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %175, i32 0, i32 2
  %177 = load %struct.sk_buff*, %struct.sk_buff** %176, align 8
  %178 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %177)
  %179 = load %struct.igb_tx_buffer*, %struct.igb_tx_buffer** %6, align 8
  %180 = getelementptr inbounds %struct.igb_tx_buffer, %struct.igb_tx_buffer* %179, i32 0, i32 2
  store %struct.sk_buff* null, %struct.sk_buff** %180, align 8
  br label %181

181:                                              ; preds = %174, %171
  %182 = load i32, i32* %8, align 4
  %183 = load i32, i32* @IGB_TX_FLAGS_TSTAMP, align 4
  %184 = and i32 %182, %183
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %181
  %188 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %189 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 8
  %191 = call %struct.igb_adapter* @netdev_priv(i32 %190)
  store %struct.igb_adapter* %191, %struct.igb_adapter** %14, align 8
  %192 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %193 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %192, i32 0, i32 3
  %194 = load %struct.sk_buff*, %struct.sk_buff** %193, align 8
  %195 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %194)
  %196 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %197 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %196, i32 0, i32 3
  store %struct.sk_buff* null, %struct.sk_buff** %197, align 8
  %198 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %199 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @e1000_82576, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %209

205:                                              ; preds = %187
  %206 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %207 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %206, i32 0, i32 1
  %208 = call i32 @cancel_work_sync(i32* %207)
  br label %209

209:                                              ; preds = %205, %187
  %210 = load i32, i32* @__IGB_PTP_TX_IN_PROGRESS, align 4
  %211 = load %struct.igb_adapter*, %struct.igb_adapter** %14, align 8
  %212 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %211, i32 0, i32 0
  %213 = call i32 @clear_bit_unlock(i32 %210, i32* %212)
  br label %214

214:                                              ; preds = %209, %181
  %215 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %215, i32* %3, align 4
  br label %216

216:                                              ; preds = %214, %172, %50
  %217 = load i32, i32* %3, align 4
  ret i32 %217
}

declare dso_local i64 @TXD_USE_COUNT(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_8__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @igb_maybe_stop_tx(%struct.igb_ring*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.igb_adapter* @netdev_priv(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32*) #1

declare dso_local %struct.sk_buff* @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @igb_tso(%struct.igb_ring*, %struct.igb_tx_buffer*, i32*) #1

declare dso_local i32 @igb_tx_csum(%struct.igb_ring*, %struct.igb_tx_buffer*) #1

declare dso_local i64 @igb_tx_map(%struct.igb_ring*, %struct.igb_tx_buffer*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
