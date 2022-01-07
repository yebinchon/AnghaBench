; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ixgbe_ring = type { i32 }
%struct.ixgbe_rx_buffer = type { i32, i32 }
%struct.xdp_buff = type { i32, i32, i32, i32 }
%union.ixgbe_adv_rx_desc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@IXGBE_RXD_STAT_EOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.ixgbe_ring*, %struct.ixgbe_rx_buffer*, %struct.xdp_buff*, %union.ixgbe_adv_rx_desc*)* @ixgbe_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @ixgbe_build_skb(%struct.ixgbe_ring* %0, %struct.ixgbe_rx_buffer* %1, %struct.xdp_buff* %2, %union.ixgbe_adv_rx_desc* %3) #0 {
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
  %33 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %34 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call %struct.sk_buff* @build_skb(i32 %35, i32 %36)
  store %struct.sk_buff* %37, %struct.sk_buff** %12, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %39 = icmp ne %struct.sk_buff* %38, null
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %89

45:                                               ; preds = %4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %47 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %48 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %51 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = sub i32 %49, %52
  %54 = call i32 @skb_reserve(%struct.sk_buff* %46, i32 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %56 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %57 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.xdp_buff*, %struct.xdp_buff** %8, align 8
  %60 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = sub i32 %58, %61
  %63 = call i32 @__skb_put(%struct.sk_buff* %55, i32 %62)
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %45
  %67 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %68 = load i32, i32* %10, align 4
  %69 = call i32 @skb_metadata_set(%struct.sk_buff* %67, i32 %68)
  br label %70

70:                                               ; preds = %66, %45
  %71 = load %union.ixgbe_adv_rx_desc*, %union.ixgbe_adv_rx_desc** %9, align 8
  %72 = load i32, i32* @IXGBE_RXD_STAT_EOP, align 4
  %73 = call i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc* %71, i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %70
  %76 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %77 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %80 = call %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  br label %82

82:                                               ; preds = %75, %70
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.ixgbe_rx_buffer*, %struct.ixgbe_rx_buffer** %7, align 8
  %85 = getelementptr inbounds %struct.ixgbe_rx_buffer, %struct.ixgbe_rx_buffer* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = xor i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %88, %struct.sk_buff** %5, align 8
  br label %89

89:                                               ; preds = %82, %44
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %90
}

declare dso_local i32 @ixgbe_rx_pg_size(%struct.ixgbe_ring*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i32) #1

declare dso_local i32 @ixgbe_test_staterr(%union.ixgbe_adv_rx_desc*, i32) #1

declare dso_local %struct.TYPE_2__* @IXGBE_CB(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
