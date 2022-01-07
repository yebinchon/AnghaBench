; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_params = type { i64 }
%struct.mlx5e_rq_param = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.xdp_umem = type { i32 }
%struct.mlx5e_rq = type { i32 }

@MLX5_RQC_STATE_RST = common dso_local global i32 0, align 4
@MLX5_RQC_STATE_RDY = common dso_local global i32 0, align 4
@cqe_checksum_full = common dso_local global i32 0, align 4
@MLX5E_RQ_STATE_CSUM_FULL = common dso_local global i32 0, align 4
@MLX5E_RQ_STATE_AM = common dso_local global i32 0, align 4
@MLX5E_PFLAG_RX_NO_CSUM_COMPLETE = common dso_local global i32 0, align 4
@MLX5E_RQ_STATE_NO_CSUM_COMPLETE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_rq(%struct.mlx5e_channel* %0, %struct.mlx5e_params* %1, %struct.mlx5e_rq_param* %2, %struct.mlx5e_xsk_param* %3, %struct.xdp_umem* %4, %struct.mlx5e_rq* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_channel*, align 8
  %9 = alloca %struct.mlx5e_params*, align 8
  %10 = alloca %struct.mlx5e_rq_param*, align 8
  %11 = alloca %struct.mlx5e_xsk_param*, align 8
  %12 = alloca %struct.xdp_umem*, align 8
  %13 = alloca %struct.mlx5e_rq*, align 8
  %14 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %8, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %9, align 8
  store %struct.mlx5e_rq_param* %2, %struct.mlx5e_rq_param** %10, align 8
  store %struct.mlx5e_xsk_param* %3, %struct.mlx5e_xsk_param** %11, align 8
  store %struct.xdp_umem* %4, %struct.xdp_umem** %12, align 8
  store %struct.mlx5e_rq* %5, %struct.mlx5e_rq** %13, align 8
  %15 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %16 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %17 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %11, align 8
  %18 = load %struct.xdp_umem*, %struct.xdp_umem** %12, align 8
  %19 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %10, align 8
  %20 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %13, align 8
  %21 = call i32 @mlx5e_alloc_rq(%struct.mlx5e_channel* %15, %struct.mlx5e_params* %16, %struct.mlx5e_xsk_param* %17, %struct.xdp_umem* %18, %struct.mlx5e_rq_param* %19, %struct.mlx5e_rq* %20)
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  store i32 %25, i32* %7, align 4
  br label %89

26:                                               ; preds = %6
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %13, align 8
  %28 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %10, align 8
  %29 = call i32 @mlx5e_create_rq(%struct.mlx5e_rq* %27, %struct.mlx5e_rq_param* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %85

33:                                               ; preds = %26
  %34 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %13, align 8
  %35 = load i32, i32* @MLX5_RQC_STATE_RST, align 4
  %36 = load i32, i32* @MLX5_RQC_STATE_RDY, align 4
  %37 = call i32 @mlx5e_modify_rq_state(%struct.mlx5e_rq* %34, i32 %35, i32 %36)
  store i32 %37, i32* %14, align 4
  %38 = load i32, i32* %14, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %82

41:                                               ; preds = %33
  %42 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %43 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @cqe_checksum_full, align 4
  %46 = call i64 @MLX5_CAP_ETH(i32 %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load i32, i32* @MLX5E_RQ_STATE_CSUM_FULL, align 4
  %50 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %51 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = call i32 @__set_bit(i32 %49, i32* %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %56 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @MLX5E_RQ_STATE_AM, align 4
  %61 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %62 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @__set_bit(i32 %60, i32* %63)
  br label %65

65:                                               ; preds = %59, %54
  %66 = load %struct.mlx5e_params*, %struct.mlx5e_params** %9, align 8
  %67 = load i32, i32* @MLX5E_PFLAG_RX_NO_CSUM_COMPLETE, align 4
  %68 = call i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params* %66, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %65
  %71 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %72 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %70, %65
  %76 = load i32, i32* @MLX5E_RQ_STATE_NO_CSUM_COMPLETE, align 4
  %77 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %8, align 8
  %78 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = call i32 @__set_bit(i32 %76, i32* %79)
  br label %81

81:                                               ; preds = %75, %70
  store i32 0, i32* %7, align 4
  br label %89

82:                                               ; preds = %40
  %83 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %13, align 8
  %84 = call i32 @mlx5e_destroy_rq(%struct.mlx5e_rq* %83)
  br label %85

85:                                               ; preds = %82, %32
  %86 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %13, align 8
  %87 = call i32 @mlx5e_free_rq(%struct.mlx5e_rq* %86)
  %88 = load i32, i32* %14, align 4
  store i32 %88, i32* %7, align 4
  br label %89

89:                                               ; preds = %85, %81, %24
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @mlx5e_alloc_rq(%struct.mlx5e_channel*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.xdp_umem*, %struct.mlx5e_rq_param*, %struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_create_rq(%struct.mlx5e_rq*, %struct.mlx5e_rq_param*) #1

declare dso_local i32 @mlx5e_modify_rq_state(%struct.mlx5e_rq*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_ETH(i32, i32) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i64 @MLX5E_GET_PFLAG(%struct.mlx5e_params*, i32) #1

declare dso_local i32 @mlx5e_destroy_rq(%struct.mlx5e_rq*) #1

declare dso_local i32 @mlx5e_free_rq(%struct.mlx5e_rq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
