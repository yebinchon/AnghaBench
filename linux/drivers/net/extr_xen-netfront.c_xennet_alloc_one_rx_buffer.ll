; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_alloc_one_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_alloc_one_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netfront_queue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.page = type { i32 }

@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.netfront_queue*)* @xennet_alloc_one_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @xennet_alloc_one_rx_buffer(%struct.netfront_queue* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca %struct.netfront_queue*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.page*, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %3, align 8
  %6 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %7 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %12 = load i64, i64* @NET_IP_ALIGN, align 8
  %13 = add nsw i64 %11, %12
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = load i32, i32* @__GFP_NOWARN, align 4
  %16 = or i32 %14, %15
  %17 = call %struct.sk_buff* @__netdev_alloc_skb(i32 %10, i64 %13, i32 %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %4, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %51

25:                                               ; preds = %1
  %26 = load i32, i32* @GFP_ATOMIC, align 4
  %27 = load i32, i32* @__GFP_NOWARN, align 4
  %28 = or i32 %26, %27
  %29 = call %struct.page* @alloc_page(i32 %28)
  store %struct.page* %29, %struct.page** %5, align 8
  %30 = load %struct.page*, %struct.page** %5, align 8
  %31 = icmp ne %struct.page* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = call i32 @kfree_skb(%struct.sk_buff* %33)
  store %struct.sk_buff* null, %struct.sk_buff** %2, align 8
  br label %51

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load %struct.page*, %struct.page** %5, align 8
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @skb_add_rx_frag(%struct.sk_buff* %36, i32 0, %struct.page* %37, i32 0, i32 0, i32 %38)
  %40 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %41 = load i64, i64* @NET_IP_ALIGN, align 8
  %42 = call i32 @skb_reserve(%struct.sk_buff* %40, i64 %41)
  %43 = load %struct.netfront_queue*, %struct.netfront_queue** %3, align 8
  %44 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %49 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %48, i32 0, i32 0
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %2, align 8
  br label %51

51:                                               ; preds = %35, %32, %24
  %52 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  ret %struct.sk_buff* %52
}

declare dso_local %struct.sk_buff* @__netdev_alloc_skb(i32, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
