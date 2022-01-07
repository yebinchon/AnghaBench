; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net_rx_ring = type { %struct.nfp_net_r_vector*, i32, %struct.nfp_net_rx_buf*, i32, %struct.nfp_net_rx_desc*, i32 }
%struct.nfp_net_r_vector = type { i32, i32, i32, i32, i32, %struct.nfp_net_tx_ring*, %struct.TYPE_3__* }
%struct.nfp_net_tx_ring = type { i64, i64, i64 }
%struct.TYPE_3__ = type { %struct.nfp_net_dp }
%struct.nfp_net_dp = type { i32, i32, i32, %struct.net_device*, i32, i32 }
%struct.net_device = type { i32 }
%struct.nfp_net_rx_buf = type { i8*, i64 }
%struct.nfp_net_rx_desc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.bpf_prog = type { i32 }
%struct.sk_buff = type { i32, %struct.net_device*, i32, i32 }
%struct.xdp_buff = type { i8*, i8*, i8*, i8*, i32* }
%struct.nfp_meta_parsed = type { i64, i32, i32, i32 }
%struct.nfp_net = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PCIE_DESC_RX_DD = common dso_local global i32 0, align 4
@PCIE_DESC_RX_META_LEN_MASK = common dso_local global i32 0, align 4
@NFP_NET_RX_BUF_HEADROOM = common dso_local global i32 0, align 4
@NFP_NET_CFG_RX_OFFSET_DYNAMIC = common dso_local global i32 0, align 4
@NFP_NET_MAX_PREPEND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"oversized RX packet metadata %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid RX packet metadata\0A\00", align 1
@NFP_META_PORT_ID_CTRL = common dso_local global i64 0, align 8
@PCIE_DESC_RX_VLAN = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@PCIE_DESC_RX_DECRYPTED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net_rx_ring*, i32)* @nfp_net_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_rx(%struct.nfp_net_rx_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_net_rx_ring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_net_r_vector*, align 8
  %6 = alloca %struct.nfp_net_dp*, align 8
  %7 = alloca %struct.nfp_net_tx_ring*, align 8
  %8 = alloca %struct.bpf_prog*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.xdp_buff, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.nfp_net_rx_buf*, align 8
  %21 = alloca %struct.nfp_net_rx_desc*, align 8
  %22 = alloca %struct.nfp_meta_parsed, align 8
  %23 = alloca i32, align 4
  %24 = alloca %struct.net_device*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.nfp_net*, align 8
  %33 = alloca %struct.nfp_net*, align 8
  store %struct.nfp_net_rx_ring* %0, %struct.nfp_net_rx_ring** %3, align 8
  store i32 %1, i32* %4, align 4
  %34 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %34, i32 0, i32 0
  %36 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %35, align 8
  store %struct.nfp_net_r_vector* %36, %struct.nfp_net_r_vector** %5, align 8
  %37 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %38 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %37, i32 0, i32 6
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store %struct.nfp_net_dp* %40, %struct.nfp_net_dp** %6, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %41 = call i32 (...) @rcu_read_lock()
  %42 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %43 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %42, i32 0, i32 5
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.bpf_prog* @READ_ONCE(i32 %44)
  store %struct.bpf_prog* %45, %struct.bpf_prog** %8, align 8
  %46 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %47 = icmp ne %struct.bpf_prog* %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %2
  %49 = load i32, i32* @PAGE_SIZE, align 4
  br label %54

50:                                               ; preds = %2
  %51 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %52 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  br label %54

54:                                               ; preds = %50, %48
  %55 = phi i32 [ %49, %48 ], [ %53, %50 ]
  store i32 %55, i32* %10, align 4
  %56 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %57 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 4
  store i32* %57, i32** %58, align 8
  %59 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %60 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %59, i32 0, i32 5
  %61 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %60, align 8
  store %struct.nfp_net_tx_ring* %61, %struct.nfp_net_tx_ring** %7, align 8
  br label %62

62:                                               ; preds = %551, %453, %438, %410, %368, %340, %329, %236, %175, %54
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %552

66:                                               ; preds = %62
  store i32 0, i32* %23, align 4
  store i32 0, i32* %26, align 4
  %67 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %68 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %69 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @D_IDX(%struct.nfp_net_rx_ring* %67, i32 %70)
  store i32 %71, i32* %14, align 4
  %72 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %73 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %72, i32 0, i32 4
  %74 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %73, align 8
  %75 = load i32, i32* %14, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %74, i64 %76
  store %struct.nfp_net_rx_desc* %77, %struct.nfp_net_rx_desc** %21, align 8
  %78 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %79 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @PCIE_DESC_RX_DD, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %66
  br label %552

86:                                               ; preds = %66
  %87 = call i32 (...) @dma_rmb()
  %88 = call i32 @memset(%struct.nfp_meta_parsed* %22, i32 0, i32 24)
  %89 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %90 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %12, align 4
  %95 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %96 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %95, i32 0, i32 2
  %97 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %96, align 8
  %98 = load i32, i32* %14, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %97, i64 %99
  store %struct.nfp_net_rx_buf* %100, %struct.nfp_net_rx_buf** %20, align 8
  %101 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %102 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @PCIE_DESC_RX_META_LEN_MASK, align 4
  %106 = and i32 %104, %105
  store i32 %106, i32* %15, align 4
  %107 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %108 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @le16_to_cpu(i32 %110)
  store i32 %111, i32* %16, align 4
  %112 = load i32, i32* %16, align 4
  %113 = load i32, i32* %15, align 4
  %114 = sub i32 %112, %113
  store i32 %114, i32* %18, align 4
  %115 = load i32, i32* @NFP_NET_RX_BUF_HEADROOM, align 4
  %116 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %117 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = add nsw i32 %115, %118
  store i32 %119, i32* %19, align 4
  %120 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %121 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @NFP_NET_CFG_RX_OFFSET_DYNAMIC, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %129

125:                                              ; preds = %86
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %19, align 4
  %128 = add i32 %127, %126
  store i32 %128, i32* %19, align 4
  br label %135

129:                                              ; preds = %86
  %130 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %131 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* %19, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %19, align 4
  br label %135

135:                                              ; preds = %129, %125
  %136 = load i32, i32* %19, align 4
  %137 = load i32, i32* %15, align 4
  %138 = sub i32 %136, %137
  store i32 %138, i32* %17, align 4
  %139 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %140 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %139, i32 0, i32 2
  %141 = call i32 @u64_stats_update_begin(i32* %140)
  %142 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %143 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %142, i32 0, i32 4
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  %146 = load i32, i32* %18, align 4
  %147 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %148 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = add i32 %149, %146
  store i32 %150, i32* %148, align 8
  %151 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %152 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %151, i32 0, i32 2
  %153 = call i32 @u64_stats_update_end(i32* %152)
  %154 = load i32, i32* %15, align 4
  %155 = load i32, i32* @NFP_NET_MAX_PREPEND, align 4
  %156 = icmp ugt i32 %154, %155
  br i1 %156, label %170, label %157

157:                                              ; preds = %135
  %158 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %159 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %165 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = icmp ugt i32 %163, %166
  br label %168

168:                                              ; preds = %162, %157
  %169 = phi i1 [ false, %157 ], [ %167, %162 ]
  br label %170

170:                                              ; preds = %168, %135
  %171 = phi i1 [ true, %135 ], [ %169, %168 ]
  %172 = zext i1 %171 to i32
  %173 = call i64 @unlikely(i32 %172)
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %184

175:                                              ; preds = %170
  %176 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %177 = load i32, i32* %15, align 4
  %178 = call i32 (%struct.nfp_net_dp*, i8*, ...) @nn_dp_warn(%struct.nfp_net_dp* %176, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %177)
  %179 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %180 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %181 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %182 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %183 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %179, %struct.nfp_net_r_vector* %180, %struct.nfp_net_rx_ring* %181, %struct.nfp_net_rx_buf* %182, %struct.sk_buff* null)
  br label %62

