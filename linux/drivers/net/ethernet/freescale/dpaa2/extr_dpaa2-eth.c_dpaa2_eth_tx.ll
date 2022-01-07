; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64 }
%struct.net_device = type { i64 }
%struct.dpaa2_eth_priv = type { i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i64)*, %struct.dpaa2_eth_fq.0*, i32, i32 }
%struct.dpaa2_eth_fq = type opaque
%struct.dpaa2_fd = type { i32 }
%struct.dpaa2_eth_fq.0 = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.dpaa2_eth_drv_stats = type { i32, i32, i32, i32 }
%struct.netdev_queue = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DPAA2_ETH_ENQUEUE_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @dpaa2_eth_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_tx(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.dpaa2_fd, align 4
  %8 = alloca %struct.rtnl_link_stats64*, align 8
  %9 = alloca %struct.dpaa2_eth_drv_stats*, align 8
  %10 = alloca %struct.dpaa2_eth_fq.0*, align 8
  %11 = alloca %struct.netdev_queue*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.dpaa2_eth_priv* %20, %struct.dpaa2_eth_priv** %6, align 8
  store i64 0, i64* %15, align 8
  %21 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %22 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @this_cpu_ptr(i32 %23)
  %25 = bitcast i8* %24 to %struct.rtnl_link_stats64*
  store %struct.rtnl_link_stats64* %25, %struct.rtnl_link_stats64** %8, align 8
  %26 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %27 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i8* @this_cpu_ptr(i32 %28)
  %30 = bitcast i8* %29 to %struct.dpaa2_eth_drv_stats*
  store %struct.dpaa2_eth_drv_stats* %30, %struct.dpaa2_eth_drv_stats** %9, align 8
  %31 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i32 @dpaa2_eth_needed_headroom(%struct.dpaa2_eth_priv* %31, %struct.sk_buff* %32)
  store i32 %33, i32* %13, align 4
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @skb_headroom(%struct.sk_buff* %34)
  %36 = load i32, i32* %13, align 4
  %37 = icmp ult i32 %35, %36
  br i1 %37, label %38, label %72

38:                                               ; preds = %2
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = load i32, i32* %13, align 4
  %41 = call %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff* %39, i32 %40)
  store %struct.sk_buff* %41, %struct.sk_buff** %18, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %43 = icmp ne %struct.sk_buff* %42, null
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %38
  %49 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %50 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  br label %218

53:                                               ; preds = %38
  %54 = load %struct.dpaa2_eth_drv_stats*, %struct.dpaa2_eth_drv_stats** %9, align 8
  %55 = getelementptr inbounds %struct.dpaa2_eth_drv_stats, %struct.dpaa2_eth_drv_stats* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %53
  %63 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @skb_set_owner_w(%struct.sk_buff* %63, i64 %66)
  br label %68

68:                                               ; preds = %62, %53
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = call i32 @dev_kfree_skb(%struct.sk_buff* %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %71, %struct.sk_buff** %4, align 8
  br label %72

72:                                               ; preds = %68, %2
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = icmp ne %struct.sk_buff* %76, null
  %78 = xor i1 %77, true
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %72
  %83 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %84 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %87, i32* %3, align 4
  br label %222

88:                                               ; preds = %72
  %89 = call i32 @memset(%struct.dpaa2_fd* %7, i32 0, i32 4)
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i64 @skb_is_nonlinear(%struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %110

93:                                               ; preds = %88
  %94 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = call i32 @build_sg_fd(%struct.dpaa2_eth_priv* %94, %struct.sk_buff* %95, %struct.dpaa2_fd* %7)
  store i32 %96, i32* %16, align 4
  %97 = load %struct.dpaa2_eth_drv_stats*, %struct.dpaa2_eth_drv_stats** %9, align 8
  %98 = getelementptr inbounds %struct.dpaa2_eth_drv_stats, %struct.dpaa2_eth_drv_stats* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load %struct.dpaa2_eth_drv_stats*, %struct.dpaa2_eth_drv_stats** %9, align 8
  %105 = getelementptr inbounds %struct.dpaa2_eth_drv_stats, %struct.dpaa2_eth_drv_stats* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %107, %103
  %109 = trunc i64 %108 to i32
  store i32 %109, i32* %105, align 4
  br label %114

110:                                              ; preds = %88
  %111 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @build_single_fd(%struct.dpaa2_eth_priv* %111, %struct.sk_buff* %112, %struct.dpaa2_fd* %7)
  store i32 %113, i32* %16, align 4
  br label %114

114:                                              ; preds = %110, %93
  %115 = load i32, i32* %16, align 4
  %116 = call i64 @unlikely(i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %114
  %119 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %120 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %119, i32 0, i32 3
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %217

123:                                              ; preds = %114
  %124 = load %struct.net_device*, %struct.net_device** %5, align 8
  %125 = call i32 @trace_dpaa2_tx_fd(%struct.net_device* %124, %struct.dpaa2_fd* %7)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %127 = call i64 @skb_get_queue_mapping(%struct.sk_buff* %126)
  store i64 %127, i64* %12, align 8
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %123
  %133 = load %struct.net_device*, %struct.net_device** %5, align 8
  %134 = load i64, i64* %12, align 8
  %135 = call i64 @netdev_txq_to_tc(%struct.net_device* %133, i64 %134)
  store i64 %135, i64* %15, align 8
  %136 = load %struct.net_device*, %struct.net_device** %5, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* %15, align 8
  %140 = sub nsw i64 %138, %139
  %141 = sub nsw i64 %140, 1
  store i64 %141, i64* %15, align 8
  %142 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %143 = call i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %142)
  %144 = load i64, i64* %12, align 8
  %145 = urem i64 %144, %143
  store i64 %145, i64* %12, align 8
  br label %146

146:                                              ; preds = %132, %123
  %147 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %148 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %147, i32 0, i32 1
  %149 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.dpaa2_eth_fq.0, %struct.dpaa2_eth_fq.0* %149, i64 %150
  store %struct.dpaa2_eth_fq.0* %151, %struct.dpaa2_eth_fq.0** %10, align 8
  %152 = call i64 @dpaa2_fd_get_len(%struct.dpaa2_fd* %7)
  store i64 %152, i64* %14, align 8
  %153 = load %struct.net_device*, %struct.net_device** %5, align 8
  %154 = load i64, i64* %12, align 8
  %155 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %153, i64 %154)
  store %struct.netdev_queue* %155, %struct.netdev_queue** %11, align 8
  %156 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %157 = load i64, i64* %14, align 8
  %158 = call i32 @netdev_tx_sent_queue(%struct.netdev_queue* %156, i64 %157)
  store i32 0, i32* %17, align 4
  br label %159

159:                                              ; preds = %178, %146
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @DPAA2_ETH_ENQUEUE_RETRIES, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %181

163:                                              ; preds = %159
  %164 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %165 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %164, i32 0, i32 0
  %166 = load i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i64)*, i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i64)** %165, align 8
  %167 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %168 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %10, align 8
  %169 = bitcast %struct.dpaa2_eth_fq.0* %168 to %struct.dpaa2_eth_fq*
  %170 = load i64, i64* %15, align 8
  %171 = call i32 %166(%struct.dpaa2_eth_priv* %167, %struct.dpaa2_eth_fq* %169, %struct.dpaa2_fd* %7, i64 %170)
  store i32 %171, i32* %16, align 4
  %172 = load i32, i32* %16, align 4
  %173 = load i32, i32* @EBUSY, align 4
  %174 = sub nsw i32 0, %173
  %175 = icmp ne i32 %172, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %163
  br label %181

