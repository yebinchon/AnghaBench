; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_construct_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_construct_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.i40e_ring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.i40e_rx_buffer = type { i32, i32, i32 }
%struct.xdp_buff = type { i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@I40E_RX_HDR_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.xdp_buff*)* @i40e_construct_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @i40e_construct_skb(%struct.i40e_ring* %0, %struct.i40e_rx_buffer* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.i40e_rx_buffer*, align 8
  %7 = alloca %struct.xdp_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %5, align 8
  store %struct.i40e_rx_buffer* %1, %struct.i40e_rx_buffer** %6, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %7, align 8
  %12 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %13 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %16 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %14, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %20 = call i32 @i40e_rx_pg_size(%struct.i40e_ring* %19)
  %21 = sdiv i32 %20, 2
  store i32 %21, i32* %9, align 4
  %22 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %23 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @prefetch(i32 %24)
  %26 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %27 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @L1_CACHE_BYTES, align 4
  %30 = add i32 %28, %29
  %31 = call i32 @prefetch(i32 %30)
  %32 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %33 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* @I40E_RX_HDR_SIZE, align 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = load i32, i32* @__GFP_NOWARN, align 4
  %39 = or i32 %37, %38
  %40 = call %struct.sk_buff* @__napi_alloc_skb(i32* %35, i32 %36, i32 %39)
  store %struct.sk_buff* %40, %struct.sk_buff** %11, align 8
  %41 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %42 = icmp ne %struct.sk_buff* %41, null
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %102

48:                                               ; preds = %3
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @I40E_RX_HDR_SIZE, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %62

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @I40E_RX_HDR_SIZE, align 4
  %61 = call i32 @eth_get_headlen(i32 %56, i32 %59, i32 %60)
  store i32 %61, i32* %10, align 4
  br label %62

62:                                               ; preds = %53, %48
  %63 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @__skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %67 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @ALIGN(i32 %69, i32 8)
  %71 = call i32 @memcpy(i32 %65, i32 %68, i32 %70)
  %72 = load i32, i32* %10, align 4
  %73 = load i32, i32* %8, align 4
  %74 = sub i32 %73, %72
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %95

77:                                               ; preds = %62
  %78 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %79 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %6, align 8
  %80 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %6, align 8
  %83 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add i32 %84, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @skb_add_rx_frag(%struct.sk_buff* %78, i32 0, i32 %81, i32 %86, i32 %87, i32 %88)
  %90 = load i32, i32* %9, align 4
  %91 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %6, align 8
  %92 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %93, %90
  store i32 %94, i32* %92, align 4
  br label %100

95:                                               ; preds = %62
  %96 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %6, align 8
  %97 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95, %77
  %101 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %4, align 8
  br label %102

102:                                              ; preds = %100, %47
  %103 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %103
}

declare dso_local i32 @i40e_rx_pg_size(%struct.i40e_ring*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @__napi_alloc_skb(i32*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @eth_get_headlen(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
