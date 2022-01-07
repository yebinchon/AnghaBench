; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_element_type_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch.c_element_type_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@esw_element_type = common dso_local global i32 0, align 4
@ELEMENT_TYPE_CAP_MASK_TASR = common dso_local global i32 0, align 4
@ELEMENT_TYPE_CAP_MASK_VPORT = common dso_local global i32 0, align 4
@ELEMENT_TYPE_CAP_MASK_VPORT_TC = common dso_local global i32 0, align 4
@ELEMENT_TYPE_CAP_MASK_PARA_VPORT_TC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_eswitch*, i32)* @element_type_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @element_type_supported(%struct.mlx5_eswitch* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5_eswitch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5_core_dev*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %4, align 8
  %8 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %7, i32 0, i32 0
  %9 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %8, align 8
  store %struct.mlx5_core_dev* %9, %struct.mlx5_core_dev** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %35 [
    i32 130, label %11
    i32 129, label %17
    i32 128, label %23
    i32 131, label %29
  ]

11:                                               ; preds = %2
  %12 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %13 = load i32, i32* @esw_element_type, align 4
  %14 = call i32 @MLX5_CAP_QOS(%struct.mlx5_core_dev* %12, i32 %13)
  %15 = load i32, i32* @ELEMENT_TYPE_CAP_MASK_TASR, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %3, align 4
  br label %36

17:                                               ; preds = %2
  %18 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %19 = load i32, i32* @esw_element_type, align 4
  %20 = call i32 @MLX5_CAP_QOS(%struct.mlx5_core_dev* %18, i32 %19)
  %21 = load i32, i32* @ELEMENT_TYPE_CAP_MASK_VPORT, align 4
  %22 = and i32 %20, %21
  store i32 %22, i32* %3, align 4
  br label %36

23:                                               ; preds = %2
  %24 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %25 = load i32, i32* @esw_element_type, align 4
  %26 = call i32 @MLX5_CAP_QOS(%struct.mlx5_core_dev* %24, i32 %25)
  %27 = load i32, i32* @ELEMENT_TYPE_CAP_MASK_VPORT_TC, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %3, align 4
  br label %36

29:                                               ; preds = %2
  %30 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %31 = load i32, i32* @esw_element_type, align 4
  %32 = call i32 @MLX5_CAP_QOS(%struct.mlx5_core_dev* %30, i32 %31)
  %33 = load i32, i32* @ELEMENT_TYPE_CAP_MASK_PARA_VPORT_TC, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %3, align 4
  br label %36

35:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %29, %23, %17, %11
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @MLX5_CAP_QOS(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
