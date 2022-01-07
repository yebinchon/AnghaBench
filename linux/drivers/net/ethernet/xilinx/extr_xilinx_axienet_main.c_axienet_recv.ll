; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_xilinx_axienet_main.c_axienet_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.axienet_local = type { i64, i32, i32, %struct.axidma_bd*, i32, i64 }
%struct.axidma_bd = type { i32, i32, i32, i32, %struct.sk_buff*, i32, i32 }
%struct.sk_buff = type { i64, i32, i32, i32, i32 }

@XAXIDMA_BD_STS_COMPLETE_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@XAE_FEATURE_FULL_RX_CSUM = common dso_local global i32 0, align 4
@XAE_FULL_CSUM_STATUS_MASK = common dso_local global i32 0, align 4
@XAE_IP_TCP_CSUM_VALIDATED = common dso_local global i32 0, align 4
@XAE_IP_UDP_CSUM_VALIDATED = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@XAE_FEATURE_PARTIAL_RX_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@XAXIDMA_RX_TDESC_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @axienet_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @axienet_recv(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.axienet_local*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.axidma_bd*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.axienet_local* @netdev_priv(%struct.net_device* %12)
  store %struct.axienet_local* %13, %struct.axienet_local** %8, align 8
  %14 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %15 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %14, i32 0, i32 3
  %16 = load %struct.axidma_bd*, %struct.axidma_bd** %15, align 8
  %17 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %18 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %16, i64 %19
  store %struct.axidma_bd* %20, %struct.axidma_bd** %11, align 8
  br label %21

21:                                               ; preds = %178, %1
  %22 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %23 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XAXIDMA_BD_STS_COMPLETE_MASK, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %186

28:                                               ; preds = %21
  %29 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %30 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %29, i32 0, i32 5
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %33 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = mul i64 32, %34
  %36 = add i64 %31, %35
  store i64 %36, i64* %7, align 8
  %37 = load %struct.net_device*, %struct.net_device** %2, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %42 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %41, i32 0, i32 6
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %45 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %48 = call i32 @dma_unmap_single(i32 %40, i32 %43, i32 %46, i32 %47)
  %49 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %50 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %49, i32 0, i32 4
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %9, align 8
  %52 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %53 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %52, i32 0, i32 4
  store %struct.sk_buff* null, %struct.sk_buff** %53, align 8
  %54 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %55 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 65535
  store i32 %57, i32* %3, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %59 = load i32, i32* %3, align 4
  %60 = call i32 @skb_put(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i64 @eth_type_trans(%struct.sk_buff* %61, %struct.net_device* %62)
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @CHECKSUM_NONE, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 8
  %69 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %70 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @XAE_FEATURE_FULL_RX_CSUM, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %28
  %76 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %77 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @XAE_FULL_CSUM_STATUS_MASK, align 4
  %80 = and i32 %78, %79
  %81 = ashr i32 %80, 3
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @XAE_IP_TCP_CSUM_VALIDATED, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %89, label %85

85:                                               ; preds = %75
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @XAE_IP_UDP_CSUM_VALIDATED, align 4
  %88 = icmp eq i32 %86, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %85, %75
  %90 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %89, %85
  br label %125

94:                                               ; preds = %28
  %95 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %96 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* @XAE_FEATURE_PARTIAL_RX_CSUM, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %94
  %102 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i32, i32* @ETH_P_IP, align 4
  %106 = call i64 @htons(i32 %105)
  %107 = icmp eq i64 %104, %106
  br i1 %107, label %108, label %124

108:                                              ; preds = %101
  %109 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = icmp sgt i32 %111, 64
  br i1 %112, label %113, label %124

113:                                              ; preds = %108
  %114 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %115 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = and i32 %116, 65535
  %118 = call i32 @be32_to_cpu(i32 %117)
  %119 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %120 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %119, i32 0, i32 4
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 3
  store i32 %121, i32* %123, align 8
  br label %124

124:                                              ; preds = %113, %108, %101, %94
  br label %125

125:                                              ; preds = %124, %93
  %126 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %127 = call i32 @netif_rx(%struct.sk_buff* %126)
  %128 = load i32, i32* %3, align 4
  %129 = load i32, i32* %5, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %6, align 4
  %133 = load %struct.net_device*, %struct.net_device** %2, align 8
  %134 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %135 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %133, i32 %136)
  store %struct.sk_buff* %137, %struct.sk_buff** %10, align 8
  %138 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %139 = icmp ne %struct.sk_buff* %138, null
  br i1 %139, label %141, label %140

140:                                              ; preds = %125
  br label %206

141:                                              ; preds = %125
  %142 = load %struct.net_device*, %struct.net_device** %2, align 8
  %143 = getelementptr inbounds %struct.net_device, %struct.net_device* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %150 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %153 = call i32 @dma_map_single(i32 %145, i32 %148, i32 %151, i32 %152)
  %154 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %155 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %154, i32 0, i32 6
  store i32 %153, i32* %155, align 4
  %156 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %157 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %156, i32 0, i32 4
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %160 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %159, i32 0, i32 5
  store i32 %158, i32* %160, align 8
  %161 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %162 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %161, i32 0, i32 0
  store i32 0, i32* %162, align 8
  %163 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %164 = load %struct.axidma_bd*, %struct.axidma_bd** %11, align 8
  %165 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %164, i32 0, i32 4
  store %struct.sk_buff* %163, %struct.sk_buff** %165, align 8
  %166 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %167 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = add i64 %168, 1
  store i64 %169, i64* %167, align 8
  %170 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %171 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %169, %173
  br i1 %174, label %175, label %178

175:                                              ; preds = %141
  %176 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %177 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %176, i32 0, i32 0
  store i64 0, i64* %177, align 8
  br label %178

178:                                              ; preds = %175, %141
  %179 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %180 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %179, i32 0, i32 3
  %181 = load %struct.axidma_bd*, %struct.axidma_bd** %180, align 8
  %182 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %183 = getelementptr inbounds %struct.axienet_local, %struct.axienet_local* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds %struct.axidma_bd, %struct.axidma_bd* %181, i64 %184
  store %struct.axidma_bd* %185, %struct.axidma_bd** %11, align 8
  br label %21

186:                                              ; preds = %21
  %187 = load i32, i32* %6, align 4
  %188 = load %struct.net_device*, %struct.net_device** %2, align 8
  %189 = getelementptr inbounds %struct.net_device, %struct.net_device* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, %187
  store i32 %192, i32* %190, align 4
  %193 = load i32, i32* %5, align 4
  %194 = load %struct.net_device*, %struct.net_device** %2, align 8
  %195 = getelementptr inbounds %struct.net_device, %struct.net_device* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, %193
  store i32 %198, i32* %196, align 4
  %199 = load i64, i64* %7, align 8
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %206

201:                                              ; preds = %186
  %202 = load %struct.axienet_local*, %struct.axienet_local** %8, align 8
  %203 = load i32, i32* @XAXIDMA_RX_TDESC_OFFSET, align 4
  %204 = load i64, i64* %7, align 8
  %205 = call i32 @axienet_dma_out32(%struct.axienet_local* %202, i32 %203, i64 %204)
  br label %206

206:                                              ; preds = %140, %201, %186
  ret void
}

declare dso_local %struct.axienet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i64 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i32 @axienet_dma_out32(%struct.axienet_local*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
