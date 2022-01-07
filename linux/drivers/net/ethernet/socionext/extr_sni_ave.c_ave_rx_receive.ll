; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rx_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_rx_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.sk_buff = type { i32, i32, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@AVE_DESCID_RX = common dso_local global i32 0, align 4
@AVE_STS_OWN = common dso_local global i32 0, align 4
@AVE_STS_OK = common dso_local global i32 0, align 4
@AVE_STS_PKTLEN_RX_MASK = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@AVE_STS_CSSV = common dso_local global i32 0, align 4
@AVE_STS_CSER = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ave_rx_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_rx_receive(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ave_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call %struct.ave_private* @netdev_priv(%struct.net_device* %16)
  store %struct.ave_private* %17, %struct.ave_private** %5, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %18 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %19 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %8, align 4
  %22 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %9, align 4
  %26 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %27 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %30, %31
  %33 = sub nsw i32 %32, 1
  %34 = load i32, i32* %9, align 4
  %35 = sub nsw i32 %33, %34
  %36 = load i32, i32* %14, align 4
  %37 = srem i32 %35, %36
  store i32 %37, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %38

38:                                               ; preds = %139, %2
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %142

42:                                               ; preds = %38
  %43 = load i32, i32* %12, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %12, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %42
  br label %142

47:                                               ; preds = %42
  %48 = load %struct.net_device*, %struct.net_device** %3, align 8
  %49 = load i32, i32* @AVE_DESCID_RX, align 4
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @ave_desc_read_cmdsts(%struct.net_device* %48, i32 %49, i32 %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* @AVE_STS_OWN, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %47
  br label %142

57:                                               ; preds = %47
  %58 = load i32, i32* %15, align 4
  %59 = load i32, i32* @AVE_STS_OK, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %72, label %62

62:                                               ; preds = %57
  %63 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %64 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  %68 = load i32, i32* %8, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %14, align 4
  %71 = srem i32 %69, %70
  store i32 %71, i32* %8, align 4
  br label %139

72:                                               ; preds = %57
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @AVE_STS_PKTLEN_RX_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %11, align 4
  %76 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %77 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 3
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = load i32, i32* %8, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  store %struct.sk_buff* %84, %struct.sk_buff** %10, align 8
  %85 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %86 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 3
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %87, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %3, align 8
  %94 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %95 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %102 = call i32 @ave_dma_unmap(%struct.net_device* %93, %struct.TYPE_6__* %100, i32 %101)
  %103 = load %struct.net_device*, %struct.net_device** %3, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 2
  store %struct.net_device* %103, %struct.net_device** %105, align 8
  %106 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 @skb_put(%struct.sk_buff* %106, i32 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %110 = load %struct.net_device*, %struct.net_device** %3, align 8
  %111 = call i32 @eth_type_trans(%struct.sk_buff* %109, %struct.net_device* %110)
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  store i32 %111, i32* %113, align 4
  %114 = load i32, i32* %15, align 4
  %115 = load i32, i32* @AVE_STS_CSSV, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %72
  %119 = load i32, i32* %15, align 4
  %120 = load i32, i32* @AVE_STS_CSER, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %127, label %123

123:                                              ; preds = %118
  %124 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 8
  br label %127

127:                                              ; preds = %123, %118, %72
  %128 = load i32, i32* %6, align 4
  %129 = add i32 %128, 1
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %11, align 4
  %131 = load i32, i32* %7, align 4
  %132 = add i32 %131, %130
  store i32 %132, i32* %7, align 4
  %133 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %134 = call i32 @netif_receive_skb(%struct.sk_buff* %133)
  %135 = load i32, i32* %8, align 4
  %136 = add nsw i32 %135, 1
  %137 = load i32, i32* %14, align 4
  %138 = srem i32 %136, %137
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %127, %62
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %38

142:                                              ; preds = %56, %46, %38
  %143 = load i32, i32* %8, align 4
  %144 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %145 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 %143, i32* %146, align 8
  %147 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %148 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = call i32 @u64_stats_update_begin(i32* %149)
  %151 = load i32, i32* %6, align 4
  %152 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %153 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add i32 %155, %151
  store i32 %156, i32* %154, align 8
  %157 = load i32, i32* %7, align 4
  %158 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %159 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add i32 %161, %157
  store i32 %162, i32* %160, align 4
  %163 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %164 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 2
  %166 = call i32 @u64_stats_update_end(i32* %165)
  br label %167

167:                                              ; preds = %177, %142
  %168 = load i32, i32* %8, align 4
  %169 = load i32, i32* %9, align 4
  %170 = icmp ne i32 %168, %169
  br i1 %170, label %171, label %182

171:                                              ; preds = %167
  %172 = load %struct.net_device*, %struct.net_device** %3, align 8
  %173 = load i32, i32* %9, align 4
  %174 = call i64 @ave_rxdesc_prepare(%struct.net_device* %172, i32 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %171
  br label %182

177:                                              ; preds = %171
  %178 = load i32, i32* %9, align 4
  %179 = add nsw i32 %178, 1
  %180 = load i32, i32* %14, align 4
  %181 = srem i32 %179, %180
  store i32 %181, i32* %9, align 4
  br label %167

182:                                              ; preds = %176, %167
  %183 = load i32, i32* %9, align 4
  %184 = load %struct.ave_private*, %struct.ave_private** %5, align 8
  %185 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %185, i32 0, i32 1
  store i32 %183, i32* %186, align 4
  %187 = load i32, i32* %13, align 4
  ret i32 %187
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ave_desc_read_cmdsts(%struct.net_device*, i32, i32) #1

declare dso_local i32 @ave_dma_unmap(%struct.net_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i64 @ave_rxdesc_prepare(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
