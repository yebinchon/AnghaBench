; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_net = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32, i32, i32, %struct.nfp_net_tx_ring* }
%struct.nfp_net_tx_ring = type { i32, i64, i32, %struct.nfp_net_tx_buf*, i64, %struct.nfp_net_tx_desc*, i32, %struct.nfp_net_r_vector* }
%struct.nfp_net_tx_buf = type { i32, i32, i32, i8*, %struct.sk_buff* }
%struct.nfp_net_tx_desc = type { i32, i32*, i8*, i8*, i32, i64, i64, i8* }
%struct.nfp_net_r_vector = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }
%struct.TYPE_2__ = type { i32, i32* }

@.str = private unnamed_addr constant [32 x i8] c"TX ring %d busy. wrp=%u rdp=%u\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@PCIE_DESC_TX_EOP = common dso_local global i32 0, align 4
@NFP_NET_CFG_CTRL_TXVLAN = common dso_local global i32 0, align 4
@PCIE_DESC_TX_VLAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to map DMA TX buffer\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @nfp_net_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_net*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nfp_net_tx_ring*, align 8
  %13 = alloca %struct.nfp_net_r_vector*, align 8
  %14 = alloca %struct.nfp_net_tx_buf*, align 8
  %15 = alloca %struct.nfp_net_tx_desc*, align 8
  %16 = alloca %struct.netdev_queue*, align 8
  %17 = alloca %struct.nfp_net_dp*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %23)
  store %struct.nfp_net* %24, %struct.nfp_net** %6, align 8
  store i32 0, i32* %20, align 4
  %25 = load %struct.nfp_net*, %struct.nfp_net** %6, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 0
  store %struct.nfp_net_dp* %26, %struct.nfp_net_dp** %17, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %27)
  store i64 %28, i64* %21, align 8
  %29 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %30 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %29, i32 0, i32 3
  %31 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %30, align 8
  %32 = load i64, i64* %21, align 8
  %33 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %31, i64 %32
  store %struct.nfp_net_tx_ring* %33, %struct.nfp_net_tx_ring** %12, align 8
  %34 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %35 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %34, i32 0, i32 7
  %36 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %35, align 8
  store %struct.nfp_net_r_vector* %36, %struct.nfp_net_r_vector** %13, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %38 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %37)
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %9, align 4
  %41 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring* %41, i32 %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %2
  %48 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %49 = load i64, i64* %21, align 8
  %50 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %51 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %54 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 (%struct.nfp_net_dp*, i8*, ...) @nn_dp_warn(%struct.nfp_net_dp* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i64 %49, i32 %52, i32 %55)
  %57 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %58 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* %21, align 8
  %61 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %59, i64 %60)
  store %struct.netdev_queue* %61, %struct.netdev_queue** %16, align 8
  %62 = load %struct.netdev_queue*, %struct.netdev_queue** %16, align 8
  %63 = call i32 @netif_tx_stop_queue(%struct.netdev_queue* %62)
  %64 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %65 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %64)
  %66 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %67 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %66, i32 0, i32 0
  %68 = call i32 @u64_stats_update_begin(i32* %67)
  %69 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %70 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %74 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %73, i32 0, i32 0
  %75 = call i32 @u64_stats_update_end(i32* %74)
  %76 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %76, i32* %3, align 4
  br label %491

77:                                               ; preds = %2
  %78 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %79 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = call %struct.sk_buff* @nfp_net_tls_tx(%struct.nfp_net_dp* %78, %struct.nfp_net_r_vector* %79, %struct.sk_buff* %80, i32* %20, i32* %9)
  store %struct.sk_buff* %81, %struct.sk_buff** %4, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = icmp ne %struct.sk_buff* %82, null
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = call i64 @unlikely(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %77
  %89 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %90 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %89)
  %91 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %91, i32* %3, align 4
  br label %491

