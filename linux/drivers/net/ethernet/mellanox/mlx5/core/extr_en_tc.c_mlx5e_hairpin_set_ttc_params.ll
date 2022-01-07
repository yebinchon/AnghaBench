; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_set_ttc_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_hairpin_set_ttc_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_hairpin = type { i32*, i32 }
%struct.ttc_params = type { i32*, i32, %struct.mlx5_flow_table_attr }
%struct.mlx5_flow_table_attr = type { i32, i32, i32 }

@MLX5E_NUM_INDIR_TIRS = common dso_local global i32 0, align 4
@MLX5E_NUM_TT = common dso_local global i32 0, align 4
@MLX5E_TC_TTC_FT_LEVEL = common dso_local global i32 0, align 4
@MLX5E_TC_PRIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_hairpin*, %struct.ttc_params*)* @mlx5e_hairpin_set_ttc_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_hairpin_set_ttc_params(%struct.mlx5e_hairpin* %0, %struct.ttc_params* %1) #0 {
  %3 = alloca %struct.mlx5e_hairpin*, align 8
  %4 = alloca %struct.ttc_params*, align 8
  %5 = alloca %struct.mlx5_flow_table_attr*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx5e_hairpin* %0, %struct.mlx5e_hairpin** %3, align 8
  store %struct.ttc_params* %1, %struct.ttc_params** %4, align 8
  %7 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %8 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %7, i32 0, i32 2
  store %struct.mlx5_flow_table_attr* %8, %struct.mlx5_flow_table_attr** %5, align 8
  %9 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %10 = call i32 @memset(%struct.ttc_params* %9, i32 0, i32 24)
  %11 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %15 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %2
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* @MLX5E_NUM_INDIR_TIRS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %37

20:                                               ; preds = %16
  %21 = load %struct.mlx5e_hairpin*, %struct.mlx5e_hairpin** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_hairpin, %struct.mlx5e_hairpin* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ttc_params*, %struct.ttc_params** %4, align 8
  %29 = getelementptr inbounds %struct.ttc_params, %struct.ttc_params* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32 %27, i32* %33, align 4
  br label %34

34:                                               ; preds = %20
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %16
  %38 = load i32, i32* @MLX5E_NUM_TT, align 4
  %39 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %5, align 8
  %40 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @MLX5E_TC_TTC_FT_LEVEL, align 4
  %42 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %5, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @MLX5E_TC_PRIO, align 4
  %45 = load %struct.mlx5_flow_table_attr*, %struct.mlx5_flow_table_attr** %5, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_table_attr, %struct.mlx5_flow_table_attr* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  ret void
}

declare dso_local i32 @memset(%struct.ttc_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
