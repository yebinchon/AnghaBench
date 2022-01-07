; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_set_eseg_swp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_set_eseg_swp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.mlx5_wqe_eth_seg = type { i32, i32, i32, i32, i32 }
%struct.mlx5e_swp_spec = type { i64, i64, i64, i32, i64 }

@ETH_P_IPV6 = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_SWP_OUTER_L3_IPV6 = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_SWP_OUTER_L4_UDP = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_SWP_INNER_L3_IPV6 = common dso_local global i32 0, align 4
@MLX5_ETH_WQE_SWP_INNER_L4_UDP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.mlx5_wqe_eth_seg*, %struct.mlx5e_swp_spec*)* @mlx5e_set_eseg_swp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_set_eseg_swp(%struct.sk_buff* %0, %struct.mlx5_wqe_eth_seg* %1, %struct.mlx5e_swp_spec* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.mlx5_wqe_eth_seg*, align 8
  %6 = alloca %struct.mlx5e_swp_spec*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.mlx5_wqe_eth_seg* %1, %struct.mlx5_wqe_eth_seg** %5, align 8
  store %struct.mlx5e_swp_spec* %2, %struct.mlx5e_swp_spec** %6, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = call i32 @skb_network_offset(%struct.sk_buff* %7)
  %9 = sdiv i32 %8, 2
  %10 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i32, i32* @ETH_P_IPV6, align 4
  %16 = call i64 @htons(i32 %15)
  %17 = icmp eq i64 %14, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load i32, i32* @MLX5_ETH_WQE_SWP_OUTER_L3_IPV6, align 4
  %20 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %46

29:                                               ; preds = %24
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call i32 @skb_transport_offset(%struct.sk_buff* %30)
  %32 = sdiv i32 %31, 2
  %33 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %34 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %36 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %37, 128
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load i32, i32* @MLX5_ETH_WQE_SWP_OUTER_L4_UDP, align 4
  %41 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %42 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %41, i32 0, i32 4
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %29
  br label %46

46:                                               ; preds = %45, %24
  %47 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %48 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %46
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = call i32 @skb_inner_network_offset(%struct.sk_buff* %52)
  %54 = sdiv i32 %53, 2
  %55 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %56 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %58 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i32, i32* @ETH_P_IPV6, align 4
  %61 = call i64 @htons(i32 %60)
  %62 = icmp eq i64 %59, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %51
  %64 = load i32, i32* @MLX5_ETH_WQE_SWP_INNER_L3_IPV6, align 4
  %65 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %66 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %69

69:                                               ; preds = %63, %51
  br label %89

70:                                               ; preds = %46
  %71 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %72 = call i32 @skb_network_offset(%struct.sk_buff* %71)
  %73 = sdiv i32 %72, 2
  %74 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %75 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %77 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* @ETH_P_IPV6, align 4
  %80 = call i64 @htons(i32 %79)
  %81 = icmp eq i64 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %70
  %83 = load i32, i32* @MLX5_ETH_WQE_SWP_INNER_L3_IPV6, align 4
  %84 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %85 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 4
  br label %88

88:                                               ; preds = %82, %70
  br label %89

89:                                               ; preds = %88, %69
  %90 = load %struct.mlx5e_swp_spec*, %struct.mlx5e_swp_spec** %6, align 8
  %91 = getelementptr inbounds %struct.mlx5e_swp_spec, %struct.mlx5e_swp_spec* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 8
  switch i32 %92, label %105 [
    i32 128, label %93
    i32 129, label %99
  ]

93:                                               ; preds = %89
  %94 = load i32, i32* @MLX5_ETH_WQE_SWP_INNER_L4_UDP, align 4
  %95 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %96 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %89, %93
  %100 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %101 = call i32 @skb_inner_transport_offset(%struct.sk_buff* %100)
  %102 = sdiv i32 %101, 2
  %103 = load %struct.mlx5_wqe_eth_seg*, %struct.mlx5_wqe_eth_seg** %5, align 8
  %104 = getelementptr inbounds %struct.mlx5_wqe_eth_seg, %struct.mlx5_wqe_eth_seg* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %89, %99
  ret void
}

declare dso_local i32 @skb_network_offset(%struct.sk_buff*) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_network_offset(%struct.sk_buff*) #1

declare dso_local i32 @skb_inner_transport_offset(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