92:                                               ; preds = %77
  %93 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %94 = load i32, i32* %20, align 4
  %95 = call i32 @nfp_net_prep_tx_meta(%struct.sk_buff* %93, i32 %94)
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = call i64 @unlikely(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %472

102:                                              ; preds = %92
  %103 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %104 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = call i32 @skb_headlen(%struct.sk_buff* %109)
  %111 = load i32, i32* @DMA_TO_DEVICE, align 4
  %112 = call i8* @dma_map_single(i32 %105, i32 %108, i32 %110, i32 %111)
  store i8* %112, i8** %18, align 8
  %113 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %114 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = load i8*, i8** %18, align 8
  %117 = call i64 @dma_mapping_error(i32 %115, i8* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %120

119:                                              ; preds = %102
  br label %469

120:                                              ; preds = %102
  %121 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %122 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %123 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %121, i32 %124)
  store i32 %125, i32* %10, align 4
  %126 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %127 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %126, i32 0, i32 3
  %128 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %127, align 8
  %129 = load i32, i32* %10, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %128, i64 %130
  store %struct.nfp_net_tx_buf* %131, %struct.nfp_net_tx_buf** %14, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %134 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %133, i32 0, i32 4
  store %struct.sk_buff* %132, %struct.sk_buff** %134, align 8
  %135 = load i8*, i8** %18, align 8
  %136 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %137 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %136, i32 0, i32 3
  store i8* %135, i8** %137, align 8
  %138 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %139 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %138, i32 0, i32 0
  store i32 -1, i32* %139, align 8
  %140 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %141 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %140, i32 0, i32 1
  store i32 1, i32* %141, align 4
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %146 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %148 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %147, i32 0, i32 5
  %149 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %148, align 8
  %150 = load i32, i32* %10, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %149, i64 %151
  store %struct.nfp_net_tx_desc* %152, %struct.nfp_net_tx_desc** %15, align 8
  %153 = load i32, i32* %9, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %120
  br label %158

156:                                              ; preds = %120
  %157 = load i32, i32* @PCIE_DESC_TX_EOP, align 4
  br label %158

158:                                              ; preds = %156, %155
  %159 = phi i32 [ 0, %155 ], [ %157, %156 ]
  %160 = load i32, i32* %11, align 4
  %161 = or i32 %159, %160
  %162 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %163 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %162, i32 0, i32 0
  store i32 %161, i32* %163, align 8
  %164 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %165 = call i32 @skb_headlen(%struct.sk_buff* %164)
  %166 = call i8* @cpu_to_le16(i32 %165)
  %167 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %168 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %167, i32 0, i32 2
  store i8* %166, i8** %168, align 8
  %169 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %170 = load i8*, i8** %18, align 8
  %171 = call i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc* %169, i8* %170)
  %172 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %173 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_le16(i32 %174)
  %176 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %177 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %176, i32 0, i32 7
  store i8* %175, i8** %177, align 8
  %178 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %179 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %178, i32 0, i32 4
  store i32 0, i32* %179, align 8
  %180 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %181 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %180, i32 0, i32 6
  store i64 0, i64* %181, align 8
  %182 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %183 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %182, i32 0, i32 5
  store i64 0, i64* %183, align 8
  %184 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %185 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %186 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %187 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %188 = load i32, i32* %11, align 4
  %189 = call i32 @nfp_net_tx_tso(%struct.nfp_net_r_vector* %184, %struct.nfp_net_tx_buf* %185, %struct.nfp_net_tx_desc* %186, %struct.sk_buff* %187, i32 %188)
  %190 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %191 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %192 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %193 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %194 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %195 = call i32 @nfp_net_tx_csum(%struct.nfp_net_dp* %190, %struct.nfp_net_r_vector* %191, %struct.nfp_net_tx_buf* %192, %struct.nfp_net_tx_desc* %193, %struct.sk_buff* %194)
  %196 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %197 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %217

199:                                              ; preds = %158
  %200 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %201 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @NFP_NET_CFG_CTRL_TXVLAN, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %217

206:                                              ; preds = %199
  %207 = load i32, i32* @PCIE_DESC_TX_VLAN, align 4
  %208 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %209 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %208, i32 0, i32 4
  %210 = load i32, i32* %209, align 8
  %211 = or i32 %210, %207
  store i32 %211, i32* %209, align 8
  %212 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %213 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %212)
  %214 = call i8* @cpu_to_le16(i32 %213)
  %215 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %216 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %215, i32 0, i32 3
  store i8* %214, i8** %216, align 8
  br label %217

217:                                              ; preds = %206, %199, %158
  %218 = load i32, i32* %9, align 4
  %219 = icmp sgt i32 %218, 0
  br i1 %219, label %220, label %328

220:                                              ; preds = %217
  %221 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %222 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %221, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  store i32 %225, i32* %22, align 4
  store i32 0, i32* %8, align 4
  br label %226