184:                                              ; preds = %170
  %185 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %186 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %187 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = load i32, i32* %17, align 4
  %190 = zext i32 %189 to i64
  %191 = add nsw i64 %188, %190
  %192 = load i32, i32* %16, align 4
  %193 = call i32 @nfp_net_dma_sync_cpu_rx(%struct.nfp_net_dp* %185, i64 %191, i32 %192)
  %194 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %195 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %194, i32 0, i32 4
  %196 = load i32, i32* %195, align 8
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %210, label %198

198:                                              ; preds = %184
  %199 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %200 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %199, i32 0, i32 3
  %201 = load %struct.net_device*, %struct.net_device** %200, align 8
  %202 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %203 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load i32, i32* %17, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr i8, i8* %204, i64 %206
  %208 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %209 = call i32 @nfp_net_set_hash_desc(%struct.net_device* %201, %struct.nfp_meta_parsed* %22, i8* %207, %struct.nfp_net_rx_desc* %208)
  br label %246

210:                                              ; preds = %184
  %211 = load i32, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %245

213:                                              ; preds = %210
  %214 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %215 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %214, i32 0, i32 3
  %216 = load %struct.net_device*, %struct.net_device** %215, align 8
  %217 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %218 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %217, i32 0, i32 0
  %219 = load i8*, i8** %218, align 8
  %220 = load i32, i32* %17, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr i8, i8* %219, i64 %221
  %223 = load i32, i32* %15, align 4
  %224 = call i8* @nfp_net_parse_meta(%struct.net_device* %216, %struct.nfp_meta_parsed* %22, i8* %222, i32 %223)
  store i8* %224, i8** %28, align 8
  %225 = load i8*, i8** %28, align 8
  %226 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %227 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %226, i32 0, i32 0
  %228 = load i8*, i8** %227, align 8
  %229 = load i32, i32* %19, align 4
  %230 = zext i32 %229 to i64
  %231 = getelementptr i8, i8* %228, i64 %230
  %232 = icmp ne i8* %225, %231
  %233 = zext i1 %232 to i32
  %234 = call i64 @unlikely(i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %244

236:                                              ; preds = %213
  %237 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %238 = call i32 (%struct.nfp_net_dp*, i8*, ...) @nn_dp_warn(%struct.nfp_net_dp* %237, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %239 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %240 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %241 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %242 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %243 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %239, %struct.nfp_net_r_vector* %240, %struct.nfp_net_rx_ring* %241, %struct.nfp_net_rx_buf* %242, %struct.sk_buff* null)
  br label %62

244:                                              ; preds = %213
  br label %245

245:                                              ; preds = %244, %210
  br label %246

246:                                              ; preds = %245, %198
  %247 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %248 = icmp ne %struct.bpf_prog* %247, null
  br i1 %248, label %249, label %351

249:                                              ; preds = %246
  %250 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %351, label %253

253:                                              ; preds = %249
  %254 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %255 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %254, i32 0, i32 0
  %256 = load i8*, i8** %255, align 8
  %257 = load i32, i32* %19, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr i8, i8* %256, i64 %258
  store i8* %259, i8** %29, align 8
  %260 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %261 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %260, i32 0, i32 0
  %262 = load i8*, i8** %261, align 8
  %263 = load i32, i32* @NFP_NET_RX_BUF_HEADROOM, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr i8, i8* %262, i64 %264
  %266 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  store i8* %265, i8** %266, align 8
  %267 = load i8*, i8** %29, align 8
  %268 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  store i8* %267, i8** %268, align 8
  %269 = load i8*, i8** %29, align 8
  %270 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 2
  store i8* %269, i8** %270, align 8
  %271 = load i8*, i8** %29, align 8
  %272 = load i32, i32* %18, align 4
  %273 = zext i32 %272 to i64
  %274 = getelementptr i8, i8* %271, i64 %273
  %275 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 3
  store i8* %274, i8** %275, align 8
  %276 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %277 = call i32 @bpf_prog_run_xdp(%struct.bpf_prog* %276, %struct.xdp_buff* %13)
  store i32 %277, i32* %31, align 4
  %278 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 3
  %279 = load i8*, i8** %278, align 8
  %280 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %281 = load i8*, i8** %280, align 8
  %282 = ptrtoint i8* %279 to i64
  %283 = ptrtoint i8* %281 to i64
  %284 = sub i64 %282, %283
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %18, align 4
  %286 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %287 = load i8*, i8** %286, align 8
  %288 = load i8*, i8** %29, align 8
  %289 = ptrtoint i8* %287 to i64
  %290 = ptrtoint i8* %288 to i64
  %291 = sub i64 %289, %290
  %292 = load i32, i32* %19, align 4
  %293 = zext i32 %292 to i64
  %294 = add nsw i64 %293, %291
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %19, align 4
  %296 = load i32, i32* %31, align 4
  switch i32 %296, label %330 [
    i32 129, label %297
    i32 128, label %306
    i32 131, label %333
    i32 130, label %340
  ]

297:                                              ; preds = %253
  %298 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 1
  %299 = load i8*, i8** %298, align 8
  %300 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 2
  %301 = load i8*, i8** %300, align 8
  %302 = ptrtoint i8* %299 to i64
  %303 = ptrtoint i8* %301 to i64
  %304 = sub i64 %302, %303
  %305 = trunc i64 %304 to i32
  store i32 %305, i32* %26, align 4
  br label %350

306:                                              ; preds = %253
  %307 = load i32, i32* %19, align 4
  %308 = load i32, i32* @NFP_NET_RX_BUF_HEADROOM, align 4
  %309 = sub i32 %307, %308
  store i32 %309, i32* %30, align 4
  %310 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %311 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %312 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %313 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %314 = load i32, i32* %30, align 4
  %315 = load i32, i32* %18, align 4
  %316 = call i32 @nfp_net_tx_xdp_buf(%struct.nfp_net_dp* %310, %struct.nfp_net_rx_ring* %311, %struct.nfp_net_tx_ring* %312, %struct.nfp_net_rx_buf* %313, i32 %314, i32 %315, i32* %9)
  %317 = icmp ne i32 %316, 0
  %318 = xor i1 %317, true
  %319 = zext i1 %318 to i32
  %320 = call i64 @unlikely(i32 %319)
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %322, label %329

322:                                              ; preds = %306
  %323 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %324 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %323, i32 0, i32 3
  %325 = load %struct.net_device*, %struct.net_device** %324, align 8
  %326 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %327 = load i32, i32* %31, align 4
  %328 = call i32 @trace_xdp_exception(%struct.net_device* %325, %struct.bpf_prog* %326, i32 %327)
  br label %329

329:                                              ; preds = %322, %306
  br label %62

330:                                              ; preds = %253
  %331 = load i32, i32* %31, align 4
  %332 = call i32 @bpf_warn_invalid_xdp_action(i32 %331)
  br label %333

333:                                              ; preds = %253, %330
  %334 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %335 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %334, i32 0, i32 3
  %336 = load %struct.net_device*, %struct.net_device** %335, align 8
  %337 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %338 = load i32, i32* %31, align 4
  %339 = call i32 @trace_xdp_exception(%struct.net_device* %336, %struct.bpf_prog* %337, i32 %338)
  br label %340

340:                                              ; preds = %253, %333
  %341 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %342 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %343 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %344 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %343, i32 0, i32 0
  %345 = load i8*, i8** %344, align 8
  %346 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %347 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %346, i32 0, i32 1
  %348 = load i64, i64* %347, align 8
  %349 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %341, %struct.nfp_net_rx_ring* %342, i8* %345, i64 %348)
  br label %62

