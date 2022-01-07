; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2b_complete_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ll2.c_qed_ll2b_complete_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_ll2_comp_rx_data = type { i32, i32, i64, %struct.TYPE_9__, %struct.TYPE_8__, i32, i64, %struct.qed_ll2_buffer* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.qed_ll2_buffer = type { i32, i32* }
%struct.qed_hwfn = type { %struct.qed_dev* }
%struct.qed_dev = type { i32, %struct.TYPE_11__*, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 (i32, %struct.sk_buff*, i32, i32)* }
%struct.sk_buff = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_12__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NETIF_MSG_RX_STATUS = common dso_local global i32 0, align 4
@QED_MSG_STORAGE = common dso_local global i32 0, align 4
@NETIF_MSG_PKTDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [139 x i8] c"Got an LL2 Rx completion: [Buffer at phys 0x%llx, offset 0x%02x] Length 0x%04x Parse_flags 0x%04x vlan 0x%04x Opaque data [0x%08x:0x%08x]\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Failed to build SKB\0A\00", align 1
@NET_SKB_PAD = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@QED_MSG_LL2 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Dropping the packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.qed_ll2_comp_rx_data*)* @qed_ll2b_complete_rx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_ll2b_complete_rx_packet(i8* %0, %struct.qed_ll2_comp_rx_data* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.qed_ll2_comp_rx_data*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ll2_buffer*, align 8
  %7 = alloca %struct.qed_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.qed_ll2_comp_rx_data* %1, %struct.qed_ll2_comp_rx_data** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %5, align 8
  %15 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %16 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %15, i32 0, i32 7
  %17 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %16, align 8
  store %struct.qed_ll2_buffer* %17, %struct.qed_ll2_buffer** %6, align 8
  %18 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %19 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %18, i32 0, i32 0
  %20 = load %struct.qed_dev*, %struct.qed_dev** %19, align 8
  store %struct.qed_dev* %20, %struct.qed_dev** %7, align 8
  store i32 0, i32* %10, align 4
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %11, align 4
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %24 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %25 = load i32, i32* @QED_MSG_STORAGE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NETIF_MSG_PKTDATA, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %30 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %29, i32 0, i32 6
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %34 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %38 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %42 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %41, i32 0, i32 5
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %45 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %48 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %51 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %28, i8* getelementptr inbounds ([139 x i8], [139 x i8]* @.str, i64 0, i64 0), i32 %32, i32 %36, i32 %40, i32 %43, i64 %46, i32 %49, i32 %52)
  %54 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %55 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @NETIF_MSG_PKTDATA, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %76

60:                                               ; preds = %2
  %61 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %62 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %60
  %66 = load i32, i32* @KERN_INFO, align 4
  %67 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %68 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %69 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %72 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @print_hex_dump(i32 %66, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 16, i32 1, i32* %70, i32 %74, i32 0)
  br label %76

76:                                               ; preds = %65, %60, %2
  %77 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %78 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ETH_HLEN, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  store i32 1, i32* %10, align 4
  br label %84

84:                                               ; preds = %83, %76
  %85 = load i32, i32* %10, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %84
  %88 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %89 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %88, i32 0, i32 0
  %90 = load %struct.qed_dev*, %struct.qed_dev** %89, align 8
  %91 = call i32 @qed_ll2_alloc_buffer(%struct.qed_dev* %90, i32** %12, i32* %8)
  store i32 %91, i32* %11, align 4
  br label %92

92:                                               ; preds = %87, %84
  %93 = load i32, i32* %11, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %92
  br label %226

96:                                               ; preds = %92
  %97 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %98 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %97, i32 0, i32 2
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %102 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %105 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %104, i32 0, i32 1
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %110 = call i32 @dma_unmap_single(i32* %100, i32 %103, i32 %108, i32 %109)
  %111 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %112 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = call %struct.sk_buff* @build_skb(i32* %113, i32 0)
  store %struct.sk_buff* %114, %struct.sk_buff** %9, align 8
  %115 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %116 = icmp ne %struct.sk_buff* %115, null
  br i1 %116, label %124, label %117

