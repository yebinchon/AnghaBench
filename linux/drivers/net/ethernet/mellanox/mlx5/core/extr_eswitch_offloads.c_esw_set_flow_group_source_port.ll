; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_set_flow_group_source_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_esw_set_flow_group_source_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_eswitch = type { i32 }

@create_flow_group_in = common dso_local global i32 0, align 4
@match_criteria_enable = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS_2 = common dso_local global i32 0, align 4
@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@match_criteria = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, i32*)* @esw_set_flow_group_source_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esw_set_flow_group_source_port(%struct.mlx5_eswitch* %0, i32* %1) #0 {
  %3 = alloca %struct.mlx5_eswitch*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32, i32* @create_flow_group_in, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = call i8* @MLX5_ADDR_OF(i32 %6, i32* %7, i32 %9)
  store i8* %10, i8** %5, align 8
  %11 = load %struct.mlx5_eswitch*, %struct.mlx5_eswitch** %3, align 8
  %12 = call i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i32, i32* @create_flow_group_in, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @match_criteria_enable, align 4
  %18 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS_2, align 4
  %19 = call i32 @MLX5_SET(i32 %15, i32* %16, i32 %17, i32 %18)
  %20 = load i32, i32* @fte_match_param, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @misc_parameters_2, i32 0, i32 0), align 4
  %23 = call i32 @MLX5_SET_TO_ONES(i32 %20, i8* %21, i32 %22)
  br label %34

24:                                               ; preds = %2
  %25 = load i32, i32* @create_flow_group_in, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = load i32, i32* @match_criteria_enable, align 4
  %28 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %29 = call i32 @MLX5_SET(i32 %25, i32* %26, i32 %27, i32 %28)
  %30 = load i32, i32* @fte_match_param, align 4
  %31 = load i8*, i8** %5, align 8
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @misc_parameters, i32 0, i32 0), align 4
  %33 = call i32 @MLX5_SET_TO_ONES(i32 %30, i8* %31, i32 %32)
  br label %34

34:                                               ; preds = %24, %14
  ret void
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32*, i32) #1

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i32 @MLX5_SET(i32, i32*, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
