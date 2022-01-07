; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_set_peer_miss_rule_source_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_set_peer_miss_rule_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_flow_spec = type { i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global i32 0, align 4
@fte_match_set_misc2 = common dso_local global i32 0, align 4
@metadata_reg_c_0 = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_eswitch*, %struct.mlx5_flow_spec*, i32)* @esw_set_peer_miss_rule_source_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_set_peer_miss_rule_source_port(%struct.mlx5_eswitch* %0, %struct.mlx5_eswitch* %1, %struct.mlx5_flow_spec* %2, i32 %3) #0 {
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_eswitch*, align 8
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5_eswitch* %1, %struct.mlx5_eswitch** %6, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %5, align 8
  %11 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %27

13:                                               ; preds = %4
  %14 = load i32, i32* @fte_match_param, align 4
  %15 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @misc_parameters_2, align 4
  %19 = call i8* @MLX5_ADDR_OF(i32 %14, i32 %17, i32 %18)
  store i8* %19, i8** %9, align 8
  %20 = load i32, i32* @fte_match_set_misc2, align 4
  %21 = load i8*, i8** %9, align 8
  %22 = load i32, i32* @metadata_reg_c_0, align 4
  %23 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %6, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch* %23, i32 %24)
  %26 = call i32 @MLX5_SET(i32 %20, i8* %21, i32 %22, i32 %25)
  br label %39

27:                                               ; preds = %4
  %28 = load i32, i32* @fte_match_param, align 4
  %29 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @misc_parameters, align 4
  %33 = call i8* @MLX5_ADDR_OF(i32 %28, i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* @fte_match_set_misc, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @source_port, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @MLX5_SET(i32 %34, i8* %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %27, %13
  ret void
}

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @mlx5_eswitch_get_vport_metadata_for_match(%struct.mlx5_eswitch*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