226:                                              ; preds = %314, %220
  %227 = load i32, i32* %8, align 4
  %228 = load i32, i32* %9, align 4
  %229 = icmp slt i32 %227, %228
  br i1 %229, label %230, label %317

230:                                              ; preds = %226
  %231 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %232 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %231)
  %233 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %232, i32 0, i32 1
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %8, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  store i32* %237, i32** %7, align 8
  %238 = load i32*, i32** %7, align 8
  %239 = call i32 @skb_frag_size(i32* %238)
  store i32 %239, i32* %19, align 4
  %240 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %241 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = load i32*, i32** %7, align 8
  %244 = load i32, i32* %19, align 4
  %245 = load i32, i32* @DMA_TO_DEVICE, align 4
  %246 = call i8* @skb_frag_dma_map(i32 %242, i32* %243, i32 0, i32 %244, i32 %245)
  store i8* %246, i8** %18, align 8
  %247 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %248 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load i8*, i8** %18, align 8
  %251 = call i64 @dma_mapping_error(i32 %249, i8* %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %254

253:                                              ; preds = %230
  br label %370

254:                                              ; preds = %230
  %255 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  %258 = call i32 @D_IDX(%struct.nfp_net_tx_ring* %255, i32 %257)
  store i32 %258, i32* %10, align 4
  %259 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %260 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %261 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %260, i32 0, i32 3
  %262 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %262, i64 %264
  %266 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %265, i32 0, i32 4
  store %struct.sk_buff* %259, %struct.sk_buff** %266, align 8
  %267 = load i8*, i8** %18, align 8
  %268 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %269 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %268, i32 0, i32 3
  %270 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %269, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %270, i64 %272
  %274 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %273, i32 0, i32 3
  store i8* %267, i8** %274, align 8
  %275 = load i32, i32* %8, align 4
  %276 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %277 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %276, i32 0, i32 3
  %278 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %277, align 8
  %279 = load i32, i32* %10, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %278, i64 %280
  %282 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %281, i32 0, i32 0
  store i32 %275, i32* %282, align 8
  %283 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %284 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %283, i32 0, i32 5
  %285 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %284, align 8
  %286 = load i32, i32* %10, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %285, i64 %287
  store %struct.nfp_net_tx_desc* %288, %struct.nfp_net_tx_desc** %15, align 8
  %289 = load i32, i32* %19, align 4
  %290 = call i8* @cpu_to_le16(i32 %289)
  %291 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %292 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %291, i32 0, i32 2
  store i8* %290, i8** %292, align 8
  %293 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %294 = load i8*, i8** %18, align 8
  %295 = call i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc* %293, i8* %294)
  %296 = load i32, i32* %11, align 4
  %297 = load i32, i32* %8, align 4
  %298 = load i32, i32* %9, align 4
  %299 = sub nsw i32 %298, 1
  %300 = icmp eq i32 %297, %299
  br i1 %300, label %301, label %303

301:                                              ; preds = %254
  %302 = load i32, i32* @PCIE_DESC_TX_EOP, align 4
  br label %304

303:                                              ; preds = %254
  br label %304

304:                                              ; preds = %303, %301
  %305 = phi i32 [ %302, %301 ], [ 0, %303 ]
  %306 = or i32 %296, %305
  %307 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %308 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %307, i32 0, i32 0
  store i32 %306, i32* %308, align 8
  %309 = load i32, i32* %22, align 4
  %310 = load %struct.nfp_net_tx_desc*, %struct.nfp_net_tx_desc** %15, align 8
  %311 = getelementptr inbounds %struct.nfp_net_tx_desc, %struct.nfp_net_tx_desc* %310, i32 0, i32 1
  %312 = load i32*, i32** %311, align 8
  %313 = getelementptr inbounds i32, i32* %312, i64 1
  store i32 %309, i32* %313, align 4
  br label %314

314:                                              ; preds = %304
  %315 = load i32, i32* %8, align 4
  %316 = add nsw i32 %315, 1
  store i32 %316, i32* %8, align 4
  br label %226

317:                                              ; preds = %226
  %318 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %319 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %318, i32 0, i32 0
  %320 = call i32 @u64_stats_update_begin(i32* %319)
  %321 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %322 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %321, i32 0, i32 2
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %322, align 4
  %325 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %326 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %325, i32 0, i32 0
  %327 = call i32 @u64_stats_update_end(i32* %326)
  br label %328

