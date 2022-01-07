; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.tls_context = type { i32 }
%struct.mlx5e_priv = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@TLS_OFFLOAD_CTX_DIR_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.tls_context*, i32)* @mlx5e_tls_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_tls_del(%struct.net_device* %0, %struct.tls_context* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.tls_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_priv*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.tls_context* %1, %struct.tls_context** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %16 = call %struct.TYPE_3__* @mlx5e_get_tls_tx_context(%struct.tls_context* %15)
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  br label %24

19:                                               ; preds = %3
  %20 = load %struct.tls_context*, %struct.tls_context** %5, align 8
  %21 = call %struct.TYPE_4__* @mlx5e_get_tls_rx_context(%struct.tls_context* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i32 [ %18, %14 ], [ %23, %19 ]
  %26 = call i32 @ntohl(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_TX, align 4
  %33 = icmp eq i32 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @mlx5_accel_tls_del_flow(i32 %29, i32 %30, i32 %34)
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.TYPE_3__* @mlx5e_get_tls_tx_context(%struct.tls_context*) #1

declare dso_local %struct.TYPE_4__* @mlx5e_get_tls_rx_context(%struct.tls_context*) #1

declare dso_local i32 @mlx5_accel_tls_del_flow(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
