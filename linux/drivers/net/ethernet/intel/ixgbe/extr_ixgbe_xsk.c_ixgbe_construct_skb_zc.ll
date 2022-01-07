; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_construct_skb_zc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_xsk.c_ixgbe_construct_skb_zc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbe_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbe_rx_buffer = type { i32 }
%struct.xdp_buff = type { i32, i32, i32, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.xdp_buff*)* @ixgbe_construct_skb_zc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbe_construct_skb_zc(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_rx_buffer*, align 8
  %7 = alloca %struct.xdp_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %5, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %6, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %7, align 8
  %11 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %12 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %15 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %19 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %22 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub i32 %20, %23
  store i32 %24, i32* %9, align 4
  %25 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %26 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %30 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %33 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = sub i32 %31, %34
  %36 = load i32, i32* @GFP_ATOMIC, align 4
  %37 = load i32, i32* @__GFP_NOWARN, align 4
  %38 = or i32 %36, %37
  %39 = call %struct.sk_buff* @__napi_alloc_skb(i32* %28, i32 %35, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %10, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %76

47:                                               ; preds = %3
  %48 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %49 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %50 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %53 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = sub i32 %51, %54
  %56 = call i32 @skb_reserve(%struct.sk_buff* %48, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @__skb_put(%struct.sk_buff* %57, i32 %58)
  %60 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %61 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @memcpy(i32 %59, i32 %62, i32 %63)
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %47
  %68 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @skb_metadata_set(%struct.sk_buff* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %47
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %73 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %6, align 8
  %74 = call i32 @ixgbe_reuse_rx_buffer_zc(%struct.ixgbe_ring* %72, %struct.ixgbe_rx_buffer* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  br label %76

76:                                               ; preds = %71, %46
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %77
}

declare dso_local %struct.sk_buff* @__napi_alloc_skb(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbe_reuse_rx_buffer_zc(%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