350:                                              ; preds = %297
  br label %351

351:                                              ; preds = %350, %249, %246
  %352 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = icmp ne i64 %353, 0
  %355 = xor i1 %354, true
  %356 = zext i1 %355 to i32
  %357 = call i64 @likely(i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %363

359:                                              ; preds = %351
  %360 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %361 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %360, i32 0, i32 3
  %362 = load %struct.net_device*, %struct.net_device** %361, align 8
  store %struct.net_device* %362, %struct.net_device** %24, align 8
  br label %426

363:                                              ; preds = %351
  %364 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 0
  %365 = load i64, i64* %364, align 8
  %366 = load i64, i64* @NFP_META_PORT_ID_CTRL, align 8
  %367 = icmp eq i64 %365, %366
  br i1 %367, label %368, label %393

368:                                              ; preds = %363
  %369 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %370 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %369, i32 0, i32 3
  %371 = load %struct.net_device*, %struct.net_device** %370, align 8
  %372 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %371)
  store %struct.nfp_net* %372, %struct.nfp_net** %32, align 8
  %373 = load %struct.nfp_net*, %struct.nfp_net** %32, align 8
  %374 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %373, i32 0, i32 0
  %375 = load i32, i32* %374, align 4
  %376 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %377 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %376, i32 0, i32 0
  %378 = load i8*, i8** %377, align 8
  %379 = load i32, i32* %19, align 4
  %380 = zext i32 %379 to i64
  %381 = getelementptr i8, i8* %378, i64 %380
  %382 = load i32, i32* %18, align 4
  %383 = call i32 @nfp_app_ctrl_rx_raw(i32 %375, i8* %381, i32 %382)
  %384 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %385 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %386 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %387 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %386, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %390 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %384, %struct.nfp_net_rx_ring* %385, i8* %388, i64 %391)
  br label %62

