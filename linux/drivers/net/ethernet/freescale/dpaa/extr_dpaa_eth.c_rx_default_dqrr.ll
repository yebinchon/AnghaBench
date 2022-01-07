; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_rx_default_dqrr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa/extr_dpaa_eth.c_rx_default_dqrr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qman_portal = type { i32 }
%struct.qman_fq = type { i32 }
%struct.qm_dqrr_entry = type { %struct.qm_fd }
%struct.qm_fd = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.dpaa_percpu_priv = type { %struct.rtnl_link_stats64 }
%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.dpaa_bp = type { i32, i32, i32 }
%struct.dpaa_priv = type { %struct.TYPE_4__*, i64, i64, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.sk_buff = type { i32, i32 }
%struct.dpaa_fq = type { %struct.net_device* }

@qman_cb_dqrr_consume = common dso_local global i32 0, align 4
@qman_cb_dqrr_stop = common dso_local global i32 0, align 4
@FM_FD_STAT_RX_ERRORS = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"FD status = 0x%08x\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@qm_fd_contig = common dso_local global i32 0, align 4
@qm_fd_sg = common dso_local global i32 0, align 4
@RX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"fman_port_get_tstamp failed!\0A\00", align 1
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@FM_FD_STAT_L4CV = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L4 = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@NET_RX_DROP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qman_portal*, %struct.qman_fq*, %struct.qm_dqrr_entry*)* @rx_default_dqrr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_default_dqrr(%struct.qman_portal* %0, %struct.qman_fq* %1, %struct.qm_dqrr_entry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qman_portal*, align 8
  %6 = alloca %struct.qman_fq*, align 8
  %7 = alloca %struct.qm_dqrr_entry*, align 8
  %8 = alloca %struct.skb_shared_hwtstamps*, align 8
  %9 = alloca %struct.rtnl_link_stats64*, align 8
  %10 = alloca %struct.dpaa_percpu_priv*, align 8
  %11 = alloca %struct.qm_fd*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.dpaa_bp*, align 8
  %18 = alloca %struct.dpaa_priv*, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store %struct.qman_portal* %0, %struct.qman_portal** %5, align 8
  store %struct.qman_fq* %1, %struct.qman_fq** %6, align 8
  store %struct.qm_dqrr_entry* %2, %struct.qm_dqrr_entry** %7, align 8
  %25 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %26 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %25, i32 0, i32 0
  store %struct.qm_fd* %26, %struct.qm_fd** %11, align 8
  %27 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %28 = call i32 @qm_fd_addr(%struct.qm_fd* %27)
  store i32 %28, i32* %12, align 4
  %29 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %30 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @be32_to_cpu(i32 %31)
  store i32 %32, i32* %15, align 4
  %33 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %34 = call i32 @qm_fd_get_format(%struct.qm_fd* %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %36 = bitcast %struct.qman_fq* %35 to %struct.dpaa_fq*
  %37 = getelementptr inbounds %struct.dpaa_fq, %struct.dpaa_fq* %36, i32 0, i32 0
  %38 = load %struct.net_device*, %struct.net_device** %37, align 8
  store %struct.net_device* %38, %struct.net_device** %14, align 8
  %39 = load %struct.net_device*, %struct.net_device** %14, align 8
  %40 = call %struct.dpaa_priv* @netdev_priv(%struct.net_device* %39)
  store %struct.dpaa_priv* %40, %struct.dpaa_priv** %18, align 8
  %41 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %42 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %44)
  store %struct.dpaa_bp* %45, %struct.dpaa_bp** %17, align 8
  %46 = load %struct.dpaa_bp*, %struct.dpaa_bp** %17, align 8
  %47 = icmp ne %struct.dpaa_bp* %46, null
  br i1 %47, label %50, label %48

48:                                               ; preds = %3
  %49 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %49, i32* %4, align 4
  br label %285

50:                                               ; preds = %3
  %51 = load %struct.net_device*, %struct.net_device** %14, align 8
  %52 = load %struct.qman_fq*, %struct.qman_fq** %6, align 8
  %53 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %54 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %53, i32 0, i32 0
  %55 = call i32 @trace_dpaa_rx_fd(%struct.net_device* %51, %struct.qman_fq* %52, %struct.qm_fd* %54)
  %56 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %57 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 8
  %59 = call i8* @this_cpu_ptr(i32 %58)
  %60 = bitcast i8* %59 to %struct.dpaa_percpu_priv*
  store %struct.dpaa_percpu_priv* %60, %struct.dpaa_percpu_priv** %10, align 8
  %61 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %10, align 8
  %62 = getelementptr inbounds %struct.dpaa_percpu_priv, %struct.dpaa_percpu_priv* %61, i32 0, i32 0
  store %struct.rtnl_link_stats64* %62, %struct.rtnl_link_stats64** %9, align 8
  %63 = load %struct.dpaa_percpu_priv*, %struct.dpaa_percpu_priv** %10, align 8
  %64 = load %struct.qman_portal*, %struct.qman_portal** %5, align 8
  %65 = call i32 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv* %63, %struct.qman_portal* %64)
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %50
  %69 = load i32, i32* @qman_cb_dqrr_stop, align 4
  store i32 %69, i32* %4, align 4
  br label %285

