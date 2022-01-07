; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i64, i32, i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ll2_tx_pkt_info = type { i32, i32, i32, %struct.sk_buff*, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_8__ = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot transmit a checksummed packet\0A\00", align 1
@CORE_LL2_TX_MAX_BDS_PER_PACKET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Cannot transmit a packet with %d fragments\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"SKB mapping failed\0A\00", align 1
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@NEXTHDR_IPV6 = common dso_local global i64 0, align 8
@CORE_TX_BD_DATA_IP_CSUM_SHIFT = common dso_local global i32 0, align 4
@CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT = common dso_local global i32 0, align 4
@QED_LL2_TX_DEST_NW = common dso_local global i32 0, align 4
@QED_MF_UFP_SPECIFIC = common dso_local global i32 0, align 4
@QED_LL2_XMIT_FLAGS_FIP_DISCOVERY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unable to map frag - dropping packet\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.sk_buff*, i64)* @qed_ll2_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ll2_start_xmit(%struct.qed_dev* %0, %struct.sk_buff* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_dev*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.qed_hwfn*, align 8
  %9 = alloca %struct.qed_ll2_tx_pkt_info, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i64 %2, i64* %7, align 8
  %17 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %18 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %17)
  store %struct.qed_hwfn* %18, %struct.qed_hwfn** %8, align 8
  store i32 0, i32* %11, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %16, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @CHECKSUM_NONE, align 8
  %25 = icmp ne i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %31 = call i32 @DP_INFO(%struct.qed_dev* %30, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %213

34:                                               ; preds = %3
  %35 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %36 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 1, %39
  %41 = load i32, i32* @CORE_LL2_TX_MAX_BDS_PER_PACKET, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %45 = load i32, i32* %12, align 4
  %46 = add nsw i32 1, %45
  %47 = call i32 @DP_ERR(%struct.qed_dev* %44, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %213

50:                                               ; preds = %34
  %51 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %52 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %51, i32 0, i32 1
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @DMA_TO_DEVICE, align 4
  %62 = call i32 @dma_map_single(i32* %54, i32 %57, i32 %60, i32 %61)
  store i32 %62, i32* %15, align 4
  %63 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %64 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %63, i32 0, i32 1
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %15, align 4
  %68 = call i32 @dma_mapping_error(i32* %66, i32 %67)
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %50
  %72 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %73 = call i32 @DP_NOTICE(%struct.qed_dev* %72, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %213

76:                                               ; preds = %50
  %77 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %78 = call i64 @vlan_get_protocol(%struct.sk_buff* %77)
  %79 = load i32, i32* @ETH_P_IPV6, align 4
  %80 = call i64 @htons(i32 %79)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %89

82:                                               ; preds = %76
  %83 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %84 = call %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff* %83)
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @NEXTHDR_IPV6, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %82, %76
  %90 = load i32, i32* @CORE_TX_BD_DATA_IP_CSUM_SHIFT, align 4
  %91 = call i32 @BIT(i32 %90)
  %92 = load i32, i32* %11, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %11, align 4
  br label %94

94:                                               ; preds = %89, %82
  %95 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %96 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %105

98:                                               ; preds = %94
  %99 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %100 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %99)
  store i32 %100, i32* %16, align 4
  %101 = load i32, i32* @CORE_TX_BD_DATA_VLAN_INSERTION_SHIFT, align 4
  %102 = call i32 @BIT(i32 %101)
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %98, %94
  %106 = call i32 @memset(%struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 40)
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 1, %107
  %109 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 0
  store i32 %108, i32* %109, align 8
  %110 = load i32, i32* %16, align 4
  %111 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 7
  store i32 %110, i32* %111, align 4
  %112 = load i32, i32* %11, align 4
  %113 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 1
  store i32 %112, i32* %113, align 4
  %114 = load i32, i32* @QED_LL2_TX_DEST_NW, align 4
  %115 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 6
  store i32 %114, i32* %115, align 8
  %116 = load i32, i32* %15, align 4
  %117 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 5
  store i32 %116, i32* %117, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 4
  store i32 %120, i32* %121, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %123 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 3
  store %struct.sk_buff* %122, %struct.sk_buff** %123, align 8
  %124 = load i32, i32* @QED_MF_UFP_SPECIFIC, align 4
  %125 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %126 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %125, i32 0, i32 0
  %127 = call i64 @test_bit(i32 %124, i64* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %105
  %130 = load i32, i32* @QED_LL2_XMIT_FLAGS_FIP_DISCOVERY, align 4
  %131 = call i64 @test_bit(i32 %130, i64* %7)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = getelementptr inbounds %struct.qed_ll2_tx_pkt_info, %struct.qed_ll2_tx_pkt_info* %9, i32 0, i32 2
  store i32 1, i32* %134, align 8
  br label %135

135:                                              ; preds = %133, %129, %105
  %136 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %137 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %138 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %137, i32 0, i32 2
  %139 = load %struct.TYPE_5__*, %struct.TYPE_5__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn* %136, i32 %141, %struct.qed_ll2_tx_pkt_info* %9, i32 1)
  store i32 %142, i32* %13, align 4
  %143 = load i32, i32* %13, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %135
  br label %200

146:                                              ; preds = %135
  store i32 0, i32* %14, align 4
  br label %147

147:                                              ; preds = %196, %146
  %148 = load i32, i32* %14, align 4
  %149 = load i32, i32* %12, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %199

151:                                              ; preds = %147
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = call %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff* %152)
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32* %158, i32** %10, align 8
  %159 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %160 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %159, i32 0, i32 1
  %161 = load %struct.TYPE_6__*, %struct.TYPE_6__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32*, i32** %10, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @skb_frag_size(i32* %164)
  %166 = load i32, i32* @DMA_TO_DEVICE, align 4
  %167 = call i32 @skb_frag_dma_map(i32* %162, i32* %163, i32 0, i32 %165, i32 %166)
  store i32 %167, i32* %15, align 4
  %168 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %169 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %168, i32 0, i32 1
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @dma_mapping_error(i32* %171, i32 %172)
  %174 = call i64 @unlikely(i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %181

176:                                              ; preds = %151
  %177 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %178 = call i32 @DP_NOTICE(%struct.qed_dev* %177, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %179 = load i32, i32* @ENOMEM, align 4
  %180 = sub nsw i32 0, %179
  store i32 %180, i32* %13, align 4
  br label %200

181:                                              ; preds = %151
  %182 = load %struct.qed_hwfn*, %struct.qed_hwfn** %8, align 8
  %183 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %184 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %183, i32 0, i32 2
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* %15, align 4
  %189 = load i32*, i32** %10, align 8
  %190 = call i32 @skb_frag_size(i32* %189)
  %191 = call i32 @qed_ll2_set_fragment_of_tx_packet(%struct.qed_hwfn* %182, i32 %187, i32 %188, i32 %190)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %13, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %181
  br label %211

195:                                              ; preds = %181
  br label %196

196:                                              ; preds = %195
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  br label %147

199:                                              ; preds = %147
  store i32 0, i32* %4, align 4
  br label %213

200:                                              ; preds = %176, %145
  %201 = load %struct.qed_dev*, %struct.qed_dev** %5, align 8
  %202 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %201, i32 0, i32 1
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = load i32, i32* %15, align 4
  %206 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %207 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @DMA_TO_DEVICE, align 4
  %210 = call i32 @dma_unmap_single(i32* %204, i32 %205, i32 %208, i32 %209)
  br label %211

211:                                              ; preds = %200, %194
  %212 = load i32, i32* %13, align 4
  store i32 %212, i32* %4, align 4
  br label %213

213:                                              ; preds = %211, %199, %71, %43, %29
  %214 = load i32, i32* %4, align 4
  ret i32 %214
}

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local %struct.TYPE_7__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_dev*, i8*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local %struct.TYPE_8__* @ipv6_hdr(%struct.sk_buff*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.qed_ll2_tx_pkt_info*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @qed_ll2_prepare_tx_packet(%struct.qed_hwfn*, i32, %struct.qed_ll2_tx_pkt_info*, i32) #1

declare dso_local i32 @skb_frag_dma_map(i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i32 @qed_ll2_set_fragment_of_tx_packet(%struct.qed_hwfn*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