177:                                              ; preds = %163
  br label %178

178:                                              ; preds = %177
  %179 = load i32, i32* %17, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %17, align 4
  br label %159

181:                                              ; preds = %176, %159
  %182 = load i32, i32* %17, align 4
  %183 = load %struct.dpaa2_eth_drv_stats*, %struct.dpaa2_eth_drv_stats** %9, align 8
  %184 = getelementptr inbounds %struct.dpaa2_eth_drv_stats, %struct.dpaa2_eth_drv_stats* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load i32, i32* %16, align 4
  %188 = icmp slt i32 %187, 0
  %189 = zext i1 %188 to i32
  %190 = call i64 @unlikely(i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %203

192:                                              ; preds = %181
  %193 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %194 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 4
  %197 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %198 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %10, align 8
  %199 = call i32 @free_tx_fd(%struct.dpaa2_eth_priv* %197, %struct.dpaa2_eth_fq.0* %198, %struct.dpaa2_fd* %7, i32 0)
  %200 = load %struct.netdev_queue*, %struct.netdev_queue** %11, align 8
  %201 = load i64, i64* %14, align 8
  %202 = call i32 @netdev_tx_completed_queue(%struct.netdev_queue* %200, i32 1, i64 %201)
  br label %215

203:                                              ; preds = %181
  %204 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %205 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load i64, i64* %14, align 8
  %209 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %210 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = add nsw i64 %212, %208
  %214 = trunc i64 %213 to i32
  store i32 %214, i32* %210, align 4
  br label %215

215:                                              ; preds = %203, %192
  %216 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %216, i32* %3, align 4
  br label %222

217:                                              ; preds = %118
  br label %218

218:                                              ; preds = %217, %48
  %219 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %220 = call i32 @dev_kfree_skb(%struct.sk_buff* %219)
  %221 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %218, %215, %82
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i32 @dpaa2_eth_needed_headroom(%struct.dpaa2_eth_priv*, %struct.sk_buff*) #1

declare dso_local i32 @skb_headroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_realloc_headroom(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_set_owner_w(%struct.sk_buff*, i64) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(%struct.dpaa2_fd*, i32, i32) #1

declare dso_local i64 @skb_is_nonlinear(%struct.sk_buff*) #1

declare dso_local i32 @build_sg_fd(%struct.dpaa2_eth_priv*, %struct.sk_buff*, %struct.dpaa2_fd*) #1

declare dso_local i32 @build_single_fd(%struct.dpaa2_eth_priv*, %struct.sk_buff*, %struct.dpaa2_fd*) #1

declare dso_local i32 @trace_dpaa2_tx_fd(%struct.net_device*, %struct.dpaa2_fd*) #1

declare dso_local i64 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i64 @netdev_txq_to_tc(%struct.net_device*, i64) #1

declare dso_local i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i64 @dpaa2_fd_get_len(%struct.dpaa2_fd*) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i64) #1

declare dso_local i32 @netdev_tx_sent_queue(%struct.netdev_queue*, i64) #1

declare dso_local i32 @free_tx_fd(%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq.0*, %struct.dpaa2_fd*, i32) #1

declare dso_local i32 @netdev_tx_completed_queue(%struct.netdev_queue*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
