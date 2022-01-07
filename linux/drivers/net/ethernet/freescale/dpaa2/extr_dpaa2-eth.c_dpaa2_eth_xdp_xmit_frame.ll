; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_xdp_xmit_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_dpaa2_eth_xdp_xmit_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.xdp_frame = type { i32, i8*, i32 }
%struct.dpaa2_eth_priv = type { i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)*, %struct.dpaa2_eth_fq.0*, i32, i32 }
%struct.dpaa2_eth_fq = type opaque
%struct.dpaa2_fd = type { i32 }
%struct.dpaa2_eth_fq.0 = type { i32 }
%struct.rtnl_link_stats64 = type { i32, i32, i32, i32 }
%struct.dpaa2_eth_drv_stats = type { i32 }
%struct.dpaa2_eth_swa = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i8*, %struct.xdp_frame* }

@EINVAL = common dso_local global i32 0, align 4
@DPAA2_ETH_TX_BUF_ALIGN = common dso_local global i32 0, align 4
@DPAA2_ETH_SWA_XDP = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dpaa2_fd_single = common dso_local global i32 0, align 4
@FD_CTRL_PTA = common dso_local global i32 0, align 4
@DPAA2_ETH_ENQUEUE_RETRIES = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.xdp_frame*)* @dpaa2_eth_xdp_xmit_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_xdp_xmit_frame(%struct.net_device* %0, %struct.xdp_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xdp_frame*, align 8
  %6 = alloca %struct.dpaa2_eth_priv*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.rtnl_link_stats64*, align 8
  %9 = alloca %struct.dpaa2_eth_drv_stats*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.dpaa2_eth_swa*, align 8
  %12 = alloca %struct.dpaa2_eth_fq.0*, align 8
  %13 = alloca %struct.dpaa2_fd, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.xdp_frame* %1, %struct.xdp_frame** %5, align 8
  %19 = load %struct.net_device*, %struct.net_device** %4, align 8
  %20 = call %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device* %19)
  store %struct.dpaa2_eth_priv* %20, %struct.dpaa2_eth_priv** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load %struct.device*, %struct.device** %23, align 8
  store %struct.device* %24, %struct.device** %7, align 8
  %25 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %26 = call i32 @dpaa2_eth_needed_headroom(%struct.dpaa2_eth_priv* %25, i32* null)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %28 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* %10, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %198

35:                                               ; preds = %2
  %36 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %37 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @this_cpu_ptr(i32 %38)
  %40 = bitcast i8* %39 to %struct.rtnl_link_stats64*
  store %struct.rtnl_link_stats64* %40, %struct.rtnl_link_stats64** %8, align 8
  %41 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %42 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i8* @this_cpu_ptr(i32 %43)
  %45 = bitcast i8* %44 to %struct.dpaa2_eth_drv_stats*
  store %struct.dpaa2_eth_drv_stats* %45, %struct.dpaa2_eth_drv_stats** %9, align 8
  %46 = call i32 @memset(%struct.dpaa2_fd* %13, i32 0, i32 4)
  %47 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %48 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %47, i32 0, i32 1
  %49 = load i8*, i8** %48, align 8
  %50 = load i32, i32* %10, align 4
  %51 = zext i32 %50 to i64
  %52 = sub i64 0, %51
  %53 = getelementptr i8, i8* %49, i64 %52
  store i8* %53, i8** %14, align 8
  %54 = load i8*, i8** %14, align 8
  %55 = load i32, i32* @DPAA2_ETH_TX_BUF_ALIGN, align 4
  %56 = sext i32 %55 to i64
  %57 = sub i64 0, %56
  %58 = getelementptr i8, i8* %54, i64 %57
  %59 = load i32, i32* @DPAA2_ETH_TX_BUF_ALIGN, align 4
  %60 = call i8* @PTR_ALIGN(i8* %58, i32 %59)
  store i8* %60, i8** %15, align 8
  %61 = load i8*, i8** %15, align 8
  %62 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %63 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %62, i32 0, i32 1
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %66 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = zext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr i8, i8* %64, i64 %69
  %71 = icmp uge i8* %61, %70
  br i1 %71, label %72, label %74

