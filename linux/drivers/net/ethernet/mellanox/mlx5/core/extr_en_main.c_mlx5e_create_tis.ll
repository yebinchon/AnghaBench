; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_tis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_create_tis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@create_tis_in = common dso_local global i32 0, align 4
@ctx = common dso_local global i32 0, align 4
@transport_domain = common dso_local global i32 0, align 4
@tls_en = common dso_local global i32 0, align 4
@pd = common dso_local global i32 0, align 4
@strict_lag_tx_port_affinity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_create_tis(%struct.mlx5_core_dev* %0, i8* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @create_tis_in, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = load i32, i32* @ctx, align 4
  %11 = call i8* @MLX5_ADDR_OF(i32 %8, i8* %9, i32 %10)
  store i8* %11, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* @transport_domain, align 4
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MLX5_SET(i8* %12, i8* %13, i32 %14, i32 %19)
  %21 = load i8*, i8** %7, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i32, i32* @tls_en, align 4
  %24 = call i64 @MLX5_GET(i8* %21, i8* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %3
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = load i32, i32* @pd, align 4
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %31 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @MLX5_SET(i8* %27, i8* %28, i32 %29, i32 %33)
  br label %35

35:                                               ; preds = %26, %3
  %36 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %37 = call i64 @mlx5_lag_is_lacp_owner(%struct.mlx5_core_dev* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* @strict_lag_tx_port_affinity, align 4
  %43 = call i32 @MLX5_SET(i8* %40, i8* %41, i32 %42, i32 1)
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load i32, i32* @create_tis_in, align 4
  %48 = call i32 @MLX5_ST_SZ_BYTES(i32 %47)
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @mlx5_core_create_tis(%struct.mlx5_core_dev* %45, i8* %46, i32 %48, i32* %49)
  ret i32 %50
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5_GET(i8*, i8*, i32) #1

declare dso_local i64 @mlx5_lag_is_lacp_owner(%struct.mlx5_core_dev*) #1

declare dso_local i32 @mlx5_core_create_tis(%struct.mlx5_core_dev*, i8*, i32, i32*) #1

declare dso_local i32 @MLX5_ST_SZ_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
