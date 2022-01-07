; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_indr_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.mlx5e_rep_indr_block_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mlx5e_priv = type { i32 }

@EGRESS = common dso_local global i32 0, align 4
@ESW_OFFLOAD = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.flow_cls_offload*, %struct.mlx5e_rep_indr_block_priv*)* @mlx5e_rep_indr_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_indr_offload(%struct.net_device* %0, %struct.flow_cls_offload* %1, %struct.mlx5e_rep_indr_block_priv* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.flow_cls_offload*, align 8
  %6 = alloca %struct.mlx5e_rep_indr_block_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %5, align 8
  store %struct.mlx5e_rep_indr_block_priv* %2, %struct.mlx5e_rep_indr_block_priv** %6, align 8
  %10 = load i32, i32* @EGRESS, align 4
  %11 = call i64 @MLX5_TC_FLAG(i32 %10)
  %12 = load i32, i32* @ESW_OFFLOAD, align 4
  %13 = call i64 @MLX5_TC_FLAG(i32 %12)
  %14 = or i64 %11, %13
  store i64 %14, i64* %7, align 8
  %15 = load %struct.mlx5e_rep_indr_block_priv*, %struct.mlx5e_rep_indr_block_priv** %6, align 8
  %16 = getelementptr inbounds %struct.mlx5e_rep_indr_block_priv, %struct.mlx5e_rep_indr_block_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.mlx5e_priv* @netdev_priv(i32 %19)
  store %struct.mlx5e_priv* %20, %struct.mlx5e_priv** %8, align 8
  store i32 0, i32* %9, align 4
  %21 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %22 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %42 [
    i32 129, label %24
    i32 130, label %30
    i32 128, label %36
  ]

24:                                               ; preds = %3
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %27 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @mlx5e_configure_flower(%struct.net_device* %25, %struct.mlx5e_priv* %26, %struct.flow_cls_offload* %27, i64 %28)
  store i32 %29, i32* %9, align 4
  br label %45

30:                                               ; preds = %3
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %33 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @mlx5e_delete_flower(%struct.net_device* %31, %struct.mlx5e_priv* %32, %struct.flow_cls_offload* %33, i64 %34)
  store i32 %35, i32* %9, align 4
  br label %45

36:                                               ; preds = %3
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %39 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %5, align 8
  %40 = load i64, i64* %7, align 8
  %41 = call i32 @mlx5e_stats_flower(%struct.net_device* %37, %struct.mlx5e_priv* %38, %struct.flow_cls_offload* %39, i64 %40)
  store i32 %41, i32* %9, align 4
  br label %45

42:                                               ; preds = %3
  %43 = load i32, i32* @EOPNOTSUPP, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %9, align 4
  br label %45

45:                                               ; preds = %42, %36, %30, %24
  %46 = load i32, i32* %9, align 4
  ret i32 %46
}

declare dso_local i64 @MLX5_TC_FLAG(i32) #1

declare dso_local %struct.mlx5e_priv* @netdev_priv(i32) #1

declare dso_local i32 @mlx5e_configure_flower(%struct.net_device*, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i64) #1

declare dso_local i32 @mlx5e_delete_flower(%struct.net_device*, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i64) #1

declare dso_local i32 @mlx5e_stats_flower(%struct.net_device*, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