72:                                               ; preds = %35
  %73 = load i8*, i8** %15, align 8
  store i8* %73, i8** %14, align 8
  br label %74

74:                                               ; preds = %72, %35
  %75 = load i8*, i8** %14, align 8
  %76 = bitcast i8* %75 to %struct.dpaa2_eth_swa*
  store %struct.dpaa2_eth_swa* %76, %struct.dpaa2_eth_swa** %11, align 8
  %77 = load i32, i32* @DPAA2_ETH_SWA_XDP, align 4
  %78 = load %struct.dpaa2_eth_swa*, %struct.dpaa2_eth_swa** %11, align 8
  %79 = getelementptr inbounds %struct.dpaa2_eth_swa, %struct.dpaa2_eth_swa* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %81 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %84 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = sext i32 %85 to i64
  %87 = getelementptr i8, i8* %82, i64 %86
  %88 = load i8*, i8** %14, align 8
  %89 = ptrtoint i8* %87 to i64
  %90 = ptrtoint i8* %88 to i64
  %91 = sub i64 %89, %90
  %92 = inttoptr i64 %91 to i8*
  %93 = load %struct.dpaa2_eth_swa*, %struct.dpaa2_eth_swa** %11, align 8
  %94 = getelementptr inbounds %struct.dpaa2_eth_swa, %struct.dpaa2_eth_swa* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  store i8* %92, i8** %95, align 8
  %96 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %97 = load %struct.dpaa2_eth_swa*, %struct.dpaa2_eth_swa** %11, align 8
  %98 = getelementptr inbounds %struct.dpaa2_eth_swa, %struct.dpaa2_eth_swa* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store %struct.xdp_frame* %96, %struct.xdp_frame** %99, align 8
  %100 = load %struct.device*, %struct.device** %7, align 8
  %101 = load i8*, i8** %14, align 8
  %102 = load %struct.dpaa2_eth_swa*, %struct.dpaa2_eth_swa** %11, align 8
  %103 = getelementptr inbounds %struct.dpaa2_eth_swa, %struct.dpaa2_eth_swa* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i8*, i8** %104, align 8
  %106 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %107 = call i32 @dma_map_single(%struct.device* %100, i8* %101, i8* %105, i32 %106)
  store i32 %107, i32* %16, align 4
  %108 = load %struct.device*, %struct.device** %7, align 8
  %109 = load i32, i32* %16, align 4
  %110 = call i32 @dma_mapping_error(%struct.device* %108, i32 %109)
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %74
  %114 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %115 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = load i32, i32* @ENOMEM, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %3, align 4
  br label %198

120:                                              ; preds = %74
  %121 = load i32, i32* %16, align 4
  %122 = call i32 @dpaa2_fd_set_addr(%struct.dpaa2_fd* %13, i32 %121)
  %123 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %124 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %123, i32 0, i32 1
  %125 = load i8*, i8** %124, align 8
  %126 = load i8*, i8** %14, align 8
  %127 = ptrtoint i8* %125 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = trunc i64 %129 to i32
  %131 = call i32 @dpaa2_fd_set_offset(%struct.dpaa2_fd* %13, i32 %130)
  %132 = load %struct.xdp_frame*, %struct.xdp_frame** %5, align 8
  %133 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 @dpaa2_fd_set_len(%struct.dpaa2_fd* %13, i32 %134)
  %136 = load i32, i32* @dpaa2_fd_single, align 4
  %137 = call i32 @dpaa2_fd_set_format(%struct.dpaa2_fd* %13, i32 %136)
  %138 = load i32, i32* @FD_CTRL_PTA, align 4
  %139 = call i32 @dpaa2_fd_set_ctrl(%struct.dpaa2_fd* %13, i32 %138)
  %140 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %141 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %140, i32 0, i32 1
  %142 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %141, align 8
  %143 = call i64 (...) @smp_processor_id()
  %144 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %145 = call i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv* %144)
  %146 = urem i64 %143, %145
  %147 = getelementptr inbounds %struct.dpaa2_eth_fq.0, %struct.dpaa2_eth_fq.0* %142, i64 %146
  store %struct.dpaa2_eth_fq.0* %147, %struct.dpaa2_eth_fq.0** %12, align 8
  store i32 0, i32* %18, align 4
  br label %148

