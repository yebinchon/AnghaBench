; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_build_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_build_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.i40e_ring = type { i32 }
%struct.i40e_rx_buffer = type { i32 }
%struct.xdp_buff = type { i32, i32, i32, i32 }

@L1_CACHE_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.i40e_ring*, %struct.i40e_rx_buffer*, %struct.xdp_buff*)* @i40e_build_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @i40e_build_skb(%struct.i40e_ring* %0, %struct.i40e_rx_buffer* %1, %struct.xdp_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.i40e_ring*, align 8
  %6 = alloca %struct.i40e_rx_buffer*, align 8
  %7 = alloca %struct.xdp_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %5, align 8
  store %struct.i40e_rx_buffer* %1, %struct.i40e_rx_buffer** %6, align 8
  store %struct.xdp_buff* %2, %struct.xdp_buff** %7, align 8
  %11 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %12 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %15 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = sub i32 %13, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.i40e_ring*, %struct.i40e_ring** %5, align 8
  %19 = call i32 @i40e_rx_pg_size(%struct.i40e_ring* %18)
  %20 = sdiv i32 %19, 2
  store i32 %20, i32* %9, align 4
  %21 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %22 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @prefetch(i32 %23)
  %25 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %26 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @L1_CACHE_BYTES, align 4
  %29 = add i32 %27, %28
  %30 = call i32 @prefetch(i32 %29)
  %31 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %32 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.sk_buff* @build_skb(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %10, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %3
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %75

43:                                               ; preds = %3
  %44 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %45 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %46 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %49 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = sub i32 %47, %50
  %52 = call i32 @skb_reserve(%struct.sk_buff* %44, i32 %51)
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %55 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.xdp_buff*, %struct.xdp_buff** %7, align 8
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sub i32 %56, %59
  %61 = call i32 @__skb_put(%struct.sk_buff* %53, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %43
  %65 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @skb_metadata_set(%struct.sk_buff* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %43
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.i40e_rx_buffer*, %struct.i40e_rx_buffer** %6, align 8
  %71 = getelementptr inbounds %struct.i40e_rx_buffer, %struct.i40e_rx_buffer* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = xor i32 %72, %69
  store i32 %73, i32* %71, align 4
  %74 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %74, %struct.sk_buff** %4, align 8
  br label %75

75:                                               ; preds = %68, %42
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %76
}

declare dso_local i32 @i40e_rx_pg_size(%struct.i40e_ring*) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local %struct.sk_buff* @build_skb(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_metadata_set(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