393:                                              ; preds = %363
  %394 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %395 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %394, i32 0, i32 3
  %396 = load %struct.net_device*, %struct.net_device** %395, align 8
  %397 = call %struct.nfp_net* @netdev_priv(%struct.net_device* %396)
  store %struct.nfp_net* %397, %struct.nfp_net** %33, align 8
  %398 = load %struct.nfp_net*, %struct.nfp_net** %33, align 8
  %399 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 4
  %401 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 0
  %402 = load i64, i64* %401, align 8
  %403 = call %struct.net_device* @nfp_app_dev_get(i32 %400, i64 %402, i32* %23)
  store %struct.net_device* %403, %struct.net_device** %24, align 8
  %404 = load %struct.net_device*, %struct.net_device** %24, align 8
  %405 = icmp ne %struct.net_device* %404, null
  %406 = xor i1 %405, true
  %407 = zext i1 %406 to i32
  %408 = call i64 @unlikely(i32 %407)
  %409 = icmp ne i64 %408, 0
  br i1 %409, label %410, label %416

410:                                              ; preds = %393
  %411 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %412 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %413 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %414 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %415 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %411, %struct.nfp_net_r_vector* %412, %struct.nfp_net_rx_ring* %413, %struct.nfp_net_rx_buf* %414, %struct.sk_buff* null)
  br label %62

