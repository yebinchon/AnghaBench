; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_construct_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_construct_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbe_ring = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, i32, i32, i32 }
%struct.xdp_buff = type { i32, i32, i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.TYPE_4__ = type { i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@IXGBE_RX_HDR_SIZE = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*)* @ixgbe_construct_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbe_construct_skb(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1, %struct.xdp_buff* %2, %union.ixgbe_adv_rx_desc* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ixgbe_ring*, align 8
  %7 = alloca %struct.ixgbe_rx_buffer*, align 8
  %8 = alloca %struct.xdp_buff*, align 8
  %9 = alloca %union.ixgbe_adv_rx_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sk_buff*, align 8
  store %struct.ixgbe_ring* %0, %struct.ixgbe_ring** %6, align 8
  store %struct.ixgbe_rx_buffer* %1, %struct.ixgbe_rx_buffer** %7, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %8, align 8
  store %union.ixgbe_adv_rx_desc* %3, %union.ixgbe_adv_rx_desc** %9, align 8
  %13 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %14 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %17 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub i32 %15, %18
  store i32 %19, i32* %10, align 4
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %21 = call i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring* %20)
  %22 = sdiv i32 %21, 2
  store i32 %22, i32* %11, align 4
  %23 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %24 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @prefetch(i32 %25)
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @L1_CACHE_BYTES, align 4
  %31 = add i32 %29, %30
  %32 = call i32 @prefetch(i32 %31)
  %33 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %6, align 8
  %34 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %38 = call %struct.sk_buff* @napi_alloc_skb(i32* %36, i32 %37)
  store %struct.sk_buff* %38, %struct.sk_buff** %12, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %40 = icmp ne %struct.sk_buff* %39, null
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i64 @unlikely(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %99

46:                                               ; preds = %4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @IXGBE_RX_HDR_SIZE, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %46
  %51 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %52 = load i32, i32* @IXGBE_RXD_STAT_EOP, align 4
  %53 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %51, i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %50
  %56 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %57 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %60 = call %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff* %59)
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store i32 %58, i32* %61, align 4
  br label %62

62:                                               ; preds = %55, %50
  %63 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %64 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %65 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %68 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %71 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @page_address(i32 %72)
  %74 = sub i32 %69, %73
  %75 = load i32, i32* %10, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @skb_add_rx_frag(%struct.sk_buff* %63, i32 0, i32 %66, i32 %74, i32 %75, i32 %76)
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %80 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = xor i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %97

83:                                               ; preds = %46
  %84 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %85 = load i32, i32* %10, align 4
  %86 = call i32 @__skb_put(%struct.sk_buff* %84, i32 %85)
  %87 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %88 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %10, align 4
  %91 = call i32 @ALIGN(i32 %90, i32 8)
  %92 = call i32 @memcpy(i32 %86, i32 %89, i32 %91)
  %93 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 4
  br label %97

97:                                               ; preds = %83, %62
  %98 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %98, %struct.sk_buff** %5, align 8
  br label %99

99:                                               ; preds = %97, %45
  %100 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %100
}

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local %struct.TYPE_4__* @IXGBE_CB(%struct.sk_buff*) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @page_address(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
