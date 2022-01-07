; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_validate_xsk_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_setup.c_mlx5e_validate_xsk_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i32 }
%struct.mlx5e_xsk_param = type { i64 }
%struct.mlx5_core_dev = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@MLX5E_MIN_XSK_CHUNK_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_validate_xsk_param(%struct.mlx5e_params* %0, %struct.mlx5e_xsk_param* %1, %struct.mlx5_core_dev* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_params*, align 8
  %6 = alloca %struct.mlx5e_xsk_param*, align 8
  %7 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %5, align 8
  store %struct.mlx5e_xsk_param* %1, %struct.mlx5e_xsk_param** %6, align 8
  store %struct.mlx5_core_dev* %2, %struct.mlx5_core_dev** %7, align 8
  %8 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %9 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @PAGE_SIZE, align 8
  %12 = icmp sgt i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %3
  %14 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MLX5E_MIN_XSK_CHUNK_SIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %13, %3
  store i32 0, i32* %4, align 4
  br label %42

20:                                               ; preds = %13
  %21 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %22 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %23 = call i64 @mlx5e_rx_get_min_frag_sz(%struct.mlx5e_params* %21, %struct.mlx5e_xsk_param* %22)
  %24 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %25 = getelementptr inbounds %struct.mlx5e_xsk_param, %struct.mlx5e_xsk_param* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %20
  %30 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %38 [
    i32 128, label %33
  ]

33:                                               ; preds = %29
  %34 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %7, align 8
  %35 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %36 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %37 = call i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev* %34, %struct.mlx5e_params* %35, %struct.mlx5e_xsk_param* %36)
  store i32 %37, i32* %4, align 4
  br label %42

38:                                               ; preds = %29
  %39 = load %struct.mlx5e_params*, %struct.mlx5e_params** %5, align 8
  %40 = load %struct.mlx5e_xsk_param*, %struct.mlx5e_xsk_param** %6, align 8
  %41 = call i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params* %39, %struct.mlx5e_xsk_param* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %38, %33, %28, %19
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @mlx5e_rx_get_min_frag_sz(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_rx_mpwqe_is_linear_skb(%struct.mlx5_core_dev*, %struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

declare dso_local i32 @mlx5e_rx_is_linear_skb(%struct.mlx5e_params*, %struct.mlx5e_xsk_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