416:                                              ; preds = %393
  %417 = load %struct.net_device*, %struct.net_device** %24, align 8
  %418 = call i64 @nfp_netdev_is_nfp_repr(%struct.net_device* %417)
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %424

420:                                              ; preds = %416
  %421 = load %struct.net_device*, %struct.net_device** %24, align 8
  %422 = load i32, i32* %18, align 4
  %423 = call i32 @nfp_repr_inc_rx_stats(%struct.net_device* %421, i32 %422)
  br label %424

424:                                              ; preds = %420, %416
  br label %425

425:                                              ; preds = %424
  br label %426

426:                                              ; preds = %425, %359
  %427 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %428 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %427, i32 0, i32 0
  %429 = load i8*, i8** %428, align 8
  %430 = load i32, i32* %10, align 4
  %431 = call %struct.sk_buff* @build_skb(i8* %429, i32 %430)
  store %struct.sk_buff* %431, %struct.sk_buff** %11, align 8
  %432 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %433 = icmp ne %struct.sk_buff* %432, null
  %434 = xor i1 %433, true
  %435 = zext i1 %434 to i32
  %436 = call i64 @unlikely(i32 %435)
  %437 = icmp ne i64 %436, 0
  br i1 %437, label %438, label %444

438:                                              ; preds = %426
  %439 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %440 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %441 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %442 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %443 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %439, %struct.nfp_net_r_vector* %440, %struct.nfp_net_rx_ring* %441, %struct.nfp_net_rx_buf* %442, %struct.sk_buff* null)
  br label %62