70:                                               ; preds = %50
  %71 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %72 = call i32 @dpaa_eth_refill_bpools(%struct.dpaa_priv* %71)
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %14, align 8
  %77 = load %struct.qm_dqrr_entry*, %struct.qm_dqrr_entry** %7, align 8
  %78 = getelementptr inbounds %struct.qm_dqrr_entry, %struct.qm_dqrr_entry* %77, i32 0, i32 0
  %79 = call i32 @dpaa_fd_release(%struct.net_device* %76, %struct.qm_fd* %78)
  %80 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %80, i32* %4, align 4
  br label %285

81:                                               ; preds = %70
  %82 = load i32, i32* %15, align 4
  %83 = load i32, i32* @FM_FD_STAT_RX_ERRORS, align 4
  %84 = and i32 %82, %83
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %107

87:                                               ; preds = %81
  %88 = call i64 (...) @net_ratelimit()
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %87
  %91 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %92 = load i32, i32* @hw, align 4
  %93 = load %struct.net_device*, %struct.net_device** %14, align 8
  %94 = load i32, i32* %15, align 4
  %95 = load i32, i32* @FM_FD_STAT_RX_ERRORS, align 4
  %96 = and i32 %94, %95
  %97 = call i32 @netif_warn(%struct.dpaa_priv* %91, i32 %92, %struct.net_device* %93, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %96)
  br label %98

98:                                               ; preds = %90, %87
  %99 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %100 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  %103 = load %struct.net_device*, %struct.net_device** %14, align 8
  %104 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %105 = call i32 @dpaa_fd_release(%struct.net_device* %103, %struct.qm_fd* %104)
  %106 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %106, i32* %4, align 4
  br label %285

107:                                              ; preds = %81
  %108 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %109 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call %struct.dpaa_bp* @dpaa_bpid2pool(i32 %110)
  store %struct.dpaa_bp* %111, %struct.dpaa_bp** %17, align 8
  %112 = load %struct.dpaa_bp*, %struct.dpaa_bp** %17, align 8
  %113 = icmp ne %struct.dpaa_bp* %112, null
  br i1 %113, label %116, label %114

114:                                              ; preds = %107
  %115 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %115, i32* %4, align 4
  br label %285

116:                                              ; preds = %107
  %117 = load %struct.dpaa_bp*, %struct.dpaa_bp** %17, align 8
  %118 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %12, align 4
  %121 = load %struct.dpaa_bp*, %struct.dpaa_bp** %17, align 8
  %122 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %125 = call i32 @dma_unmap_single(i32 %119, i32 %120, i32 %123, i32 %124)
  %126 = load i32, i32* %12, align 4
  %127 = call i8* @phys_to_virt(i32 %126)
  store i8* %127, i8** %22, align 8
  %128 = load i8*, i8** %22, align 8
  %129 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %130 = call i32 @qm_fd_get_offset(%struct.qm_fd* %129)
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %128, i64 %131
  %133 = call i32 @prefetch(i8* %132)
  %134 = load i32, i32* %13, align 4
  %135 = load i32, i32* @qm_fd_contig, align 4
  %136 = icmp ne i32 %134, %135
  br i1 %136, label %137, label %141

