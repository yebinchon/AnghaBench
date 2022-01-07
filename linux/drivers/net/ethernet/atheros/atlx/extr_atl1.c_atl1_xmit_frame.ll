; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i32 }
%struct.atl1_adapter = type { %struct.TYPE_3__*, %struct.atl1_tpd_ring }
%struct.TYPE_3__ = type { i32 }
%struct.atl1_tpd_ring = type { i32 }
%struct.tx_packet_desc = type { i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ATL1_MAX_TX_BUF_LEN = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"tx busy\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@TPD_INS_VL_TAG_SHIFT = common dso_local global i32 0, align 4
@TPD_VLANTAG_MASK = common dso_local global i32 0, align 4
@TPD_VLANTAG_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @atl1_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_xmit_frame(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.atl1_adapter*, align 8
  %7 = alloca %struct.atl1_tpd_ring*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tx_packet_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %19)
  store %struct.atl1_adapter* %20, %struct.atl1_adapter** %6, align 8
  %21 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %22 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %21, i32 0, i32 1
  store %struct.atl1_tpd_ring* %22, %struct.atl1_tpd_ring** %7, align 8
  store i32 1, i32* %10, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = call i32 @skb_headlen(%struct.sk_buff* %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %27, 0
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %2
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %33)
  %35 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %35, i32* %3, align 4
  br label %210

36:                                               ; preds = %2
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %41

41:                                               ; preds = %62, %36
  %42 = load i32, i32* %16, align 4
  %43 = load i32, i32* %14, align 4
  %44 = icmp ult i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i32, i32* %16, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = call i32 @skb_frag_size(i32* %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = load i32, i32* @ATL1_MAX_TX_BUF_LEN, align 4
  %56 = add i32 %54, %55
  %57 = sub i32 %56, 1
  %58 = load i32, i32* @ATL1_MAX_TX_BUF_LEN, align 4
  %59 = udiv i32 %57, %58
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, %59
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %45
  %63 = load i32, i32* %16, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %16, align 4
  br label %41

65:                                               ; preds = %41
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %66)
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32, i32* @ETH_P_IP, align 4
  %77 = call i64 @htons(i32 %76)
  %78 = icmp eq i64 %75, %77
  br i1 %78, label %79, label %111

79:                                               ; preds = %72
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call i32 @skb_transport_offset(%struct.sk_buff* %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = call i32 @tcp_hdrlen(%struct.sk_buff* %82)
  %84 = add i32 %81, %83
  store i32 %84, i32* %17, align 4
  %85 = load i32, i32* %17, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp ugt i32 %85, %86
  %88 = zext i1 %87 to i32
  %89 = call i64 @unlikely(i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %79
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %92)
  %94 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %94, i32* %3, align 4
  br label %210

95:                                               ; preds = %79
  %96 = load i32, i32* %17, align 4
  %97 = load i32, i32* %8, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %110

99:                                               ; preds = %95
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %17, align 4
  %102 = sub i32 %100, %101
  %103 = load i32, i32* @ATL1_MAX_TX_BUF_LEN, align 4
  %104 = add i32 %102, %103
  %105 = sub i32 %104, 1
  %106 = load i32, i32* @ATL1_MAX_TX_BUF_LEN, align 4
  %107 = udiv i32 %105, %106
  %108 = load i32, i32* %10, align 4
  %109 = add i32 %108, %107
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %99, %95
  br label %111

111:                                              ; preds = %110, %72
  br label %112

112:                                              ; preds = %111, %65
  %113 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %114 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %113, i32 0, i32 1
  %115 = call i32 @atl1_tpd_avail(%struct.atl1_tpd_ring* %114)
  %116 = load i32, i32* %10, align 4
  %117 = icmp slt i32 %115, %116
  br i1 %117, label %118, label %133

118:                                              ; preds = %112
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @netif_stop_queue(%struct.net_device* %119)
  %121 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %122 = call i64 @netif_msg_tx_queued(%struct.atl1_adapter* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %131

124:                                              ; preds = %118
  %125 = load i32, i32* @KERN_DEBUG, align 4
  %126 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %127 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %126, i32 0, i32 0
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 0
  %130 = call i32 @dev_printk(i32 %125, i32* %129, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %124, %118
  %132 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %132, i32* %3, align 4
  br label %210

133:                                              ; preds = %112
  %134 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %135 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %7, align 8
  %136 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %135, i32 0, i32 0
  %137 = call i64 @atomic_read(i32* %136)
  %138 = trunc i64 %137 to i32
  %139 = call %struct.tx_packet_desc* @ATL1_TPD_DESC(%struct.atl1_tpd_ring* %134, i32 %138)
  store %struct.tx_packet_desc* %139, %struct.tx_packet_desc** %12, align 8
  %140 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %141 = call i32 @memset(%struct.tx_packet_desc* %140, i32 0, i32 8)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %172

145:                                              ; preds = %133
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %146)
  store i32 %147, i32* %13, align 4
  %148 = load i32, i32* %13, align 4
  %149 = shl i32 %148, 4
  %150 = load i32, i32* %13, align 4
  %151 = ashr i32 %150, 13
  %152 = or i32 %149, %151
  %153 = load i32, i32* %13, align 4
  %154 = ashr i32 %153, 9
  %155 = and i32 %154, 8
  %156 = or i32 %152, %155
  store i32 %156, i32* %13, align 4
  %157 = load i32, i32* @TPD_INS_VL_TAG_SHIFT, align 4
  %158 = shl i32 1, %157
  %159 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %160 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load i32, i32* %13, align 4
  %164 = load i32, i32* @TPD_VLANTAG_MASK, align 4
  %165 = and i32 %163, %164
  %166 = load i32, i32* @TPD_VLANTAG_SHIFT, align 4
  %167 = shl i32 %165, %166
  %168 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %169 = getelementptr inbounds %struct.tx_packet_desc, %struct.tx_packet_desc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %145, %133
  %173 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %174 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %175 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %176 = call i32 @atl1_tso(%struct.atl1_adapter* %173, %struct.sk_buff* %174, %struct.tx_packet_desc* %175)
  store i32 %176, i32* %9, align 4
  %177 = load i32, i32* %9, align 4
  %178 = icmp slt i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %172
  %180 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %181 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %180)
  %182 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %182, i32* %3, align 4
  br label %210

183:                                              ; preds = %172
  %184 = load i32, i32* %9, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %183
  %187 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %188 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %189 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %190 = call i32 @atl1_tx_csum(%struct.atl1_adapter* %187, %struct.sk_buff* %188, %struct.tx_packet_desc* %189)
  store i32 %190, i32* %11, align 4
  %191 = load i32, i32* %11, align 4
  %192 = icmp slt i32 %191, 0
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %194)
  %196 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %196, i32* %3, align 4
  br label %210

197:                                              ; preds = %186
  br label %198

198:                                              ; preds = %197, %183
  %199 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %202 = call i32 @atl1_tx_map(%struct.atl1_adapter* %199, %struct.sk_buff* %200, %struct.tx_packet_desc* %201)
  %203 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %204 = load i32, i32* %10, align 4
  %205 = load %struct.tx_packet_desc*, %struct.tx_packet_desc** %12, align 8
  %206 = call i32 @atl1_tx_queue(%struct.atl1_adapter* %203, i32 %204, %struct.tx_packet_desc* %205)
  %207 = load %struct.atl1_adapter*, %struct.atl1_adapter** %6, align 8
  %208 = call i32 @atl1_update_mailbox(%struct.atl1_adapter* %207)
  %209 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %209, i32* %3, align 4
  br label %210

210:                                              ; preds = %198, %193, %179, %131, %91, %32
  %211 = load i32, i32* %3, align 4
  ret i32 %211
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local i32 @atl1_tpd_avail(%struct.atl1_tpd_ring*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @netif_msg_tx_queued(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local %struct.tx_packet_desc* @ATL1_TPD_DESC(%struct.atl1_tpd_ring*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @memset(%struct.tx_packet_desc*, i32, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @atl1_tso(%struct.atl1_adapter*, %struct.sk_buff*, %struct.tx_packet_desc*) #1

declare dso_local i32 @atl1_tx_csum(%struct.atl1_adapter*, %struct.sk_buff*, %struct.tx_packet_desc*) #1

declare dso_local i32 @atl1_tx_map(%struct.atl1_adapter*, %struct.sk_buff*, %struct.tx_packet_desc*) #1

declare dso_local i32 @atl1_tx_queue(%struct.atl1_adapter*, i32, %struct.tx_packet_desc*) #1

declare dso_local i32 @atl1_update_mailbox(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
