; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_peer_miss_rules_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eswitch_offloads.c_peer_miss_rules_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eswitch = type { i32 }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_spec = type { i32, i32, i32 }
%struct.mlx5_flow_destination = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@fte_match_param = common dso_local global i32 0, align 4
@misc_parameters_2 = common dso_local global i32 0, align 4
@fte_match_set_misc2 = common dso_local global i32 0, align 4
@metadata_reg_c_0 = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS_2 = common dso_local global i32 0, align 4
@misc_parameters = common dso_local global i32 0, align 4
@fte_match_set_misc = common dso_local global i32 0, align 4
@source_eswitch_owner_vhca_id = common dso_local global i32 0, align 4
@vhca_id = common dso_local global i32 0, align 4
@MLX5_MATCH_MISC_PARAMETERS = common dso_local global i32 0, align 4
@source_port = common dso_local global i32 0, align 4
@MLX5_FLOW_DESTINATION_TYPE_VPORT = common dso_local global i32 0, align 4
@MLX5_FLOW_DEST_VPORT_VHCA_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_eswitch*, %struct.mlx5_core_dev*, %struct.mlx5_flow_spec*, %struct.mlx5_flow_destination*)* @peer_miss_rules_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peer_miss_rules_setup(%struct.mlx5_eswitch* %0, %struct.mlx5_core_dev* %1, %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_destination* %3) #0 {
  %5 = alloca %struct.mlx5_eswitch*, align 8
  %6 = alloca %struct.mlx5_core_dev*, align 8
  %7 = alloca %struct.mlx5_flow_spec*, align 8
  %8 = alloca %struct.mlx5_flow_destination*, align 8
  %9 = alloca i8*, align 8
  store %struct.mlx5_eswitch* %0, %struct.mlx5_eswitch** %5, align 8
  store %struct.mlx5_core_dev* %1, %struct.mlx5_core_dev** %6, align 8
  store %struct.mlx5_flow_spec* %2, %struct.mlx5_flow_spec** %7, align 8
  store %struct.mlx5_flow_destination* %3, %struct.mlx5_flow_destination** %8, align 8
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
  %23 = call i32 @MLX5_SET_TO_ONES(i32 %20, i8* %21, i32 %22)
  %24 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS_2, align 4
  %25 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  br label %58

27:                                               ; preds = %4
  %28 = load i32, i32* @fte_match_param, align 4
  %29 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %30 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @misc_parameters, align 4
  %33 = call i8* @MLX5_ADDR_OF(i32 %28, i32 %31, i32 %32)
  store i8* %33, i8** %9, align 8
  %34 = load i32, i32* @fte_match_set_misc, align 4
  %35 = load i8*, i8** %9, align 8
  %36 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %38 = load i32, i32* @vhca_id, align 4
  %39 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %37, i32 %38)
  %40 = call i32 @MLX5_SET(i32 %34, i8* %35, i32 %36, i32 %39)
  %41 = load i32, i32* @MLX5_MATCH_MISC_PARAMETERS, align 4
  %42 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %43 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @fte_match_param, align 4
  %45 = load %struct.mlx5_flow_spec*, %struct.mlx5_flow_spec** %7, align 8
  %46 = getelementptr inbounds %struct.mlx5_flow_spec, %struct.mlx5_flow_spec* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @misc_parameters, align 4
  %49 = call i8* @MLX5_ADDR_OF(i32 %44, i32 %47, i32 %48)
  store i8* %49, i8** %9, align 8
  %50 = load i32, i32* @fte_match_set_misc, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = load i32, i32* @source_port, align 4
  %53 = call i32 @MLX5_SET_TO_ONES(i32 %50, i8* %51, i32 %52)
  %54 = load i32, i32* @fte_match_set_misc, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = load i32, i32* @source_eswitch_owner_vhca_id, align 4
  %57 = call i32 @MLX5_SET_TO_ONES(i32 %54, i8* %55, i32 %56)
  br label %58

58:                                               ; preds = %27, %13
  %59 = load i32, i32* @MLX5_FLOW_DESTINATION_TYPE_VPORT, align 4
  %60 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %61 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %69 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 2
  store i32 %67, i32* %70, align 4
  %71 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %6, align 8
  %72 = load i32, i32* @vhca_id, align 4
  %73 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %71, i32 %72)
  %74 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %75 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @MLX5_FLOW_DEST_VPORT_VHCA_ID, align 4
  %78 = load %struct.mlx5_flow_destination*, %struct.mlx5_flow_destination** %8, align 8
  %79 = getelementptr inbounds %struct.mlx5_flow_destination, %struct.mlx5_flow_destination* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  ret void
}

declare dso_local i64 @mlx5_eswitch_vport_match_metadata_enabled(%struct.mlx5_eswitch*) #1

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @MLX5_SET_TO_ONES(i32, i8*, i32) #1

declare dso_local i32 @MLX5_SET(i32, i8*, i32, i32) #1

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
