; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_flow_esw_attr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_tc.c_mlx5e_flow_esw_attr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_esw_flow_attr = type { %struct.mlx5_core_dev*, %struct.mlx5_core_dev*, %struct.mlx5_eswitch_rep*, i32, i32, %struct.mlx5e_tc_flow_parse_attr* }
%struct.mlx5e_priv = type { %struct.mlx5_core_dev* }
%struct.mlx5e_tc_flow_parse_attr = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_eswitch_rep = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_eswitch* }
%struct.mlx5_eswitch = type { i32 }

@counter_eswitch_affinity = common dso_local global i32 0, align 4
@MLX5_COUNTER_SOURCE_ESWITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_esw_flow_attr*, %struct.mlx5e_priv*, %struct.mlx5e_tc_flow_parse_attr*, %struct.flow_cls_offload*, %struct.mlx5_eswitch_rep*, %struct.mlx5_core_dev*)* @mlx5e_flow_esw_attr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_flow_esw_attr_init(%struct.mlx5_esw_flow_attr* %0, %struct.mlx5e_priv* %1, %struct.mlx5e_tc_flow_parse_attr* %2, %struct.flow_cls_offload* %3, %struct.mlx5_eswitch_rep* %4, %struct.mlx5_core_dev* %5) #0 {
  %7 = alloca %struct.mlx5_esw_flow_attr*, align 8
  %8 = alloca %struct.mlx5e_priv*, align 8
  %9 = alloca %struct.mlx5e_tc_flow_parse_attr*, align 8
  %10 = alloca %struct.flow_cls_offload*, align 8
  %11 = alloca %struct.mlx5_eswitch_rep*, align 8
  %12 = alloca %struct.mlx5_core_dev*, align 8
  %13 = alloca %struct.mlx5_eswitch*, align 8
  store %struct.mlx5_esw_flow_attr* %0, %struct.mlx5_esw_flow_attr** %7, align 8
  store %struct.mlx5e_priv* %1, %struct.mlx5e_priv** %8, align 8
  store %struct.mlx5e_tc_flow_parse_attr* %2, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  store %struct.flow_cls_offload* %3, %struct.flow_cls_offload** %10, align 8
  store %struct.mlx5_eswitch_rep* %4, %struct.mlx5_eswitch_rep** %11, align 8
  store %struct.mlx5_core_dev* %5, %struct.mlx5_core_dev** %12, align 8
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %15, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %18, align 8
  store %struct.mlx5_eswitch* %19, %struct.mlx5_eswitch** %13, align 8
  %20 = load %struct.mlx5e_tc_flow_parse_attr*, %struct.mlx5e_tc_flow_parse_attr** %9, align 8
  %21 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %22 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %21, i32 0, i32 5
  store %struct.mlx5e_tc_flow_parse_attr* %20, %struct.mlx5e_tc_flow_parse_attr** %22, align 8
  %23 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %24 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %28 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %27, i32 0, i32 4
  store i32 %26, i32* %28, align 4
  %29 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %10, align 8
  %30 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %34 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mlx5_eswitch_rep*, %struct.mlx5_eswitch_rep** %11, align 8
  %36 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %36, i32 0, i32 2
  store %struct.mlx5_eswitch_rep* %35, %struct.mlx5_eswitch_rep** %37, align 8
  %38 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %39 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %40 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %39, i32 0, i32 1
  store %struct.mlx5_core_dev* %38, %struct.mlx5_core_dev** %40, align 8
  %41 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %13, align 8
  %42 = getelementptr inbounds %struct.mlx5_eswitch, %struct.mlx5_eswitch* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @counter_eswitch_affinity, align 4
  %45 = call i64 @MLX5_CAP_ESW(i32 %43, i32 %44)
  %46 = load i64, i64* @MLX5_COUNTER_SOURCE_ESWITCH, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %6
  %49 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %12, align 8
  %50 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %51 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %50, i32 0, i32 0
  store %struct.mlx5_core_dev* %49, %struct.mlx5_core_dev** %51, align 8
  br label %58

52:                                               ; preds = %6
  %53 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %8, align 8
  %54 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %53, i32 0, i32 0
  %55 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %54, align 8
  %56 = load %struct.mlx5_esw_flow_attr*, %struct.mlx5_esw_flow_attr** %7, align 8
  %57 = getelementptr inbounds %struct.mlx5_esw_flow_attr, %struct.mlx5_esw_flow_attr* %56, i32 0, i32 0
  store %struct.mlx5_core_dev* %55, %struct.mlx5_core_dev** %57, align 8
  br label %58

58:                                               ; preds = %52, %48
  ret void
}

declare dso_local i64 @MLX5_CAP_ESW(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
