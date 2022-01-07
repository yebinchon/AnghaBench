; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_match_action_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_erif_match_action_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_match = type { i32, i32*, i32 }
%struct.devlink_dpipe_action = type { i32, i32*, i32 }

@DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY = common dso_local global i32 0, align 4
@mlxsw_sp_dpipe_header_metadata = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_match*, %struct.devlink_dpipe_action*)* @mlxsw_sp_erif_match_action_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_erif_match_action_prepare(%struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_action* %1) #0 {
  %3 = alloca %struct.devlink_dpipe_match*, align 8
  %4 = alloca %struct.devlink_dpipe_action*, align 8
  store %struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_match** %3, align 8
  store %struct.devlink_dpipe_action* %1, %struct.devlink_dpipe_action** %4, align 8
  %5 = load i32, i32* @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 4
  %6 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %4, align 8
  %7 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 8
  %8 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %4, align 8
  %9 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %8, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %9, align 8
  %10 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD, align 4
  %11 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %4, align 8
  %12 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load i32, i32* @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 4
  %14 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %15 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %17 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %16, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %17, align 8
  %18 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT, align 4
  %19 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %3, align 8
  %20 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