117:                                              ; preds = %96
  %118 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %119 = call i32 @DP_INFO(%struct.qed_dev* %118, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %120 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %121 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @kfree(i32* %122)
  br label %219

124:                                              ; preds = %96
  %125 = load i64, i64* @NET_SKB_PAD, align 8
  %126 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %127 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %126, i32 0, i32 4
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %125
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %134 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %135 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %134, i32 0, i32 4
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @skb_reserve(%struct.sk_buff* %133, i32 %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %140 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %141 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %140, i32 0, i32 3
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @skb_put(%struct.sk_buff* %139, i32 %143)
  %145 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %146 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %145)
  %147 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %148 = call i32 @skb_reset_mac_header(%struct.sk_buff* %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %150 = call %struct.TYPE_12__* @eth_hdr(%struct.sk_buff* %149)
  %151 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  store i32 %152, i32* %154, align 4
  %155 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %156 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %155, i32 0, i32 1
  %157 = load %struct.TYPE_11__*, %struct.TYPE_11__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %158, align 8
  %160 = icmp ne %struct.TYPE_10__* %159, null
  br i1 %160, label %161, label %204

161:                                              ; preds = %124
  %162 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %163 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %162, i32 0, i32 1
  %164 = load %struct.TYPE_11__*, %struct.TYPE_11__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 2
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 0
  %168 = load i32 (i32, %struct.sk_buff*, i32, i32)*, i32 (i32, %struct.sk_buff*, i32, i32)** %167, align 8
  %169 = icmp ne i32 (i32, %struct.sk_buff*, i32, i32)* %168, null
  br i1 %169, label %170, label %204

170:                                              ; preds = %161
  %171 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %172 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %170
  %176 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %177 = load i32, i32* @ETH_P_8021Q, align 4
  %178 = call i32 @htons(i32 %177)
  %179 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %180 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %179, i32 0, i32 2
  %181 = load i64, i64* %180, align 8
  %182 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %176, i32 %178, i64 %181)
  br label %183

183:                                              ; preds = %175, %170
  %184 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %185 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %184, i32 0, i32 1
  %186 = load %struct.TYPE_11__*, %struct.TYPE_11__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  %188 = load %struct.TYPE_10__*, %struct.TYPE_10__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %188, i32 0, i32 0
  %190 = load i32 (i32, %struct.sk_buff*, i32, i32)*, i32 (i32, %struct.sk_buff*, i32, i32)** %189, align 8
  %191 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %192 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %191, i32 0, i32 1
  %193 = load %struct.TYPE_11__*, %struct.TYPE_11__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %197 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %198 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.qed_ll2_comp_rx_data*, %struct.qed_ll2_comp_rx_data** %4, align 8
  %201 = getelementptr inbounds %struct.qed_ll2_comp_rx_data, %struct.qed_ll2_comp_rx_data* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i32 %190(i32 %195, %struct.sk_buff* %196, i32 %199, i32 %202)
  br label %218

204:                                              ; preds = %161, %124
  %205 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %206 = load i32, i32* @NETIF_MSG_RX_STATUS, align 4
  %207 = load i32, i32* @NETIF_MSG_PKTDATA, align 4
  %208 = or i32 %206, %207
  %209 = load i32, i32* @QED_MSG_LL2, align 4
  %210 = or i32 %208, %209
  %211 = load i32, i32* @QED_MSG_STORAGE, align 4
  %212 = or i32 %210, %211
  %213 = call i32 (%struct.qed_hwfn*, i32, i8*, ...) @DP_VERBOSE(%struct.qed_hwfn* %205, i32 %212, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %214 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %215 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = call i32 @kfree(i32* %216)
  br label %218

218:                                              ; preds = %204, %183
  br label %219

219:                                              ; preds = %218, %117
  %220 = load i32*, i32** %12, align 8
  %221 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %222 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %221, i32 0, i32 1
  store i32* %220, i32** %222, align 8
  %223 = load i32, i32* %8, align 4
  %224 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %225 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  br label %226

226:                                              ; preds = %219, %95
  %227 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %228 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %229 = getelementptr inbounds %struct.qed_dev, %struct.qed_dev* %228, i32 0, i32 1
  %230 = load %struct.TYPE_11__*, %struct.TYPE_11__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %234 = getelementptr inbounds %struct.qed_ll2_buffer, %struct.qed_ll2_buffer* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %237 = call i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn* %227, i32 %232, i32 %235, i32 0, %struct.qed_ll2_buffer* %236, i32 1)
  store i32 %237, i32* %11, align 4
  %238 = load i32, i32* %11, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %244

240:                                              ; preds = %226
  %241 = load %struct.qed_dev*, %struct.qed_dev** %7, align 8
  %242 = load %struct.qed_ll2_buffer*, %struct.qed_ll2_buffer** %6, align 8
  %243 = call i32 @qed_ll2_dealloc_buffer(%struct.qed_dev* %241, %struct.qed_ll2_buffer* %242)
  br label %244

244:                                              ; preds = %240, %226
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @qed_ll2_alloc_buffer(%struct.qed_dev*, i32**, i32*) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32*, i32) #1

declare dso_local i32 @DP_INFO(%struct.qed_dev*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_12__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @qed_ll2_post_rx_buffer(%struct.qed_hwfn*, i32, i32, i32, %struct.qed_ll2_buffer*, i32) #1

declare dso_local i32 @qed_ll2_dealloc_buffer(%struct.qed_dev*, %struct.qed_ll2_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