328:                                              ; preds = %317, %217
  %329 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %330 = call i32 @skb_tx_timestamp(%struct.sk_buff* %329)
  %331 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %332 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %331, i32 0, i32 2
  %333 = load i32, i32* %332, align 8
  %334 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %335 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = call %struct.netdev_queue* @netdev_get_tx_queue(i32 %333, i64 %336)
  store %struct.netdev_queue* %337, %struct.netdev_queue** %16, align 8
  %338 = load i32, i32* %9, align 4
  %339 = add nsw i32 %338, 1
  %340 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %341 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = add nsw i32 %342, %339
  store i32 %343, i32* %341, align 8
  %344 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %345 = call i64 @nfp_net_tx_ring_should_stop(%struct.nfp_net_tx_ring* %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %351

347:                                              ; preds = %328
  %348 = load %struct.netdev_queue*, %struct.netdev_queue** %16, align 8
  %349 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %350 = call i32 @nfp_net_tx_ring_stop(%struct.netdev_queue* %348, %struct.nfp_net_tx_ring* %349)
  br label %351

351:                                              ; preds = %347, %328
  %352 = load i32, i32* %9, align 4
  %353 = add nsw i32 %352, 1
  %354 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %355 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %354, i32 0, i32 2
  %356 = load i32, i32* %355, align 8
  %357 = add nsw i32 %356, %353
  store i32 %357, i32* %355, align 8
  %358 = load %struct.netdev_queue*, %struct.netdev_queue** %16, align 8
  %359 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %14, align 8
  %360 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %359, i32 0, i32 2
  %361 = load i32, i32* %360, align 8
  %362 = call i32 (...) @netdev_xmit_more()
  %363 = call i64 @__netdev_tx_sent_queue(%struct.netdev_queue* %358, i32 %361, i32 %362)
  %364 = icmp ne i64 %363, 0
  br i1 %364, label %365, label %368

365:                                              ; preds = %351
  %366 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %367 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %366)
  br label %368

368:                                              ; preds = %365, %351
  %369 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %369, i32* %3, align 4
  br label %491

370:                                              ; preds = %253
  br label %371

371:                                              ; preds = %431, %370
  %372 = load i32, i32* %8, align 4
  %373 = add nsw i32 %372, -1
  store i32 %373, i32* %8, align 4
  %374 = icmp sge i32 %373, 0
  br i1 %374, label %375, label %432

375:                                              ; preds = %371
  %376 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %377 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %376)
  %378 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %377, i32 0, i32 1
  %379 = load i32*, i32** %378, align 8
  %380 = load i32, i32* %8, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  store i32* %382, i32** %7, align 8
  %383 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %384 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %383, i32 0, i32 1
  %385 = load i32, i32* %384, align 4
  %386 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %387 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %386, i32 0, i32 3
  %388 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %387, align 8
  %389 = load i32, i32* %10, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %388, i64 %390
  %392 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %391, i32 0, i32 3
  %393 = load i8*, i8** %392, align 8
  %394 = load i32*, i32** %7, align 8
  %395 = call i32 @skb_frag_size(i32* %394)
  %396 = load i32, i32* @DMA_TO_DEVICE, align 4
  %397 = call i32 @dma_unmap_page(i32 %385, i8* %393, i32 %395, i32 %396)
  %398 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %399 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %398, i32 0, i32 3
  %400 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %399, align 8
  %401 = load i32, i32* %10, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %400, i64 %402
  %404 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %403, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %404, align 8
  %405 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %406 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %405, i32 0, i32 3
  %407 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %406, align 8
  %408 = load i32, i32* %10, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %407, i64 %409
  %411 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %410, i32 0, i32 3
  store i8* null, i8** %411, align 8
  %412 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %413 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %412, i32 0, i32 3
  %414 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %413, align 8
  %415 = load i32, i32* %10, align 4
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %414, i64 %416
  %418 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %417, i32 0, i32 0
  store i32 -2, i32* %418, align 8
  %419 = load i32, i32* %10, align 4
  %420 = sub nsw i32 %419, 1
  store i32 %420, i32* %10, align 4
  %421 = load i32, i32* %10, align 4
  %422 = icmp slt i32 %421, 0
  br i1 %422, label %423, label %431

