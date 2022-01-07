; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_build_xsk_cparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_build_xsk_cparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i32 }
%struct.mlx5e_channel_param = type { i32, i32, i32, i32, i32, i32 }

@MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, %struct.mlx5e_channel_param*)* @mlx5e_build_xsk_cparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_xsk_cparam(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_xsk_param* %2, %struct.mlx5e_channel_param* %3) #0 {
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.mlx5e_params*, align 8
  %7 = alloca %struct.mlx5e_xsk_param*, align 8
  %8 = alloca %struct.mlx5e_channel_param*, align 8
  %9 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %6, align 8
  store %struct.mlx5e_xsk_param* %2, %struct.mlx5e_xsk_param** %7, align 8
  store %struct.mlx5e_channel_param* %3, %struct.mlx5e_channel_param** %8, align 8
  %10 = load i32, i32* @MLX5E_PARAMS_MINIMUM_LOG_SQ_SIZE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %12 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %13 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %14 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %14, i32 0, i32 5
  %16 = call i32 @mlx5e_build_rq_param(%struct.mlx5e_priv* %11, %struct.mlx5e_params* %12, %struct.mlx5e_xsk_param* %13, i32* %15)
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %19 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %20 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %19, i32 0, i32 4
  %21 = call i32 @mlx5e_build_xdpsq_param(%struct.mlx5e_priv* %17, %struct.mlx5e_params* %18, i32* %20)
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %23 = load i32, i32* %9, align 4
  %24 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %24, i32 0, i32 3
  %26 = call i32 @mlx5e_build_xskicosq_param(%struct.mlx5e_priv* %22, i32 %23, i32* %25)
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %28 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %29 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %7, align 8
  %30 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %31 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %30, i32 0, i32 2
  %32 = call i32 @mlx5e_build_rx_cq_param(%struct.mlx5e_priv* %27, %struct.mlx5e_params* %28, %struct.mlx5e_xsk_param* %29, i32* %31)
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %34 = load %struct.mlx5e_params*, %struct.mlx5e_params** %6, align 8
  %35 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %36 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %35, i32 0, i32 1
  %37 = call i32 @mlx5e_build_tx_cq_param(%struct.mlx5e_priv* %33, %struct.mlx5e_params* %34, i32* %36)
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %8, align 8
  %41 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %40, i32 0, i32 0
  %42 = call i32 @mlx5e_build_ico_cq_param(%struct.mlx5e_priv* %38, i32 %39, i32* %41)
  ret void
}

declare dso_local i32 @mlx5e_build_rq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, i32*) #1

declare dso_local i32 @mlx5e_build_xdpsq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_xskicosq_param(%struct.mlx5e_priv*, i32, i32*) #1

declare dso_local i32 @mlx5e_build_rx_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*, i32*) #1

declare dso_local i32 @mlx5e_build_tx_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_ico_cq_param(%struct.mlx5e_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
