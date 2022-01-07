; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_refill_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/tundra/extr_tsi108_eth.c_tsi108_refill_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tsi108_prv_data = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sk_buff** }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }

@TSI108_RXRING_LEN = common dso_local global i32 0, align 4
@TSI108_RXBUF_SIZE = common dso_local global i32 0, align 4
@TSI108_RX_SKB_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@TSI108_RX_OWN = common dso_local global i32 0, align 4
@TSI108_RX_INT = common dso_local global i32 0, align 4
@TSI108_EC_RXSTAT = common dso_local global i32 0, align 4
@TSI108_EC_RXSTAT_QUEUE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @tsi108_refill_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi108_refill_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tsi108_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call %struct.tsi108_prv_data* @netdev_priv(%struct.net_device* %9)
  store %struct.tsi108_prv_data* %10, %struct.tsi108_prv_data** %5, align 8
  store i32 0, i32* %6, align 4
  br label %11

11:                                               ; preds = %40, %2
  %12 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %13 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %21

17:                                               ; preds = %11
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %18, %19
  br label %21

21:                                               ; preds = %17, %11
  %22 = phi i1 [ false, %11 ], [ %20, %17 ]
  br i1 %22, label %23, label %90

23:                                               ; preds = %21
  %24 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %25 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %7, align 4
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = load i32, i32* @TSI108_RXBUF_SIZE, align 4
  %29 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %27, i32 %28)
  store %struct.sk_buff* %29, %struct.sk_buff** %8, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %32 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %31, i32 0, i32 4
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.sk_buff*, %struct.sk_buff** %33, i64 %35
  store %struct.sk_buff* %30, %struct.sk_buff** %36, align 8
  %37 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %38 = icmp ne %struct.sk_buff* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %90

40:                                               ; preds = %23
  %41 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %42 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %41, i32 0, i32 3
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @TSI108_RX_SKB_SIZE, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @dma_map_single(i32* %44, i32 %47, i32 %48, i32 %49)
  %51 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %52 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %51, i32 0, i32 2
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  store i32 %50, i32* %57, align 4
  %58 = load i32, i32* @TSI108_RX_SKB_SIZE, align 4
  %59 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %60 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  store i32 %58, i32* %65, align 4
  %66 = load i32, i32* @TSI108_RX_OWN, align 4
  %67 = load i32, i32* @TSI108_RX_INT, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %70 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  store i32 %68, i32* %75, align 4
  %76 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %77 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  %80 = load i32, i32* @TSI108_RXRING_LEN, align 4
  %81 = srem i32 %79, %80
  %82 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %83 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %82, i32 0, i32 1
  store i32 %81, i32* %83, align 4
  %84 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %85 = getelementptr inbounds %struct.tsi108_prv_data, %struct.tsi108_prv_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  br label %11

90:                                               ; preds = %39, %21
  %91 = load i32, i32* %6, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %103

93:                                               ; preds = %90
  %94 = load i32, i32* @TSI108_EC_RXSTAT, align 4
  %95 = call i32 @TSI_READ(i32 %94)
  %96 = load i32, i32* @TSI108_EC_RXSTAT_QUEUE0, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %103, label %99

99:                                               ; preds = %93
  %100 = load %struct.tsi108_prv_data*, %struct.tsi108_prv_data** %5, align 8
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = call i32 @tsi108_restart_rx(%struct.tsi108_prv_data* %100, %struct.net_device* %101)
  br label %103

103:                                              ; preds = %99, %93, %90
  %104 = load i32, i32* %6, align 4
  ret i32 %104
}

declare dso_local %struct.tsi108_prv_data* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @dma_map_single(i32*, i32, i32, i32) #1

declare dso_local i32 @TSI_READ(i32) #1

declare dso_local i32 @tsi108_restart_rx(%struct.tsi108_prv_data*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