148:                                              ; preds = %166, %120
  %149 = load i32, i32* %18, align 4
  %150 = load i32, i32* @DPAA2_ETH_ENQUEUE_RETRIES, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %169

152:                                              ; preds = %148
  %153 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %154 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %153, i32 0, i32 0
  %155 = load i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)*, i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_fq*, %struct.dpaa2_fd*, i32)** %154, align 8
  %156 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %6, align 8
  %157 = load %struct.dpaa2_eth_fq.0*, %struct.dpaa2_eth_fq.0** %12, align 8
  %158 = bitcast %struct.dpaa2_eth_fq.0* %157 to %struct.dpaa2_eth_fq*
  %159 = call i32 %155(%struct.dpaa2_eth_priv* %156, %struct.dpaa2_eth_fq* %158, %struct.dpaa2_fd* %13, i32 0)
  store i32 %159, i32* %17, align 4
  %160 = load i32, i32* %17, align 4
  %161 = load i32, i32* @EBUSY, align 4
  %162 = sub nsw i32 0, %161
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %152
  br label %169

165:                                              ; preds = %152
  br label %166

166:                                              ; preds = %165
  %167 = load i32, i32* %18, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %18, align 4
  br label %148

169:                                              ; preds = %164, %148
  %170 = load i32, i32* %18, align 4
  %171 = load %struct.dpaa2_eth_drv_stats*, %struct.dpaa2_eth_drv_stats** %9, align 8
  %172 = getelementptr inbounds %struct.dpaa2_eth_drv_stats, %struct.dpaa2_eth_drv_stats* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %17, align 4
  %176 = icmp slt i32 %175, 0
  %177 = zext i1 %176 to i32
  %178 = call i64 @unlikely(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %169
  %181 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %182 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %182, align 4
  %185 = load i32, i32* %17, align 4
  store i32 %185, i32* %3, align 4
  br label %198

186:                                              ; preds = %169
  %187 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %188 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %188, align 4
  %191 = call i64 @dpaa2_fd_get_len(%struct.dpaa2_fd* %13)
  %192 = load %struct.rtnl_link_stats64*, %struct.rtnl_link_stats64** %8, align 8
  %193 = getelementptr inbounds %struct.rtnl_link_stats64, %struct.rtnl_link_stats64* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = sext i32 %194 to i64
  %196 = add nsw i64 %195, %191
  %197 = trunc i64 %196 to i32
  store i32 %197, i32* %193, align 4
  store i32 0, i32* %3, align 4
  br label %198

198:                                              ; preds = %186, %180, %113, %32
  %199 = load i32, i32* %3, align 4
  ret i32 %199
}

declare dso_local %struct.dpaa2_eth_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dpaa2_eth_needed_headroom(%struct.dpaa2_eth_priv*, i32*) #1

declare dso_local i8* @this_cpu_ptr(i32) #1

declare dso_local i32 @memset(%struct.dpaa2_fd*, i32, i32) #1

declare dso_local i8* @PTR_ALIGN(i8*, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i8*, i8*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dpaa2_fd_set_addr(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_offset(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_len(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_format(%struct.dpaa2_fd*, i32) #1

declare dso_local i32 @dpaa2_fd_set_ctrl(%struct.dpaa2_fd*, i32) #1

declare dso_local i64 @smp_processor_id(...) #1

declare dso_local i64 @dpaa2_eth_queue_count(%struct.dpaa2_eth_priv*) #1

declare dso_local i64 @dpaa2_fd_get_len(%struct.dpaa2_fd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
