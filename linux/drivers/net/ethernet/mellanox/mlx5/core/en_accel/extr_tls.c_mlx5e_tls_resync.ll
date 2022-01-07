; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_resync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en_accel/extr_tls.c_mlx5e_tls_resync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sock = type { i32 }
%struct.tls_context = type { i32 }
%struct.mlx5e_priv = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_tls_offload_context_rx = type { i32 }

@TLS_OFFLOAD_CTX_DIR_RX = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"resyncing seq %d rcd %lld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.sock*, i32, i32*, i32)* @mlx5e_tls_resync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_tls_resync(%struct.net_device* %0, %struct.sock* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.tls_context*, align 8
  %13 = alloca %struct.mlx5e_priv*, align 8
  %14 = alloca %struct.mlx5e_tls_offload_context_rx*, align 8
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.sock* %1, %struct.sock** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.sock*, %struct.sock** %8, align 8
  %17 = call %struct.tls_context* @tls_get_ctx(%struct.sock* %16)
  store %struct.tls_context* %17, %struct.tls_context** %12, align 8
  %18 = load %struct.net_device*, %struct.net_device** %7, align 8
  %19 = call %struct.mlx5e_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.mlx5e_priv* %19, %struct.mlx5e_priv** %13, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @TLS_OFFLOAD_CTX_DIR_RX, align 4
  %24 = icmp ne i32 %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %5
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %6, align 4
  br label %54

31:                                               ; preds = %5
  %32 = load %struct.tls_context*, %struct.tls_context** %12, align 8
  %33 = call %struct.mlx5e_tls_offload_context_rx* @mlx5e_get_tls_rx_context(%struct.tls_context* %32)
  store %struct.mlx5e_tls_offload_context_rx* %33, %struct.mlx5e_tls_offload_context_rx** %14, align 8
  %34 = load %struct.net_device*, %struct.net_device** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %15, align 4
  %37 = call i32 @be64_to_cpu(i32 %36)
  %38 = call i32 @netdev_info(%struct.net_device* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %37)
  %39 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  %40 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.mlx5e_tls_offload_context_rx*, %struct.mlx5e_tls_offload_context_rx** %14, align 8
  %43 = getelementptr inbounds %struct.mlx5e_tls_offload_context_rx, %struct.mlx5e_tls_offload_context_rx* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @mlx5_accel_tls_resync_rx(i32 %41, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %13, align 8
  %49 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  %53 = call i32 @atomic64_inc(i32* %52)
  store i32 0, i32* %6, align 4
  br label %54

54:                                               ; preds = %31, %28
  %55 = load i32, i32* %6, align 4
  ret i32 %55
}

declare dso_local %struct.tls_context* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local %struct.mlx5e_tls_offload_context_rx* @mlx5e_get_tls_rx_context(%struct.tls_context*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @mlx5_accel_tls_resync_rx(i32, i32, i32, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
