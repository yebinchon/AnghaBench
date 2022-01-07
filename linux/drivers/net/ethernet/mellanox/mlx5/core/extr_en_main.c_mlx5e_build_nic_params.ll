; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_nic_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_nic_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_xsk = type { i32 }
%struct.mlx5e_rss_params = type { i32 }
%struct.mlx5e_params = type { i32, i32, i64, i32, %struct.mlx5e_xsk*, i32, i8*, i32, i8*, i8*, i32, i32, i32, i8* }

@MLX5E_ETH_HARD_MTU = common dso_local global i32 0, align 4
@MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@MLX5E_PFLAG_XDP_TX_MPWQE = common dso_local global i32 0, align 4
@enhanced_multi_pkt_send_wqe = common dso_local global i32 0, align 4
@cqe_compression = common dso_local global i32 0, align 4
@vport_group_manager = common dso_local global i32 0, align 4
@MLX5E_PFLAG_RX_CQE_COMPRESS = common dso_local global i32 0, align 4
@MLX5E_PFLAG_RX_NO_CSUM_COMPLETE = common dso_local global i32 0, align 4
@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8
@MLX5E_DEFAULT_LRO_TIMEOUT = common dso_local global i32 0, align 4
@cq_period_start_from_cqe = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_CQE = common dso_local global i32 0, align 4
@MLX5_CQ_PERIOD_MODE_START_FROM_EQE = common dso_local global i32 0, align 4
@cq_moderation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_build_nic_params(%struct.mlx5_core_dev* %0, %struct.mlx5e_xsk* %1, %struct.mlx5e_rss_params* %2, %struct.mlx5e_params* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.mlx5_core_dev*, align 8
  %8 = alloca %struct.mlx5e_xsk*, align 8
  %9 = alloca %struct.mlx5e_rss_params*, align 8
  %10 = alloca %struct.mlx5e_params*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %7, align 8
  store %struct.mlx5e_xsk* %1, %struct.mlx5e_xsk** %8, align 8
  store %struct.mlx5e_rss_params* %2, %struct.mlx5e_rss_params** %9, align 8
  store %struct.mlx5e_params* %3, %struct.mlx5e_params** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %14 = load i8*, i8** %12, align 8
  %15 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %16 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %15, i32 0, i32 13
  store i8* %14, i8** %16, align 8
  %17 = load i32, i32* @MLX5E_ETH_HARD_MTU, align 4
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %19 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %18, i32 0, i32 12
  store i32 %17, i32* %19, align 8
  %20 = load i8*, i8** %11, align 8
  %21 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %22 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %21, i32 0, i32 6
  store i8* %20, i8** %22, align 8
  %23 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %24 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = call i64 (...) @is_kdump_kernel()
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %6
  %28 = load i32, i32* @MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE, align 4
  br label %31

29:                                               ; preds = %6
  %30 = load i32, i32* @MLX5E_PARAMS_DEFAULT_LOG_SQ_SIZE, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %34 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %33, i32 0, i32 11
  store i32 %32, i32* %34, align 4
  %35 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %36 = load i32, i32* @MLX5E_PFLAG_XDP_TX_MPWQE, align 4
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %38 = load i32, i32* @enhanced_multi_pkt_send_wqe, align 4
  %39 = call i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev* %37, i32 %38)
  %40 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %35, i32 %36, i32 %39)
  %41 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %42 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %41, i32 0, i32 1
  store i32 0, i32* %42, align 4
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %44 = load i32, i32* @cqe_compression, align 4
  %45 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %43, i32 %44)
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %31
  %48 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %49 = load i32, i32* @vport_group_manager, align 4
  %50 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %48, i32 %49)
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %54 = call i32 @slow_pci_heuristic(%struct.mlx5_core_dev* %53)
  %55 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %56 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %57

