; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_construct_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_construct_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbevf_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ixgbevf_rx_buffer = type { i32, i32, i32 }
%struct.xdp_buff = type { i32, i32, i32 }
%union.ixgbe_adv_rx_desc = type { i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@IXGBEVF_RX_HDR_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbevf_ring*, %struct.ixgbevf_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*)* @ixgbevf_construct_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbevf_construct_skb(%struct.ixgbevf_ring* %0, %struct.ixgbevf_rx_buffer* %1, %struct.xdp_buff* %2, %union.ixgbe_adv_rx_desc* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ixgbevf_ring*, align 8
  %7 = alloca %struct.ixgbevf_rx_buffer*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbevf_ring* %0, %struct.ixgbevf_ring** %6, align 8
  store %struct.ixgbevf_rx_buffer* %1, %struct.ixgbevf_rx_buffer** %7, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store %union.ixgbe_adv_rx_desc* %3, %union.ixgbe_adv_rx_desc** %9, align 8
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %15 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %18 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %6, align 8
  %22 = call i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring* %21)
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %11, align 4
  %24 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %25 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @prefetch(i32 %26)
  %28 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %29 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @L1_CACHE_BYTES, align 4
  %32 = add i32 %30, %31
  %33 = call i32 @prefetch(i32 %32)
  %34 = load %struct.ixgbevf_ring*, %struct.ixgbevf_ring** %6, align 8
  %35 = getelementptr inbounds %struct.ixgbevf_ring, %struct.ixgbevf_ring* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* @IXGBEVF_RX_HDR_SIZE, align 4
  %39 = call %struct.sk_buff* @napi_alloc_skb(i32* %37, i32 %38)
  store %struct.sk_buff* %39, %struct.sk_buff** %13, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  %44 = call i64 @unlikely(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %106

47:                                               ; preds = %4
  %48 = load i32, i32* %10, align 4
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* @IXGBEVF_RX_HDR_SIZE, align 4
  %51 = icmp ugt i32 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %54 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %57 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @IXGBEVF_RX_HDR_SIZE, align 4
  %60 = call i32 @eth_get_headlen(i32 %55, i32 %58, i32 %59)
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %52, %47
  %62 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @__skb_put(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %66 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %12, align 4
  %69 = call i32 @ALIGN(i32 %68, i32 8)
  %70 = call i32 @memcpy(i32 %64, i32 %67, i32 %69)
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %10, align 4
  %73 = sub i32 %72, %71
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %99

76:                                               ; preds = %61
  %77 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %78 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %7, align 8
  %79 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %82 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %83, %84
  %86 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %7, align 8
  %87 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @page_address(i32 %88)
  %90 = sub i32 %85, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 @skb_add_rx_frag(%struct.sk_buff* %77, i32 0, i32 %80, i32 %90, i32 %91, i32 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %7, align 8
  %96 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = xor i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %104

99:                                               ; preds = %61
  %100 = load %struct.ixgbevf_rx_buffer*, %struct.ixgbevf_rx_buffer** %7, align 8
  %101 = getelementptr inbounds %struct.ixgbevf_rx_buffer, %struct.ixgbevf_rx_buffer* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %99, %76
  %105 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %105, %struct.sk_buff** %5, align 8
  br label %106

106:                                              ; preds = %104, %46
  %107 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %107
}

declare dso_local i32 @ixgbevf_rx_pg_size(%struct.ixgbevf_ring*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_get_headlen(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
