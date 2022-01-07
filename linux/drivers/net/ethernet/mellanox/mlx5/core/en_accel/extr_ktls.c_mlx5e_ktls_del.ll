; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls.c_mlx5e_ktls_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_ktls.c_mlx5e_ktls_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tls_context = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.mlx5e_ktls_offload_context_tx = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.tls_context*, i32)* @mlx5e_ktls_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_ktls_del(%struct.net_device* %0, %struct.tls_context* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca %struct.mlx5e_ktls_offload_context_tx*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %7, align 8
  %11 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %12 = call %struct.mlx5e_ktls_offload_context_tx* @mlx5e_get_ktls_tx_priv_ctx(%struct.tls_context* %11)
  store %struct.mlx5e_ktls_offload_context_tx* %12, %struct.mlx5e_ktls_offload_context_tx** %8, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mlx5_ktls_destroy_key(i32 %15, i32 %18)
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %8, align 8
  %24 = getelementptr inbounds %struct.mlx5e_ktls_offload_context_tx, %struct.mlx5e_ktls_offload_context_tx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @mlx5e_destroy_tis(i32 %22, i32 %25)
  %27 = load %struct.mlx5e_ktls_offload_context_tx*, %struct.mlx5e_ktls_offload_context_tx** %8, align 8
  %28 = call i32 @kvfree(%struct.mlx5e_ktls_offload_context_tx* %27)
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.mlx5e_ktls_offload_context_tx* @mlx5e_get_ktls_tx_priv_ctx(%struct.tls_context*) #1

declare dso_local i32 @mlx5_ktls_destroy_key(i32, i32) #1

declare dso_local i32 @mlx5e_destroy_tis(i32, i32) #1

declare dso_local i32 @kvfree(%struct.mlx5e_ktls_offload_context_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