137:                                              ; preds = %116
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* @qm_fd_sg, align 4
  %140 = icmp ne i32 %138, %139
  br label %141

141:                                              ; preds = %137, %116
  %142 = phi i1 [ false, %116 ], [ %140, %137 ]
  %143 = zext i1 %142 to i32
  %144 = call i32 @WARN_ON(i32 %143)
  %145 = load %struct.dpaa_bp*, %struct.dpaa_bp** %17, align 8
  %146 = getelementptr inbounds %struct.dpaa_bp, %struct.dpaa_bp* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @this_cpu_ptr(i32 %147)
  %149 = bitcast i8* %148 to i32*
  store i32* %149, i32** %21, align 8
  %150 = load i32*, i32** %21, align 8
  %151 = load i32, i32* %150, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %150, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* @qm_fd_contig, align 4
  %155 = icmp eq i32 %153, %154
  %156 = zext i1 %155 to i32
  %157 = call i64 @likely(i32 %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %163

159:                                              ; preds = %141
  %160 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %161 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %162 = call %struct.sk_buff* @contig_fd_to_skb(%struct.dpaa_priv* %160, %struct.qm_fd* %161)
  store %struct.sk_buff* %162, %struct.sk_buff** %20, align 8
  br label %167

163:                                              ; preds = %141
  %164 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %165 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %166 = call %struct.sk_buff* @sg_fd_to_skb(%struct.dpaa_priv* %164, %struct.qm_fd* %165)
  store %struct.sk_buff* %166, %struct.sk_buff** %20, align 8
  br label %167

167:                                              ; preds = %163, %159
  %168 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %169 = icmp ne %struct.sk_buff* %168, null
  br i1 %169, label %172, label %170

170:                                              ; preds = %167
  %171 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %171, i32* %4, align 4
  br label %285

172:                                              ; preds = %167
  %173 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %174 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %173, i32 0, i32 2
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %205

177:                                              ; preds = %172
  %178 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %179 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %178)
  store %struct.skb_shared_hwtstamps* %179, %struct.skb_shared_hwtstamps** %8, align 8
  %180 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %8, align 8
  %181 = call i32 @memset(%struct.skb_shared_hwtstamps* %180, i32 0, i32 4)
  %182 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %183 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %182, i32 0, i32 0
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i32*, i32** %185, align 8
  %187 = load i64, i64* @RX, align 8
  %188 = getelementptr inbounds i32, i32* %186, i64 %187
  %189 = load i32, i32* %188, align 4
  %190 = load i8*, i8** %22, align 8
  %191 = call i32 @fman_port_get_tstamp(i32 %189, i8* %190, i32* %23)
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %198, label %193

193:                                              ; preds = %177
  %194 = load i32, i32* %23, align 4
  %195 = call i32 @ns_to_ktime(i32 %194)
  %196 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %8, align 8
  %197 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 4
  br label %204