57:                                               ; preds = %52, %47, %31
  %58 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %59 = load i32, i32* @MLX5E_PFLAG_RX_CQE_COMPRESS, align 4
  %60 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %61 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %58, i32 %59, i32 %62)
  %64 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %65 = load i32, i32* @MLX5E_PFLAG_RX_NO_CSUM_COMPLETE, align 4
  %66 = call i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params* %64, i32 %65, i32 0)
  %67 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %68 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %69 = call i32 @mlx5e_build_rq_params(%struct.mlx5_core_dev* %67, %struct.mlx5e_params* %68)
  %70 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %71 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %57
  %76 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %77 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %78 = call i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %76, %struct.mlx5e_params* %77, i32* null)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %82 = call i32 @slow_pci_heuristic(%struct.mlx5_core_dev* %81)
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %87 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %86, i32 0, i32 3
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %75
  br label %89

89:                                               ; preds = %88, %57
  %90 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %91 = load i32, i32* @MLX5E_DEFAULT_LRO_TIMEOUT, align 4
  %92 = call i32 @mlx5e_choose_lro_timeout(%struct.mlx5_core_dev* %90, i32 %91)
  %93 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %94 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %96 = load i32, i32* @cq_period_start_from_cqe, align 4
  %97 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %95, i32 %96)
  %98 = icmp ne i8* %97, null
  br i1 %98, label %99, label %101

99:                                               ; preds = %89
  %100 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_CQE, align 4
  br label %103

101:                                              ; preds = %89
  %102 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  br label %103

103:                                              ; preds = %101, %99
  %104 = phi i32 [ %100, %99 ], [ %102, %101 ]
  store i32 %104, i32* %13, align 4
  %105 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %106 = load i32, i32* @cq_moderation, align 4
  %107 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %105, i32 %106)
  %108 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %109 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %108, i32 0, i32 9
  store i8* %107, i8** %109, align 8
  %110 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %111 = load i32, i32* @cq_moderation, align 4
  %112 = call i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev* %110, i32 %111)
  %113 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %114 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %113, i32 0, i32 8
  store i8* %112, i8** %114, align 8
  %115 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @mlx5e_set_rx_cq_mode_params(%struct.mlx5e_params* %115, i32 %116)
  %118 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %119 = load i32, i32* @MLX5_CQ_PERIOD_MODE_START_FROM_EQE, align 4
  %120 = call i32 @mlx5e_set_tx_cq_mode_params(%struct.mlx5e_params* %118, i32 %119)
  %121 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %122 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %123 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %122, i32 0, i32 7
  %124 = call i32 @mlx5_query_min_inline(%struct.mlx5_core_dev* %121, i32* %123)
  %125 = load %struct.mlx5e_rss_params*, %struct.mlx5e_rss_params** %9, align 8
  %126 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %127 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %126, i32 0, i32 6
  %128 = load i8*, i8** %127, align 8
  %129 = call i32 @mlx5e_build_rss_params(%struct.mlx5e_rss_params* %125, i8* %128)
  %130 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %131 = call i32 @mlx5e_tunnel_inner_ft_supported(%struct.mlx5_core_dev* %130)
  %132 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %133 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 8
  %134 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %8, align 8
  %135 = load %struct.mlx5e_params*, %struct.mlx5e_params** %10, align 8
  %136 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %135, i32 0, i32 4
  store %struct.mlx5e_xsk* %134, %struct.mlx5e_xsk** %136, align 8
  ret void
}

declare dso_local i64 @is_kdump_kernel(...) #1

declare dso_local i32 @MLX5E_SET_PFLAG(%struct.mlx5e_params*, i32, i32) #1

declare dso_local i32 @MLX5_CAP_ETH(%struct.mlx5_core_dev*, i32) #1

declare dso_local i8* @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @slow_pci_heuristic(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5e_build_rq_params(%struct.mlx5_core_dev*, %struct.mlx5e_params*) #1

declare dso_local i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_choose_lro_timeout(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5e_set_rx_cq_mode_params(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5e_set_tx_cq_mode_params(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5_query_min_inline(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5e_build_rss_params(%struct.mlx5e_rss_params*, i8*) #1

declare dso_local i32 @mlx5e_tunnel_inner_ft_supported(%struct.mlx5_core_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
