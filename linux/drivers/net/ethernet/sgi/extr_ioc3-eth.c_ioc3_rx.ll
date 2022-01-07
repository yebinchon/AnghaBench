; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_ioc3-eth.c_ioc3_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }
%struct.ioc3_private = type { i64*, i32, i32, %struct.TYPE_4__*, %struct.sk_buff**, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.ioc3_erxbuf = type { i64, i64 }

@RX_OFFSET = common dso_local global i64 0, align 8
@ERXBUF_V = common dso_local global i32 0, align 4
@ERXBUF_GOODPKT = common dso_local global i32 0, align 4
@ERXBUF_BYTECNT_SHIFT = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@ERXBUF_IPCKSUM_MASK = common dso_local global i32 0, align 4
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@ERXBUF_CRCERR = common dso_local global i32 0, align 4
@ERXBUF_FRAMERR = common dso_local global i32 0, align 4
@PCI64_ATTR_BAR = common dso_local global i32 0, align 4
@RX_RING_MASK = common dso_local global i32 0, align 4
@ERPIR_ARM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ioc3_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ioc3_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ioc3_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ioc3_erxbuf*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call %struct.ioc3_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ioc3_private* %15, %struct.ioc3_private** %3, align 8
  %16 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %17 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %10, align 8
  %19 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %20 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  %22 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %23 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %26 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %25, i32 0, i32 4
  %27 = load %struct.sk_buff**, %struct.sk_buff*** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %27, i64 %29
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  store %struct.sk_buff* %31, %struct.sk_buff** %4, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @RX_OFFSET, align 8
  %36 = sub nsw i64 %34, %35
  %37 = inttoptr i64 %36 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %37, %struct.ioc3_erxbuf** %9, align 8
  %38 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %39 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @be32_to_cpu(i64 %40)
  store i32 %41, i32* %12, align 4
  br label %42

42:                                               ; preds = %166, %1
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* @ERXBUF_V, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %209

47:                                               ; preds = %42
  %48 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %49 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @be32_to_cpu(i64 %50)
  store i32 %51, i32* %13, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i32, i32* @ERXBUF_GOODPKT, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %131

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @ERXBUF_BYTECNT_SHIFT, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 2047
  %61 = sub nsw i32 %60, 4
  store i32 %61, i32* %8, align 4
  %62 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call i32 @skb_put(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @eth_type_trans(%struct.sk_buff* %65, %struct.net_device* %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 8
  %70 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %71 = call i64 @ioc3_alloc_skb(%struct.ioc3_private* %70, %struct.sk_buff** %5, %struct.ioc3_erxbuf** %9, i64* %11)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %56
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %79, %struct.sk_buff** %5, align 8
  %80 = load i64*, i64** %10, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %11, align 8
  br label %166

85:                                               ; preds = %56
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = getelementptr inbounds %struct.net_device, %struct.net_device* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %90 = and i32 %88, %89
  %91 = call i64 @likely(i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %85
  %94 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* @ERXBUF_IPCKSUM_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @ioc3_tcpudp_checksum(%struct.sk_buff* %94, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %93, %85
  %101 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %102 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 8
  %104 = load i64*, i64** %10, align 8
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i64, i64* %104, i64 %106
  %108 = load i64, i64* %107, align 8
  %109 = load i32, i32* @RX_BUF_SIZE, align 4
  %110 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %111 = call i32 @dma_unmap_single(i32 %103, i64 %108, i32 %109, i32 %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %113 = call i32 @netif_rx(%struct.sk_buff* %112)
  %114 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %115 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %114, i32 0, i32 4
  %116 = load %struct.sk_buff**, %struct.sk_buff*** %115, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %116, i64 %118
  store %struct.sk_buff* null, %struct.sk_buff** %119, align 8
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 4
  %125 = load i32, i32* %8, align 4
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = getelementptr inbounds %struct.net_device, %struct.net_device* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = add nsw i32 %129, %125
  store i32 %130, i32* %128, align 4
  br label %143

131:                                              ; preds = %47
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %132, %struct.sk_buff** %5, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i64, i64* %133, i64 %135
  %137 = load i64, i64* %136, align 8
  store i64 %137, i64* %11, align 8
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 4
  br label %143

143:                                              ; preds = %131, %100
  %144 = load i32, i32* %13, align 4
  %145 = load i32, i32* @ERXBUF_CRCERR, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %154

148:                                              ; preds = %143
  %149 = load %struct.net_device*, %struct.net_device** %2, align 8
  %150 = getelementptr inbounds %struct.net_device, %struct.net_device* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %148, %143
  %155 = load i32, i32* %13, align 4
  %156 = load i32, i32* @ERXBUF_FRAMERR, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.net_device*, %struct.net_device** %2, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  br label %165

165:                                              ; preds = %159, %154
  br label %166

166:                                              ; preds = %165, %73
  %167 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %168 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %169 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %168, i32 0, i32 4
  %170 = load %struct.sk_buff**, %struct.sk_buff*** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %170, i64 %172
  store %struct.sk_buff* %167, %struct.sk_buff** %173, align 8
  %174 = load i64, i64* %11, align 8
  %175 = load i32, i32* @PCI64_ATTR_BAR, align 4
  %176 = call i32 @ioc3_map(i64 %174, i32 %175)
  %177 = call i64 @cpu_to_be64(i32 %176)
  %178 = load i64*, i64** %10, align 8
  %179 = load i32, i32* %7, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i64, i64* %178, i64 %180
  store i64 %177, i64* %181, align 8
  %182 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %183 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %182, i32 0, i32 0
  store i64 0, i64* %183, align 8
  %184 = load i32, i32* %7, align 4
  %185 = add nsw i32 %184, 1
  %186 = load i32, i32* @RX_RING_MASK, align 4
  %187 = and i32 %185, %186
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 1
  %190 = load i32, i32* @RX_RING_MASK, align 4
  %191 = and i32 %189, %190
  store i32 %191, i32* %6, align 4
  %192 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %193 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %192, i32 0, i32 4
  %194 = load %struct.sk_buff**, %struct.sk_buff*** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %194, i64 %196
  %198 = load %struct.sk_buff*, %struct.sk_buff** %197, align 8
  store %struct.sk_buff* %198, %struct.sk_buff** %4, align 8
  %199 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = load i64, i64* @RX_OFFSET, align 8
  %203 = sub nsw i64 %201, %202
  %204 = inttoptr i64 %203 to %struct.ioc3_erxbuf*
  store %struct.ioc3_erxbuf* %204, %struct.ioc3_erxbuf** %9, align 8
  %205 = load %struct.ioc3_erxbuf*, %struct.ioc3_erxbuf** %9, align 8
  %206 = getelementptr inbounds %struct.ioc3_erxbuf, %struct.ioc3_erxbuf* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = call i32 @be32_to_cpu(i64 %207)
  store i32 %208, i32* %12, align 4
  br label %42

209:                                              ; preds = %42
  %210 = load i32, i32* %7, align 4
  %211 = shl i32 %210, 3
  %212 = load i32, i32* @ERPIR_ARM, align 4
  %213 = or i32 %211, %212
  %214 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %215 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %214, i32 0, i32 3
  %216 = load %struct.TYPE_4__*, %struct.TYPE_4__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = call i32 @writel(i32 %213, i32* %217)
  %219 = load i32, i32* %7, align 4
  %220 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %221 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %220, i32 0, i32 2
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.ioc3_private*, %struct.ioc3_private** %3, align 8
  %224 = getelementptr inbounds %struct.ioc3_private, %struct.ioc3_private* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 8
  ret void
}

declare dso_local %struct.ioc3_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @be32_to_cpu(i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i64 @ioc3_alloc_skb(%struct.ioc3_private*, %struct.sk_buff**, %struct.ioc3_erxbuf**, i64*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @ioc3_tcpudp_checksum(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @dma_unmap_single(i32, i64, i32, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i32 @ioc3_map(i64, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