198:                                              ; preds = %177
  %199 = load %struct.net_device*, %struct.net_device** %14, align 8
  %200 = getelementptr inbounds %struct.net_device, %struct.net_device* %199, i32 0, i32 1
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @dev_warn(i32 %202, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %204

204:                                              ; preds = %198, %193
  br label %205

205:                                              ; preds = %204, %172
  %206 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %207 = load %struct.net_device*, %struct.net_device** %14, align 8
  %208 = call i32 @eth_type_trans(%struct.sk_buff* %206, %struct.net_device* %207)
  %209 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 1
  store i32 %208, i32* %210, align 4
  %211 = load %struct.net_device*, %struct.net_device** %14, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = load i32, i32* @NETIF_F_RXHASH, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %257

217:                                              ; preds = %205
  %218 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %219 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %257

222:                                              ; preds = %217
  %223 = load %struct.dpaa_priv*, %struct.dpaa_priv** %18, align 8
  %224 = getelementptr inbounds %struct.dpaa_priv, %struct.dpaa_priv* %223, i32 0, i32 0
  %225 = load %struct.TYPE_4__*, %struct.TYPE_4__** %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  %227 = load i32*, i32** %226, align 8
  %228 = load i64, i64* @RX, align 8
  %229 = getelementptr inbounds i32, i32* %227, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @fman_port_get_hash_result_offset(i32 %230, i32* %16)
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %257, label %233

233:                                              ; preds = %222
  %234 = load %struct.qm_fd*, %struct.qm_fd** %11, align 8
  %235 = getelementptr inbounds %struct.qm_fd, %struct.qm_fd* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @be32_to_cpu(i32 %236)
  %238 = load i32, i32* @FM_FD_STAT_L4CV, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %243

241:                                              ; preds = %233
  %242 = load i32, i32* @PKT_HASH_TYPE_L4, align 4
  br label %245

243:                                              ; preds = %233
  %244 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  br label %245

245:                                              ; preds = %243, %241
  %246 = phi i32 [ %242, %241 ], [ %244, %243 ]
  store i32 %246, i32* %24, align 4
  %247 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %248 = load i8*, i8** %22, align 8
  %249 = load i32, i32* %16, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr i8, i8* %248, i64 %250
  %252 = bitcast i8* %251 to i32*
  %253 = load i32, i32* %252, align 4
  %254 = call i32 @be32_to_cpu(i32 %253)
  %255 = load i32, i32* %24, align 4
  %256 = call i32 @skb_set_hash(%struct.sk_buff* %247, i32 %254, i32 %255)
  br label %257

257:                                              ; preds = %245, %222, %217, %205
  %258 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %259 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  store i32 %260, i32* %19, align 4
  %261 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %262 = call i64 @netif_receive_skb(%struct.sk_buff* %261)
  %263 = load i64, i64* @NET_RX_DROP, align 8
  %264 = icmp eq i64 %262, %263
  %265 = zext i1 %264 to i32
  %266 = call i64 @unlikely(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %274

268:                                              ; preds = %257
  %269 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %270 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %269, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %270, align 4
  %273 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %273, i32* %4, align 4
  br label %285

274:                                              ; preds = %257
  %275 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %276 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = add nsw i32 %277, 1
  store i32 %278, i32* %276, align 4
  %279 = load i32, i32* %19, align 4
  %280 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %9, align 8
  %281 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = add i32 %282, %279
  store i32 %283, i32* %281, align 4
  %284 = load i32, i32* @qman_cb_dqrr_consume, align 4
  store i32 %284, i32* %4, align 4
  br label %285

285:                                              ; preds = %274, %268, %170, %114, %98, %75, %68, %48
  %286 = load i32, i32* %4, align 4
  ret i32 %286
}

declare dso_local i32 @qm_fd_addr(%struct.qm_fd*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @qm_fd_get_format(%struct.qm_fd*) #1

declare dso_local %struct.dpaa_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.dpaa_bp* @dpaa_bpid2pool(i32) #1

declare dso_local i32 @trace_dpaa_rx_fd(%struct.net_device*, %struct.qman_fq*, %struct.qm_fd*) #1

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dpaa_eth_napi_schedule(%struct.dpaa_percpu_priv*, %struct.qman_portal*) #1

declare dso_local i32 @dpaa_eth_refill_bpools(%struct.dpaa_priv*) #1

declare dso_local i32 @dpaa_fd_release(%struct.net_device*, %struct.qm_fd*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @netif_warn(%struct.dpaa_priv*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @prefetch(i8*) #1

declare dso_local i32 @qm_fd_get_offset(%struct.qm_fd*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @contig_fd_to_skb(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local %struct.sk_buff* @sg_fd_to_skb(%struct.dpaa_priv*, %struct.qm_fd*) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @fman_port_get_tstamp(i32, i8*, i32*) #1

declare dso_local i32 @ns_to_ktime(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @fman_port_get_hash_result_offset(i32, i32*) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