444:                                              ; preds = %426
  %445 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %446 = call i8* @nfp_net_napi_alloc_one(%struct.nfp_net_dp* %445, i64* %25)
  store i8* %446, i8** %27, align 8
  %447 = load i8*, i8** %27, align 8
  %448 = icmp ne i8* %447, null
  %449 = xor i1 %448, true
  %450 = zext i1 %449 to i32
  %451 = call i64 @unlikely(i32 %450)
  %452 = icmp ne i64 %451, 0
  br i1 %452, label %453, label %460

453:                                              ; preds = %444
  %454 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %455 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %456 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %457 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %458 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %459 = call i32 @nfp_net_rx_drop(%struct.nfp_net_dp* %454, %struct.nfp_net_r_vector* %455, %struct.nfp_net_rx_ring* %456, %struct.nfp_net_rx_buf* %457, %struct.sk_buff* %458)
  br label %62

460:                                              ; preds = %444
  %461 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %462 = load %struct.nfp_net_rx_buf*, %struct.nfp_net_rx_buf** %20, align 8
  %463 = getelementptr inbounds %struct.nfp_net_rx_buf, %struct.nfp_net_rx_buf* %462, i32 0, i32 1
  %464 = load i64, i64* %463, align 8
  %465 = call i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp* %461, i64 %464)
  %466 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %467 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %468 = load i8*, i8** %27, align 8
  %469 = load i64, i64* %25, align 8
  %470 = call i32 @nfp_net_rx_give_one(%struct.nfp_net_dp* %466, %struct.nfp_net_rx_ring* %467, i8* %468, i64 %469)
  %471 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %472 = load i32, i32* %19, align 4
  %473 = call i32 @skb_reserve(%struct.sk_buff* %471, i32 %472)
  %474 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %475 = load i32, i32* %18, align 4
  %476 = call i32 @skb_put(%struct.sk_buff* %474, i32 %475)
  %477 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 3
  %478 = load i32, i32* %477, align 8
  %479 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %480 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %479, i32 0, i32 3
  store i32 %478, i32* %480, align 4
  %481 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %482 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = getelementptr inbounds %struct.nfp_meta_parsed, %struct.nfp_meta_parsed* %22, i32 0, i32 1
  %485 = load i32, i32* %484, align 8
  %486 = call i32 @skb_set_hash(%struct.sk_buff* %481, i32 %483, i32 %485)
  %487 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %488 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %489 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %488, i32 0, i32 1
  %490 = load i32, i32* %489, align 8
  %491 = call i32 @skb_record_rx_queue(%struct.sk_buff* %487, i32 %490)
  %492 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %493 = load %struct.net_device*, %struct.net_device** %24, align 8
  %494 = call i32 @eth_type_trans(%struct.sk_buff* %492, %struct.net_device* %493)
  %495 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %496 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %495, i32 0, i32 2
  store i32 %494, i32* %496, align 8
  %497 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %6, align 8
  %498 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %5, align 8
  %499 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %500 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %501 = call i32 @nfp_net_rx_csum(%struct.nfp_net_dp* %497, %struct.nfp_net_r_vector* %498, %struct.nfp_net_rx_desc* %499, %struct.nfp_meta_parsed* %22, %struct.sk_buff* %500)
  %502 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %503 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %502, i32 0, i32 0
  %504 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %503, i32 0, i32 1
  %505 = load i32, i32* %504, align 4
  %506 = load i32, i32* @PCIE_DESC_RX_VLAN, align 4
  %507 = and i32 %505, %506
  %508 = icmp ne i32 %507, 0
  br i1 %508, label %509, label %519

