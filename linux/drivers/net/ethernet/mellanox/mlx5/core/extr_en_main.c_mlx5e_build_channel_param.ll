; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_channel_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_channel_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_params = type { i32 }
%struct.mlx5e_channel_param = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_params*, %struct.mlx5e_channel_param*)* @mlx5e_build_channel_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_channel_param(%struct.mlx5e_priv* %0, %struct.mlx5e_params* %1, %struct.mlx5e_channel_param* %2) #0 {
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_channel_param*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store %struct.mlx5e_params* %1, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_channel_param* %2, %struct.mlx5e_channel_param** %6, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %10 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %11 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %10, i32 0, i32 6
  %12 = call i32 @mlx5e_build_rq_param(%struct.mlx5e_priv* %8, %struct.mlx5e_params* %9, i32* null, i32* %11)
  %13 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %14 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %14, i32 0, i32 6
  %16 = call i32 @mlx5e_build_icosq_log_wq_sz(%struct.mlx5e_params* %13, i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %18 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %19 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %19, i32 0, i32 5
  %21 = call i32 @mlx5e_build_sq_param(%struct.mlx5e_priv* %17, %struct.mlx5e_params* %18, i32* %20)
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %23 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %24 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %24, i32 0, i32 4
  %26 = call i32 @mlx5e_build_xdpsq_param(%struct.mlx5e_priv* %22, %struct.mlx5e_params* %23, i32* %25)
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %29, i32 0, i32 3
  %31 = call i32 @mlx5e_build_icosq_param(%struct.mlx5e_priv* %27, i32 %28, i32* %30)
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %34 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %35 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %34, i32 0, i32 2
  %36 = call i32 @mlx5e_build_rx_cq_param(%struct.mlx5e_priv* %32, %struct.mlx5e_params* %33, i32* null, i32* %35)
  %37 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %38 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %39 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %40 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %39, i32 0, i32 1
  %41 = call i32 @mlx5e_build_tx_cq_param(%struct.mlx5e_priv* %37, %struct.mlx5e_params* %38, i32* %40)
  %42 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.mlx5e_channel_param*, %struct.mlx5e_channel_param** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_channel_param, %struct.mlx5e_channel_param* %44, i32 0, i32 0
  %46 = call i32 @mlx5e_build_ico_cq_param(%struct.mlx5e_priv* %42, i32 %43, i32* %45)
  ret void
}

declare dso_local i32 @mlx5e_build_rq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*, i32*) #1

declare dso_local i32 @mlx5e_build_icosq_log_wq_sz(%struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_sq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_xdpsq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_icosq_param(%struct.mlx5e_priv*, i32, i32*) #1

declare dso_local i32 @mlx5e_build_rx_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*, i32*) #1

declare dso_local i32 @mlx5e_build_tx_cq_param(%struct.mlx5e_priv*, %struct.mlx5e_params*, i32*) #1

declare dso_local i32 @mlx5e_build_ico_cq_param(%struct.mlx5e_priv*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
