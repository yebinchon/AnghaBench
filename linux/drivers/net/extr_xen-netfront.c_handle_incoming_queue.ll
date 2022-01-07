; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_handle_incoming_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_handle_incoming_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.netfront_stats = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i32 }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*, %struct.sk_buff_head*)* @handle_incoming_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_incoming_queue(%struct.netfront_queue* %0, %struct.sk_buff_head* %1) #0 {
  %3 = alloca %struct.netfront_queue*, align 8
  %4 = alloca %struct.sk_buff_head*, align 8
  %5 = alloca %struct.netfront_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.netfront_queue* %0, %struct.netfront_queue** %3, align 8
  store %struct.sk_buff_head* %1, %struct.sk_buff_head** %4, align 8
  %9 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %10 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %9, i32 0, i32 1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.netfront_stats* @this_cpu_ptr(i32 %13)
  store %struct.netfront_stats* %14, %struct.netfront_stats** %5, align 8
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %69, %55, %2
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %4, align 8
  %17 = call %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %93

19:                                               ; preds = %15
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = call %struct.TYPE_9__* @NETFRONT_SKB_CB(%struct.sk_buff* %20)
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @skb_headlen(%struct.sk_buff* %25)
  %27 = icmp sgt i32 %24, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %19
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %32 = call i32 @skb_headlen(%struct.sk_buff* %31)
  %33 = sub nsw i32 %30, %32
  %34 = call i32 @__pskb_pull_tail(%struct.sk_buff* %29, i32 %33)
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %38 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %37, i32 0, i32 1
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = call i32 @eth_type_trans(%struct.sk_buff* %36, %struct.TYPE_8__* %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @skb_reset_network_header(%struct.sk_buff* %45)
  %47 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %48 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %50, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %53 = call i64 @checksum_setup(%struct.TYPE_8__* %51, %struct.sk_buff* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %69

55:                                               ; preds = %35
  %56 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %57 = call i32 @kfree_skb(%struct.sk_buff* %56)
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %6, align 4
  %60 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %61 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %60, i32 0, i32 1
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  br label %15

69:                                               ; preds = %35
  %70 = load %struct.netfront_stats*, %struct.netfront_stats** %5, align 8
  %71 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %70, i32 0, i32 0
  %72 = call i32 @u64_stats_update_begin(i32* %71)
  %73 = load %struct.netfront_stats*, %struct.netfront_stats** %5, align 8
  %74 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.netfront_stats*, %struct.netfront_stats** %5, align 8
  %81 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %79
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %81, align 4
  %86 = load %struct.netfront_stats*, %struct.netfront_stats** %5, align 8
  %87 = getelementptr inbounds %struct.netfront_stats, %struct.netfront_stats* %86, i32 0, i32 0
  %88 = call i32 @u64_stats_update_end(i32* %87)
  %89 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %90 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %89, i32 0, i32 0
  %91 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %92 = call i32 @napi_gro_receive(i32* %90, %struct.sk_buff* %91)
  br label %15

93:                                               ; preds = %15
  %94 = load i32, i32* %6, align 4
  ret i32 %94
}

declare dso_local %struct.netfront_stats* @this_cpu_ptr(i32) #1

declare dso_local %struct.sk_buff* @__skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local %struct.TYPE_9__* @NETFRONT_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @__pskb_pull_tail(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.TYPE_8__*) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i64 @checksum_setup(%struct.TYPE_8__*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