423:                                              ; preds = %375
  %424 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %425 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %424, i32 0, i32 4
  %426 = load i64, i64* %425, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = add nsw i64 %428, %426
  %430 = trunc i64 %429 to i32
  store i32 %430, i32* %10, align 4
  br label %431

431:                                              ; preds = %423, %375
  br label %371

432:                                              ; preds = %371
  %433 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %434 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %433, i32 0, i32 1
  %435 = load i32, i32* %434, align 4
  %436 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %437 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %436, i32 0, i32 3
  %438 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %437, align 8
  %439 = load i32, i32* %10, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %438, i64 %440
  %442 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %441, i32 0, i32 3
  %443 = load i8*, i8** %442, align 8
  %444 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %445 = call i32 @skb_headlen(%struct.sk_buff* %444)
  %446 = load i32, i32* @DMA_TO_DEVICE, align 4
  %447 = call i32 @dma_unmap_single(i32 %435, i8* %443, i32 %445, i32 %446)
  %448 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %449 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %448, i32 0, i32 3
  %450 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %449, align 8
  %451 = load i32, i32* %10, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %450, i64 %452
  %454 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %453, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %454, align 8
  %455 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %456 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %455, i32 0, i32 3
  %457 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %456, align 8
  %458 = load i32, i32* %10, align 4
  %459 = sext i32 %458 to i64
  %460 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %457, i64 %459
  %461 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %460, i32 0, i32 3
  store i8* null, i8** %461, align 8
  %462 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %463 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %462, i32 0, i32 3
  %464 = load %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_buf** %463, align 8
  %465 = load i32, i32* %10, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %464, i64 %466
  %468 = getelementptr inbounds %struct.nfp_net_tx_buf, %struct.nfp_net_tx_buf* %467, i32 0, i32 0
  store i32 -2, i32* %468, align 8
  br label %469

469:                                              ; preds = %432, %119
  %470 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %17, align 8
  %471 = call i32 (%struct.nfp_net_dp*, i8*, ...) @nn_dp_warn(%struct.nfp_net_dp* %470, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %472

472:                                              ; preds = %469, %101
  %473 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %12, align 8
  %474 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %473)
  %475 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %476 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %475, i32 0, i32 0
  %477 = call i32 @u64_stats_update_begin(i32* %476)
  %478 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %479 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %478, i32 0, i32 1
  %480 = load i32, i32* %479, align 4
  %481 = add nsw i32 %480, 1
  store i32 %481, i32* %479, align 4
  %482 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %13, align 8
  %483 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %482, i32 0, i32 0
  %484 = call i32 @u64_stats_update_end(i32* %483)
  %485 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %486 = load i32, i32* %20, align 4
  %487 = call i32 @nfp_net_tls_tx_undo(%struct.sk_buff* %485, i32 %486)
  %488 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %489 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %488)
  %490 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %490, i32* %3, align 4
  br label %491

491:                                              ; preds = %472, %368, %88, %47
  %492 = load i32, i32* %3, align 4
  ret i32 %492
}

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nfp_net_tx_full(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*, ...) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(i32, i64) #1

declare dso_local i32 @netif_tx_stop_queue(%struct.netdev_queue*) #1

declare dso_local i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local %struct.sk_buff* @nfp_net_tls_tx(%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.sk_buff*, i32*, i32*) #1

declare dso_local i32 @nfp_net_prep_tx_meta(%struct.sk_buff*, i32) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @dma_mapping_error(i32, i8*) #1

declare dso_local i32 @D_IDX(%struct.nfp_net_tx_ring*, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @nfp_desc_set_dma_addr(%struct.nfp_net_tx_desc*, i8*) #1

declare dso_local i32 @nfp_net_tx_tso(%struct.nfp_net_r_vector*, %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_desc*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nfp_net_tx_csum(%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_tx_buf*, %struct.nfp_net_tx_desc*, %struct.sk_buff*) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @skb_tx_timestamp(%struct.sk_buff*) #1

declare dso_local i64 @nfp_net_tx_ring_should_stop(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @nfp_net_tx_ring_stop(%struct.netdev_queue*, %struct.nfp_net_tx_ring*) #1

declare dso_local i64 @__netdev_tx_sent_queue(%struct.netdev_queue*, i32, i32) #1

declare dso_local i32 @netdev_xmit_more(...) #1

declare dso_local i32 @dma_unmap_page(i32, i8*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i8*, i32, i32) #1

declare dso_local i32 @nfp_net_tls_tx_undo(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
