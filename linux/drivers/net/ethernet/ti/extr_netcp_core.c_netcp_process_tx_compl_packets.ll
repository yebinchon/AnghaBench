; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_process_tx_compl_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_process_tx_compl_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netcp_intf = type { i64, i32, i32, i32, i32, %struct.netcp_stats }
%struct.netcp_stats = type { i32, i32, i32, i32 }
%struct.knav_dma_desc = type { i32 }
%struct.netcp_tx_cb = type { i32, i32 (i32, %struct.sk_buff*)* }
%struct.sk_buff = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"failed to unmap Tx desc\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"No skb in Tx desc\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netcp_intf*, i32)* @netcp_process_tx_compl_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcp_process_tx_compl_packets(%struct.netcp_intf* %0, i32 %1) #0 {
  %3 = alloca %struct.netcp_intf*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netcp_stats*, align 8
  %6 = alloca %struct.knav_dma_desc*, align 8
  %7 = alloca %struct.netcp_tx_cb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.netcp_intf* %0, %struct.netcp_intf** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %14 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %13, i32 0, i32 5
  store %struct.netcp_stats* %14, %struct.netcp_stats** %5, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %116, %59, %40, %2
  %16 = load i32, i32* %4, align 4
  %17 = add i32 %16, -1
  store i32 %17, i32* %4, align 4
  %18 = icmp ne i32 %16, 0
  br i1 %18, label %19, label %140

19:                                               ; preds = %15
  %20 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %21 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @knav_queue_pop(i32 %22, i32* %9)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %140

27:                                               ; preds = %19
  %28 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %29 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call %struct.knav_dma_desc* @knav_pool_desc_unmap(i32 %30, i32 %31, i32 %32)
  store %struct.knav_dma_desc* %33, %struct.knav_dma_desc** %6, align 8
  %34 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %35 = icmp ne %struct.knav_dma_desc* %34, null
  %36 = xor i1 %35, true
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %42 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err(i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %46 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  br label %15

49:                                               ; preds = %27
  %50 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %51 = call i64 @GET_SW_DATA0(%struct.knav_dma_desc* %50)
  %52 = inttoptr i64 %51 to %struct.sk_buff*
  store %struct.sk_buff* %52, %struct.sk_buff** %8, align 8
  %53 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %54 = load %struct.knav_dma_desc*, %struct.knav_dma_desc** %6, align 8
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @netcp_free_tx_desc_chain(%struct.netcp_intf* %53, %struct.knav_dma_desc* %54, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %68, label %59

59:                                               ; preds = %49
  %60 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %61 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %64 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %65 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %65, align 4
  br label %15

68:                                               ; preds = %49
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = inttoptr i64 %71 to %struct.netcp_tx_cb*
  store %struct.netcp_tx_cb* %72, %struct.netcp_tx_cb** %7, align 8
  %73 = load %struct.netcp_tx_cb*, %struct.netcp_tx_cb** %7, align 8
  %74 = getelementptr inbounds %struct.netcp_tx_cb, %struct.netcp_tx_cb* %73, i32 0, i32 1
  %75 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %74, align 8
  %76 = icmp ne i32 (i32, %struct.sk_buff*)* %75, null
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.netcp_tx_cb*, %struct.netcp_tx_cb** %7, align 8
  %79 = getelementptr inbounds %struct.netcp_tx_cb, %struct.netcp_tx_cb* %78, i32 0, i32 1
  %80 = load i32 (i32, %struct.sk_buff*)*, i32 (i32, %struct.sk_buff*)** %79, align 8
  %81 = load %struct.netcp_tx_cb*, %struct.netcp_tx_cb** %7, align 8
  %82 = getelementptr inbounds %struct.netcp_tx_cb, %struct.netcp_tx_cb* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %85 = call i32 %80(i32 %83, %struct.sk_buff* %84)
  br label %86

86:                                               ; preds = %77, %68
  %87 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %88 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %91 = call i64 @netif_subqueue_stopped(i32 %89, %struct.sk_buff* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %116

93:                                               ; preds = %86
  %94 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %95 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = call i64 @netif_running(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %93
  %100 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %101 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = call i64 @knav_pool_count(i32 %102)
  %104 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %105 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp sgt i64 %103, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %99
  %109 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %110 = call i32 @skb_get_queue_mapping(%struct.sk_buff* %109)
  store i32 %110, i32* %12, align 4
  %111 = load %struct.netcp_intf*, %struct.netcp_intf** %3, align 8
  %112 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @netif_wake_subqueue(i32 %113, i32 %114)
  br label %116

116:                                              ; preds = %108, %99, %93, %86
  %117 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %118 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %117, i32 0, i32 0
  %119 = call i32 @u64_stats_update_begin(i32* %118)
  %120 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %121 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %128 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = sext i32 %129 to i64
  %131 = add nsw i64 %130, %126
  %132 = trunc i64 %131 to i32
  store i32 %132, i32* %128, align 4
  %133 = load %struct.netcp_stats*, %struct.netcp_stats** %5, align 8
  %134 = getelementptr inbounds %struct.netcp_stats, %struct.netcp_stats* %133, i32 0, i32 0
  %135 = call i32 @u64_stats_update_end(i32* %134)
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = call i32 @dev_kfree_skb(%struct.sk_buff* %136)
  %138 = load i32, i32* %11, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %11, align 4
  br label %15

140:                                              ; preds = %26, %15
  %141 = load i32, i32* %11, align 4
  ret i32 %141
}

declare dso_local i32 @knav_queue_pop(i32, i32*) #1

declare dso_local %struct.knav_dma_desc* @knav_pool_desc_unmap(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @GET_SW_DATA0(%struct.knav_dma_desc*) #1

declare dso_local i32 @netcp_free_tx_desc_chain(%struct.netcp_intf*, %struct.knav_dma_desc*, i32) #1

declare dso_local i64 @netif_subqueue_stopped(i32, %struct.sk_buff*) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i64 @knav_pool_count(i32) #1

declare dso_local i32 @skb_get_queue_mapping(%struct.sk_buff*) #1

declare dso_local i32 @netif_wake_subqueue(i32, i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
