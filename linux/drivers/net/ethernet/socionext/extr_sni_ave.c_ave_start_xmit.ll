; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32 }
%struct.net_device = type { i32 }
%struct.ave_private = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { i32 }

@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@AVE_DESCID_TX = common dso_local global i32 0, align 4
@AVE_STS_OWN = common dso_local global i32 0, align 4
@AVE_STS_1ST = common dso_local global i32 0, align 4
@AVE_STS_LAST = common dso_local global i32 0, align 4
@AVE_STS_PKTLEN_TX_MASK = common dso_local global i32 0, align 4
@AVE_FORCE_TXINTCNT = common dso_local global i32 0, align 4
@AVE_STS_INTR = common dso_local global i32 0, align 4
@CHECKSUM_NONE = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i64 0, align 8
@AVE_STS_NOCSUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @ave_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ave_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.ave_private* @netdev_priv(%struct.net_device* %14)
  store %struct.ave_private* %15, %struct.ave_private** %6, align 8
  %16 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %17 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %21 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %25 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 %30, 1
  %32 = load i32, i32* %7, align 4
  %33 = sub nsw i32 %31, %32
  %34 = load i32, i32* %9, align 4
  %35 = srem i32 %33, %34
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 1
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %2
  %42 = load %struct.net_device*, %struct.net_device** %5, align 8
  %43 = call i32 @netif_stop_queue(%struct.net_device* %42)
  %44 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %44, i32* %3, align 4
  br label %153

45:                                               ; preds = %2
  %46 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %47 = load i32, i32* @ETH_ZLEN, align 4
  %48 = call i64 @skb_put_padto(%struct.sk_buff* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %52 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %56, i32* %3, align 4
  br label %153

57:                                               ; preds = %45
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %60 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i64 %64
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @DMA_TO_DEVICE, align 4
  %73 = call i32 @ave_dma_map(%struct.net_device* %58, %struct.TYPE_6__* %65, i32 %68, i32 %71, i32 %72, i32* %13)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %57
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %77)
  %79 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %80 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %84, i32* %3, align 4
  br label %153

85:                                               ; preds = %57
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %88 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 3
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = load i32, i32* %7, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  store %struct.sk_buff* %86, %struct.sk_buff** %94, align 8
  %95 = load %struct.net_device*, %struct.net_device** %5, align 8
  %96 = load i32, i32* @AVE_DESCID_TX, align 4
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %13, align 4
  %99 = call i32 @ave_desc_write_addr(%struct.net_device* %95, i32 %96, i32 %97, i32 %98)
  %100 = load i32, i32* @AVE_STS_OWN, align 4
  %101 = load i32, i32* @AVE_STS_1ST, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @AVE_STS_LAST, align 4
  %104 = or i32 %102, %103
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* @AVE_STS_PKTLEN_TX_MASK, align 4
  %109 = and i32 %107, %108
  %110 = or i32 %104, %109
  store i32 %110, i32* %10, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @AVE_FORCE_TXINTCNT, align 4
  %113 = srem i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %85
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = call i64 @netif_queue_stopped(%struct.net_device* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115, %85
  %120 = load i32, i32* @AVE_STS_INTR, align 4
  %121 = load i32, i32* %10, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %10, align 4
  br label %123

123:                                              ; preds = %119, %115
  %124 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @CHECKSUM_NONE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %135, label %129

129:                                              ; preds = %123
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 1
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @CHECKSUM_UNNECESSARY, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %129, %123
  %136 = load i32, i32* @AVE_STS_NOCSUM, align 4
  %137 = load i32, i32* %10, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %10, align 4
  br label %139

139:                                              ; preds = %135, %129
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = load i32, i32* @AVE_DESCID_TX, align 4
  %142 = load i32, i32* %7, align 4
  %143 = load i32, i32* %10, align 4
  %144 = call i32 @ave_desc_write_cmdsts(%struct.net_device* %140, i32 %141, i32 %142, i32 %143)
  %145 = load i32, i32* %7, align 4
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* %9, align 4
  %148 = srem i32 %146, %147
  %149 = load %struct.ave_private*, %struct.ave_private** %6, align 8
  %150 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %149, i32 0, i32 0
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  store i32 %148, i32* %151, align 8
  %152 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %139, %76, %50, %41
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i64 @skb_put_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @ave_dma_map(%struct.net_device*, %struct.TYPE_6__*, i32, i32, i32, i32*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @ave_desc_write_addr(%struct.net_device*, i32, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(%struct.net_device*) #1

declare dso_local i32 @ave_desc_write_cmdsts(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