509:                                              ; preds = %460
  %510 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %511 = load i32, i32* @ETH_P_8021Q, align 4
  %512 = call i32 @htons(i32 %511)
  %513 = load %struct.nfp_net_rx_desc*, %struct.nfp_net_rx_desc** %21, align 8
  %514 = getelementptr inbounds %struct.nfp_net_rx_desc, %struct.nfp_net_rx_desc* %513, i32 0, i32 0
  %515 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %514, i32 0, i32 2
  %516 = load i32, i32* %515, align 4
  %517 = call i32 @le16_to_cpu(i32 %516)
  %518 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %510, i32 %512, i32 %517)
  br label %519

519:                                              ; preds = %509, %460
  %520 = load i32, i32* %26, align 4
  %521 = icmp ne i32 %520, 0
  br i1 %521, label %522, label %526

522:                                              ; preds = %519
  %523 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %524 = load i32, i32* %26, align 4
  %525 = call i32 @skb_metadata_set(%struct.sk_buff* %523, i32 %524)
  br label %526

526:                                              ; preds = %522, %519
  %527 = load i32, i32* %23, align 4
  %528 = icmp ne i32 %527, 0
  %529 = xor i1 %528, true
  %530 = zext i1 %529 to i32
  %531 = call i64 @likely(i32 %530)
  %532 = icmp ne i64 %531, 0
  br i1 %532, label %533, label %540

533:                                              ; preds = %526
  %534 = load %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_ring** %3, align 8
  %535 = getelementptr inbounds %struct.nfp_net_rx_ring, %struct.nfp_net_rx_ring* %534, i32 0, i32 0
  %536 = load %struct.nfp_net_r_vector*, %struct.nfp_net_r_vector** %535, align 8
  %537 = getelementptr inbounds %struct.nfp_net_r_vector, %struct.nfp_net_r_vector* %536, i32 0, i32 1
  %538 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %539 = call i32 @napi_gro_receive(i32* %537, %struct.sk_buff* %538)
  br label %551

540:                                              ; preds = %526
  %541 = load %struct.net_device*, %struct.net_device** %24, align 8
  %542 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %543 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %542, i32 0, i32 1
  store %struct.net_device* %541, %struct.net_device** %543, align 8
  %544 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %545 = call i32 @skb_reset_network_header(%struct.sk_buff* %544)
  %546 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %547 = load i32, i32* @ETH_HLEN, align 4
  %548 = call i32 @__skb_push(%struct.sk_buff* %546, i32 %547)
  %549 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %550 = call i32 @dev_queue_xmit(%struct.sk_buff* %549)
  br label %551

551:                                              ; preds = %540, %533
  br label %62

552:                                              ; preds = %85, %62
  %553 = load %struct.bpf_prog*, %struct.bpf_prog** %8, align 8
  %554 = icmp ne %struct.bpf_prog* %553, null
  br i1 %554, label %555, label %586

555:                                              ; preds = %552
  %556 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %557 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %556, i32 0, i32 2
  %558 = load i64, i64* %557, align 8
  %559 = icmp ne i64 %558, 0
  br i1 %559, label %560, label %563

560:                                              ; preds = %555
  %561 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %562 = call i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring* %561)
  br label %585

563:                                              ; preds = %555
  %564 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %565 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %564, i32 0, i32 0
  %566 = load i64, i64* %565, align 8
  %567 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %568 = getelementptr inbounds %struct.nfp_net_tx_ring, %struct.nfp_net_tx_ring* %567, i32 0, i32 1
  %569 = load i64, i64* %568, align 8
  %570 = icmp ne i64 %566, %569
  %571 = zext i1 %570 to i32
  %572 = call i64 @unlikely(i32 %571)
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %584

