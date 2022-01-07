; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_build_rx_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_build_rx_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_cqe64 = type { i32, i32, i32, i32 }
%struct.mlx5e_rq = type { i32, i32, i32, %struct.net_device*, %struct.mlx5e_rq_stats* }
%struct.net_device = type { i32 }
%struct.mlx5e_rq_stats = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MLX5E_TC_FLOW_ID_MASK = common dso_local global i32 0, align 4
@MLX5E_CE_BIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_cqe64*, i32, %struct.mlx5e_rq*, %struct.sk_buff*)* @mlx5e_build_rx_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_rx_skb(%struct.mlx5_cqe64* %0, i32 %1, %struct.mlx5e_rq* %2, %struct.sk_buff* %3) #0 {
  %5 = alloca %struct.mlx5_cqe64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_rq*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mlx5e_rq_stats*, align 8
  %11 = alloca %struct.net_device*, align 8
  store %struct.mlx5_cqe64* %0, %struct.mlx5_cqe64** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.mlx5e_rq* %2, %struct.mlx5e_rq** %7, align 8
  store %struct.sk_buff* %3, %struct.sk_buff** %8, align 8
  %12 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  %16 = ashr i32 %15, 24
  store i32 %16, i32* %9, align 4
  %17 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %18 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %17, i32 0, i32 4
  %19 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %18, align 8
  store %struct.mlx5e_rq_stats* %19, %struct.mlx5e_rq_stats** %10, align 8
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %20, i32 0, i32 3
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %11, align 8
  %23 = load i32, i32* @ETH_HLEN, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 1
  br i1 %27, label %28, label %54

28:                                               ; preds = %4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %30 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @mlx5e_lro_update_hdr(%struct.sk_buff* %29, %struct.mlx5_cqe64* %30, i32 %31)
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @DIV_ROUND_UP(i32 %33, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff* %36)
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = sub nsw i32 %39, 1
  %41 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %42 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %46 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %51 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, %49
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %28, %4
  %55 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %56 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @mlx5e_rx_hw_stamp(i32 %57)
  %59 = call i64 @unlikely(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %54
  %62 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %63 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %66 = call i32 @get_cqe_ts(%struct.mlx5_cqe64* %65)
  %67 = call i32 @mlx5_timecounter_cyc2time(i32 %64, i32 %66)
  %68 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %69 = call %struct.TYPE_4__* @skb_hwtstamps(%struct.sk_buff* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 4
  br label %71

71:                                               ; preds = %61, %54
  %72 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %73 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @skb_record_rx_queue(%struct.sk_buff* %72, i32 %75)
  %77 = load %struct.net_device*, %struct.net_device** %11, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @NETIF_F_RXHASH, align 4
  %81 = and i32 %79, %80
  %82 = call i64 @likely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %71
  %85 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %86 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %87 = call i32 @mlx5e_skb_set_hash(%struct.mlx5_cqe64* %85, %struct.sk_buff* %86)
  br label %88

88:                                               ; preds = %84, %71
  %89 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %90 = call i64 @cqe_has_vlan(%struct.mlx5_cqe64* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %105

92:                                               ; preds = %88
  %93 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %94 = load i32, i32* @ETH_P_8021Q, align 4
  %95 = call i32 @htons(i32 %94)
  %96 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %97 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @be16_to_cpu(i32 %98)
  %100 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %93, i32 %95, i32 %99)
  %101 = load %struct.mlx5e_rq_stats*, %struct.mlx5e_rq_stats** %10, align 8
  %102 = getelementptr inbounds %struct.mlx5e_rq_stats, %struct.mlx5e_rq_stats* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  br label %105

105:                                              ; preds = %92, %88
  %106 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %107 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @be32_to_cpu(i32 %108)
  %110 = load i32, i32* @MLX5E_TC_FLOW_ID_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = load %struct.net_device*, %struct.net_device** %11, align 8
  %115 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %116 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  %120 = xor i1 %119, true
  %121 = xor i1 %120, true
  %122 = zext i1 %121 to i32
  %123 = call i32 @mlx5e_handle_csum(%struct.net_device* %114, %struct.mlx5_cqe64* %115, %struct.mlx5e_rq* %116, %struct.sk_buff* %117, i32 %122)
  %124 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %5, align 8
  %125 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* @MLX5E_CE_BIT_MASK, align 4
  %128 = and i32 %126, %127
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %135

131:                                              ; preds = %105
  %132 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %7, align 8
  %133 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %134 = call i32 @mlx5e_enable_ecn(%struct.mlx5e_rq* %132, %struct.sk_buff* %133)
  br label %135

135:                                              ; preds = %131, %105
  %136 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %137 = load %struct.net_device*, %struct.net_device** %11, align 8
  %138 = call i32 @eth_type_trans(%struct.sk_buff* %136, %struct.net_device* %137)
  %139 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %140 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %139, i32 0, i32 1
  store i32 %138, i32* %140, align 4
  ret void
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @mlx5e_lro_update_hdr(%struct.sk_buff*, %struct.mlx5_cqe64*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local %struct.TYPE_3__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mlx5e_rx_hw_stamp(i32) #1

declare dso_local i32 @mlx5_timecounter_cyc2time(i32, i32) #1

declare dso_local i32 @get_cqe_ts(%struct.mlx5_cqe64*) #1

declare dso_local %struct.TYPE_4__* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @mlx5e_skb_set_hash(%struct.mlx5_cqe64*, %struct.sk_buff*) #1

declare dso_local i64 @cqe_has_vlan(%struct.mlx5_cqe64*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @mlx5e_handle_csum(%struct.net_device*, %struct.mlx5_cqe64*, %struct.mlx5e_rq*, %struct.sk_buff*, i32) #1

declare dso_local i32 @mlx5e_enable_ecn(%struct.mlx5e_rq*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
