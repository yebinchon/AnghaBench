; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_tx_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_ctrl_tx_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32, i32, %struct.nfp_net_tx_ring*, %struct.TYPE_3__* }
%struct.nfp_net_tx_ring = type { i32, i32, %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_buf* }
%struct.nfp_net_tx_desc = type { i32, i64, i64, i64, i8*, i8* }
%struct.nfp_net_tx_buf = type { i32, i32, i32, i32, %struct.sk_buff* }
%struct.TYPE_3__ = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"Driver's CTRL TX does not implement gather\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"CTRL TX on skb without headroom\0A\00", align 1
@NFP_META_PORT_ID_CTRL = common dso_local global i32 0, align 4
@NFP_NET_META_PORTID = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PCIE_DESC_TX_EOP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to DMA map TX CTRL buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.nfp_net_r_vector*, %struct.sk_buff*, i32)* @nfp_ctrl_tx_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_ctrl_tx_one(%struct.nfp_net* %0, %struct.nfp_net_r_vector* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca %struct.nfp_net_r_vector*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_net_tx_ring*, align 8
  %13 = alloca %struct.nfp_net_tx_buf*, align 8
  %14 = alloca %struct.nfp_net_tx_desc*, align 8
  %15 = alloca %struct.nfp_net_dp*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %6, align 8
  store %struct.nfp_net_r_vector* %1, %struct.nfp_net_r_vector** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %21 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %22 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %21, i32 0, i32 5
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store %struct.nfp_net_dp* %24, %struct.nfp_net_dp** %15, align 8
  %25 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %26 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %25, i32 0, i32 4
  %27 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %26, align 8
  store %struct.nfp_net_tx_ring* %27, %struct.nfp_net_tx_ring** %12, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %28)
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @WARN_ON_ONCE(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %4
  %35 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %15, align 8
  %36 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %35, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %178

37:                                               ; preds = %4
  %38 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %39 = call i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring* %38, i32 1)
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37
  %43 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %44 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %43, i32 0, i32 0
  %45 = call i32 @u64_stats_update_begin(i32* %44)
  %46 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %47 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %51 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %50, i32 0, i32 0
  %52 = call i32 @u64_stats_update_end(i32* %51)
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %42
  %56 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %57 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %56, i32 0, i32 2
  %58 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %59 = call i32 @__skb_queue_tail(i32* %57, %struct.sk_buff* %58)
  br label %65

60:                                               ; preds = %42
  %61 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %62 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %61, i32 0, i32 2
  %63 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %64 = call i32 @__skb_queue_head(i32* %62, %struct.sk_buff* %63)
  br label %65

65:                                               ; preds = %60, %55
  store i32 1, i32* %5, align 4
  br label %191

66:                                               ; preds = %37
  %67 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %68 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @nfp_app_ctrl_has_meta(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %66
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = call i32 @skb_headroom(%struct.sk_buff* %73)
  %75 = icmp slt i32 %74, 8
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %15, align 8
  %81 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %80, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %178

82:                                               ; preds = %72
  store i32 8, i32* %11, align 4
  %83 = load i32, i32* @NFP_META_PORT_ID_CTRL, align 4
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 @skb_push(%struct.sk_buff* %84, i32 4)
  %86 = call i32 @put_unaligned_be32(i32 %83, i32 %85)
  %87 = load i32, i32* @NFP_NET_META_PORTID, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %89 = call i32 @skb_push(%struct.sk_buff* %88, i32 4)
  %90 = call i32 @put_unaligned_be32(i32 %87, i32 %89)
  br label %91

91:                                               ; preds = %82, %66
  %92 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %15, align 8
  %93 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %99 = call i32 @skb_headlen(%struct.sk_buff* %98)
  %100 = load i32, i32* @DMA_TO_DEVICE, align 4
  %101 = call i32 @dma_map_single(i32 %94, i32 %97, i32 %99, i32 %100)
  store i32 %101, i32* %16, align 4
  %102 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %15, align 8
  %103 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i64 @dma_mapping_error(i32 %104, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %91
  br label %175

109:                                              ; preds = %91
  %110 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %111 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %112 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %110, i32 %113)
  store i32 %114, i32* %17, align 4
  %115 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %116 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %115, i32 0, i32 3
  %117 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %116, align 8
  %118 = load i32, i32* %17, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %117, i64 %119
  store %struct.nfp_net_tx_buf* %120, %struct.nfp_net_tx_buf** %13, align 8
  %121 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %122 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %123 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %122, i32 0, i32 4
  store %struct.sk_buff* %121, %struct.sk_buff** %123, align 8
  %124 = load i32, i32* %16, align 4
  %125 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %126 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %128 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %127, i32 0, i32 0
  store i32 -1, i32* %128, align 8
  %129 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %130 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %129, i32 0, i32 1
  store i32 1, i32* %130, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %13, align 8
  %133 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %135 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %134, i32 0, i32 2
  %136 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %135, align 8
  %137 = load i32, i32* %17, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %136, i64 %138
  store %struct.nfp_net_tx_desc* %139, %struct.nfp_net_tx_desc** %14, align 8
  %140 = load i32, i32* %11, align 4
  %141 = load i32, i32* @PCIE_DESC_TX_EOP, align 4
  %142 = or i32 %140, %141
  %143 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %144 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %146 = call i32 @skb_headlen(%struct.sk_buff* %145)
  %147 = call i8* @cpu_to_le16(i32 %146)
  %148 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %149 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %148, i32 0, i32 5
  store i8* %147, i8** %149, align 8
  %150 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %151 = load i32, i32* %16, align 4
  %152 = call i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc* %150, i32 %151)
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i8* @cpu_to_le16(i32 %155)
  %157 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %158 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %157, i32 0, i32 4
  store i8* %156, i8** %158, align 8
  %159 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %160 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %159, i32 0, i32 3
  store i64 0, i64* %160, align 8
  %161 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %162 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %161, i32 0, i32 2
  store i64 0, i64* %162, align 8
  %163 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %14, align 8
  %164 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  %165 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %166 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %166, align 4
  %169 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %170 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %170, align 8
  %173 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %174 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %173)
  store i32 0, i32* %5, align 4
  br label %191

175:                                              ; preds = %108
  %176 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %15, align 8
  %177 = call i32 @nn_dp_warn(%struct.nfp_net_dp* %176, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %178

178:                                              ; preds = %175, %79, %34
  %179 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %180 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %179, i32 0, i32 0
  %181 = call i32 @u64_stats_update_begin(i32* %180)
  %182 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %183 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 1
  store i32 %185, i32* %183, align 4
  %186 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %7, align 8
  %187 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %186, i32 0, i32 0
  %188 = call i32 @u64_stats_update_end(i32* %187)
  %189 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %190 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %189)
  store i32 0, i32* %5, align 4
  br label %191

191:                                              ; preds = %178, %109, %65
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @__skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_head(i32*, %struct.sk_buff*) #1

declare dso_local i64 @nfp_app_ctrl_has_meta(i32) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i32 @put_unaligned_be32(i32, i32) #1

declare dso_local i32 @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i32) #1

declare dso_local i32 @D_IDX(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc*, i32) #1

declare dso_local i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