574:                                              ; preds = %563
  %575 = load i32, i32* %9, align 4
  %576 = icmp ne i32 %575, 0
  br i1 %576, label %584, label %577

577:                                              ; preds = %574
  %578 = load %struct.nfp_net_tx_ring*, %struct.nfp_net_tx_ring** %7, align 8
  %579 = call i32 @nfp_net_xdp_complete(%struct.nfp_net_tx_ring* %578)
  %580 = icmp ne i32 %579, 0
  br i1 %580, label %583, label %581

581:                                              ; preds = %577
  %582 = load i32, i32* %4, align 4
  store i32 %582, i32* %12, align 4
  br label %583

583:                                              ; preds = %581, %577
  br label %584

584:                                              ; preds = %583, %574, %563
  br label %585

585:                                              ; preds = %584, %560
  br label %586

586:                                              ; preds = %585, %552
  %587 = call i32 (...) @rcu_read_unlock()
  %588 = load i32, i32* %12, align 4
  ret i32 %588
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.bpf_prog* @READ_ONCE(i32) #1

declare dso_local i32 @D_IDX(%struct.nfp_net_rx_ring*, i32) #1

declare dso_local i32 @dma_rmb(...) #1

declare dso_local i32 @memset(%struct.nfp_meta_parsed*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @nn_dp_warn(%struct.nfp_net_dp*, i8*, ...) #1

declare dso_local i32 @nfp_net_rx_drop(%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_ring*, %struct.nfp_net_rx_buf*, %struct.sk_buff*) #1

declare dso_local i32 @nfp_net_dma_sync_cpu_rx(%struct.nfp_net_dp*, i64, i32) #1

declare dso_local i32 @nfp_net_set_hash_desc(%struct.net_device*, %struct.nfp_meta_parsed*, i8*, %struct.nfp_net_rx_desc*) #1

declare dso_local i8* @nfp_net_parse_meta(%struct.net_device*, %struct.nfp_meta_parsed*, i8*, i32) #1

declare dso_local i32 @bpf_prog_run_xdp(%struct.bpf_prog*, %struct.xdp_buff*) #1

declare dso_local i32 @nfp_net_tx_xdp_buf(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, %struct.nfp_net_tx_ring*, %struct.nfp_net_rx_buf*, i32, i32, i32*) #1

declare dso_local i32 @trace_xdp_exception(%struct.net_device*, %struct.bpf_prog*, i32) #1

declare dso_local i32 @bpf_warn_invalid_xdp_action(i32) #1

declare dso_local i32 @nfp_net_rx_give_one(%struct.nfp_net_dp*, %struct.nfp_net_rx_ring*, i8*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.nfp_net* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_app_ctrl_rx_raw(i32, i8*, i32) #1

declare dso_local %struct.net_device* @nfp_app_dev_get(i32, i64, i32*) #1

declare dso_local i64 @nfp_netdev_is_nfp_repr(%struct.net_device*) #1

declare dso_local i32 @nfp_repr_inc_rx_stats(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @build_skb(i8*, i32) #1

declare dso_local i8* @nfp_net_napi_alloc_one(%struct.nfp_net_dp*, i64*) #1

declare dso_local i32 @nfp_net_dma_unmap_rx(%struct.nfp_net_dp*, i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @nfp_net_rx_csum(%struct.nfp_net_dp*, %struct.nfp_net_r_vector*, %struct.nfp_net_rx_desc*, %struct.nfp_meta_parsed*, %struct.sk_buff*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @dev_queue_xmit(%struct.sk_buff*) #1

declare dso_local i32 @nfp_net_tx_xmit_more_flush(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @nfp_net_xdp_complete(%struct.nfp_net_tx_ring*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
