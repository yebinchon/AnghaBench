; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_skb_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_txrx.c_ionic_rx_skb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ionic_queue = type { i32, %struct.ionic_lif* }
%struct.ionic_lif = type { %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.net_device = type { i32 }
%struct.ionic_rx_stats = type { i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"%s: SKB alloc failed on %s!\0A\00", align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: DMA single map failed on %s!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ionic_queue*, i32, i32*)* @ionic_rx_skb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ionic_rx_skb_alloc(%struct.ionic_queue* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ionic_lif*, align 8
  %9 = alloca %struct.ionic_rx_stats*, align 8
  %10 = alloca %struct.net_device*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.device*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %13 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %14 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %13, i32 0, i32 1
  %15 = load %struct.ionic_lif*, %struct.ionic_lif** %14, align 8
  store %struct.ionic_lif* %15, %struct.ionic_lif** %8, align 8
  %16 = load %struct.ionic_lif*, %struct.ionic_lif** %8, align 8
  %17 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %16, i32 0, i32 1
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %10, align 8
  %19 = load %struct.ionic_lif*, %struct.ionic_lif** %8, align 8
  %20 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.device*, %struct.device** %22, align 8
  store %struct.device* %23, %struct.device** %12, align 8
  %24 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %25 = call %struct.ionic_rx_stats* @q_to_rx_stats(%struct.ionic_queue* %24)
  store %struct.ionic_rx_stats* %25, %struct.ionic_rx_stats** %9, align 8
  %26 = load %struct.net_device*, %struct.net_device** %10, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %11, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %43, label %31

31:                                               ; preds = %3
  %32 = load %struct.net_device*, %struct.net_device** %10, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %36 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %37)
  %39 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %9, align 8
  %40 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %73

43:                                               ; preds = %3
  %44 = load %struct.device*, %struct.device** %12, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %50 = call i32 @dma_map_single(%struct.device* %44, i32 %47, i32 %48, i32 %49)
  %51 = load i32*, i32** %7, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.device*, %struct.device** %12, align 8
  %53 = load i32*, i32** %7, align 8
  %54 = load i32, i32* %53, align 4
  %55 = call i64 @dma_mapping_error(%struct.device* %52, i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %71

57:                                               ; preds = %43
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = call i32 @dev_kfree_skb(%struct.sk_buff* %58)
  %60 = load %struct.net_device*, %struct.net_device** %10, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %64 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %62, i32 %65)
  %67 = load %struct.ionic_rx_stats*, %struct.ionic_rx_stats** %9, align 8
  %68 = getelementptr inbounds %struct.ionic_rx_stats, %struct.ionic_rx_stats* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %73

71:                                               ; preds = %43
  %72 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %72, %struct.sk_buff** %4, align 8
  br label %73

73:                                               ; preds = %71, %57, %31
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %74
}

declare dso_local %struct.ionic_rx_stats* @q_to_rx_stats(%struct.ionic_queue*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(%struct.net_device*, i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32) #1

declare dso_local i32 @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
