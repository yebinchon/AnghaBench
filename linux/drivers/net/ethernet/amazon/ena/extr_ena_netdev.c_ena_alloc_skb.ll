; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_alloc_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_alloc_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ena_ring = type { i32, i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate skb. frags: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ena_ring*, i32)* @ena_alloc_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ena_alloc_skb(%struct.ena_ring* %0, i32 %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ena_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  store %struct.ena_ring* %0, %struct.ena_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %11 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.sk_buff* @napi_get_frags(i32 %12)
  store %struct.sk_buff* %13, %struct.sk_buff** %6, align 8
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %16 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.sk_buff* @netdev_alloc_skb_ip_align(i32 %17, i32 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %6, align 8
  br label %22

22:                                               ; preds = %14, %9
  %23 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %24 = icmp ne %struct.sk_buff* %23, null
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %50

29:                                               ; preds = %22
  %30 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %31 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %30, i32 0, i32 2
  %32 = call i32 @u64_stats_update_begin(i32* %31)
  %33 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %34 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %39 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %38, i32 0, i32 2
  %40 = call i32 @u64_stats_update_end(i32* %39)
  %41 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %42 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @rx_err, align 4
  %45 = load %struct.ena_ring*, %struct.ena_ring** %4, align 8
  %46 = getelementptr inbounds %struct.ena_ring, %struct.ena_ring* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @netif_dbg(i32 %43, i32 %44, i32 %47, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %48)
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %52

50:                                               ; preds = %22
  %51 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %51, %struct.sk_buff** %3, align 8
  br label %52

52:                                               ; preds = %50, %29
  %53 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %53
}

declare dso_local %struct.sk_buff* @napi_get_frags(i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb_ip_align(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @netif_dbg(i32, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
