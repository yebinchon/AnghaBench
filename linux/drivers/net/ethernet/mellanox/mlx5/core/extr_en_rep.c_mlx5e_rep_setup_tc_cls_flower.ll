; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_setup_tc_cls_flower.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_setup_tc_cls_flower.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32 }
%struct.flow_cls_offload = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, %struct.flow_cls_offload*, i32)* @mlx5e_rep_setup_tc_cls_flower to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_rep_setup_tc_cls_flower(%struct.mlx5e_priv* %0, %struct.flow_cls_offload* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_priv*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %5, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %9 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %35 [
    i32 129, label %11
    i32 130, label %19
    i32 128, label %27
  ]

11:                                               ; preds = %3
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %16 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mlx5e_configure_flower(i32 %14, %struct.mlx5e_priv* %15, %struct.flow_cls_offload* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %38

19:                                               ; preds = %3
  %20 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %21 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @mlx5e_delete_flower(i32 %22, %struct.mlx5e_priv* %23, %struct.flow_cls_offload* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  br label %38

27:                                               ; preds = %3
  %28 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %29 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %5, align 8
  %32 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @mlx5e_stats_flower(i32 %30, %struct.mlx5e_priv* %31, %struct.flow_cls_offload* %32, i32 %33)
  store i32 %34, i32* %4, align 4
  br label %38

35:                                               ; preds = %3
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %27, %19, %11
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mlx5e_configure_flower(i32, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i32) #1

declare dso_local i32 @mlx5e_delete_flower(i32, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i32) #1

declare dso_local i32 @mlx5e_stats_flower(i32, %struct.mlx5e_priv*, %struct.flow_cls_offload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
