; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_ll_temac_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_ll_temac_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.temac_local = type { i32, i32, i32, i32 (%struct.temac_local*, i32, i64)*, %struct.cdmac_bd*, %struct.sk_buff**, i64 }
%struct.cdmac_bd = type { i8*, i8*, i8*, i8*, i8* }
%struct.sk_buff = type { i32, i32, i32, i32, i32 }

@STS_CTRL_APP0_CMPLT = common dso_local global i32 0, align 4
@XTE_MAX_JUMBO_FRAME_SIZE = common dso_local global i64 0, align 8
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TEMAC_FEATURE_RX_CSUM = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i32 0, align 4
@STS_CTRL_APP0_IRQONEND = common dso_local global i64 0, align 8
@RX_BD_NUM = common dso_local global i64 0, align 8
@RX_TAILDESC_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ll_temac_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ll_temac_recv(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdmac_bd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call %struct.temac_local* @netdev_priv(%struct.net_device* %12)
  store %struct.temac_local* %13, %struct.temac_local** %3, align 8
  %14 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %15 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %14, i32 0, i32 2
  %16 = load i64, i64* %11, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %19 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %18, i32 0, i32 6
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %22 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = mul i64 40, %24
  %26 = add i64 %20, %25
  store i64 %26, i64* %8, align 8
  %27 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %28 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %27, i32 0, i32 4
  %29 = load %struct.cdmac_bd*, %struct.cdmac_bd** %28, align 8
  %30 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %31 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %29, i64 %33
  store %struct.cdmac_bd* %34, %struct.cdmac_bd** %7, align 8
  %35 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %36 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @be32_to_cpu(i8* %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %184, %1
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @STS_CTRL_APP0_CMPLT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %197

44:                                               ; preds = %39
  %45 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %46 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %45, i32 0, i32 5
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %46, align 8
  %48 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %49 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %47, i64 %51
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  store %struct.sk_buff* %53, %struct.sk_buff** %4, align 8
  %54 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %55 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %54, i32 0, i32 4
  %56 = load i8*, i8** %55, align 8
  %57 = call i32 @be32_to_cpu(i8* %56)
  %58 = and i32 %57, 16383
  store i32 %58, i32* %10, align 4
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %64 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %63, i32 0, i32 2
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @be32_to_cpu(i8* %65)
  %67 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %68 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %69 = call i32 @dma_unmap_single(i32 %62, i32 %66, i64 %67, i32 %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = load i32, i32* %10, align 4
  %72 = call i32 @skb_put(%struct.sk_buff* %70, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @eth_type_trans(%struct.sk_buff* %73, %struct.net_device* %74)
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 4
  store i32 %75, i32* %77, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call i32 @skb_checksum_none_assert(%struct.sk_buff* %78)
  %80 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %81 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @TEMAC_FEATURE_RX_CSUM, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %110

86:                                               ; preds = %44
  %87 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ETH_P_IP, align 4
  %91 = call i32 @htons(i32 %90)
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %110

93:                                               ; preds = %86
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = icmp sgt i32 %96, 64
  br i1 %97, label %98, label %110

98:                                               ; preds = %93
  %99 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %100 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %99, i32 0, i32 3
  %101 = load i8*, i8** %100, align 8
  %102 = call i32 @be32_to_cpu(i8* %101)
  %103 = and i32 %102, 65535
  %104 = call i32 @htons(i32 %103)
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 3
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @CHECKSUM_COMPLETE, align 4
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 4
  br label %110

110:                                              ; preds = %98, %93, %86, %44
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @skb_defer_rx_timestamp(%struct.sk_buff* %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %110
  %115 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %116 = call i32 @netif_rx(%struct.sk_buff* %115)
  br label %117

117:                                              ; preds = %114, %110
  %118 = load %struct.net_device*, %struct.net_device** %2, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  %123 = load i32, i32* %10, align 4
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, %123
  store i32 %128, i32* %126, align 4
  %129 = load %struct.net_device*, %struct.net_device** %2, align 8
  %130 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %131 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %129, i64 %130)
  store %struct.sk_buff* %131, %struct.sk_buff** %5, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = icmp ne %struct.sk_buff* %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %117
  %135 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %136 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %135, i32 0, i32 2
  %137 = load i64, i64* %11, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  br label %209

139:                                              ; preds = %117
  %140 = load i64, i64* @STS_CTRL_APP0_IRQONEND, align 8
  %141 = call i8* @cpu_to_be32(i64 %140)
  %142 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %143 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %142, i32 0, i32 0
  store i8* %141, i8** %143, align 8
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %149 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %152 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %153 = call i64 @dma_map_single(i32 %147, i32 %150, i64 %151, i32 %152)
  store i64 %153, i64* %9, align 8
  %154 = load i64, i64* %9, align 8
  %155 = call i8* @cpu_to_be32(i64 %154)
  %156 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %157 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %156, i32 0, i32 2
  store i8* %155, i8** %157, align 8
  %158 = load i64, i64* @XTE_MAX_JUMBO_FRAME_SIZE, align 8
  %159 = call i8* @cpu_to_be32(i64 %158)
  %160 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %161 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %160, i32 0, i32 1
  store i8* %159, i8** %161, align 8
  %162 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %163 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %164 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %163, i32 0, i32 5
  %165 = load %struct.sk_buff**, %struct.sk_buff*** %164, align 8
  %166 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %167 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %165, i64 %169
  store %struct.sk_buff* %162, %struct.sk_buff** %170, align 8
  %171 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %172 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 8
  %175 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %176 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = sext i32 %177 to i64
  %179 = load i64, i64* @RX_BD_NUM, align 8
  %180 = icmp uge i64 %178, %179
  br i1 %180, label %181, label %184

181:                                              ; preds = %139
  %182 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %183 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %182, i32 0, i32 0
  store i32 0, i32* %183, align 8
  br label %184

184:                                              ; preds = %181, %139
  %185 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %186 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %185, i32 0, i32 4
  %187 = load %struct.cdmac_bd*, %struct.cdmac_bd** %186, align 8
  %188 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %189 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %187, i64 %191
  store %struct.cdmac_bd* %192, %struct.cdmac_bd** %7, align 8
  %193 = load %struct.cdmac_bd*, %struct.cdmac_bd** %7, align 8
  %194 = getelementptr inbounds %struct.cdmac_bd, %struct.cdmac_bd* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  %196 = call i32 @be32_to_cpu(i8* %195)
  store i32 %196, i32* %6, align 4
  br label %39

197:                                              ; preds = %39
  %198 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %199 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %198, i32 0, i32 3
  %200 = load i32 (%struct.temac_local*, i32, i64)*, i32 (%struct.temac_local*, i32, i64)** %199, align 8
  %201 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %202 = load i32, i32* @RX_TAILDESC_PTR, align 4
  %203 = load i64, i64* %8, align 8
  %204 = call i32 %200(%struct.temac_local* %201, i32 %202, i64 %203)
  %205 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %206 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %205, i32 0, i32 2
  %207 = load i64, i64* %11, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  br label %209

209:                                              ; preds = %197, %134
  ret void
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @be32_to_cpu(i8*) #1

declare dso_local i32 @dma_unmap_single(i32, i32, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @skb_checksum_none_assert(%struct.sk_buff*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_defer_rx_timestamp(%struct.sk_buff*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local i64 @dma_map_single(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
