; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_actions_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_erif_actions_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_action = type { i32, i32*, i8*, i32 }

@DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY = common dso_local global i8* null, align 8
@mlxsw_sp_dpipe_header_metadata = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_L3_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*)* @mlxsw_sp_dpipe_table_erif_actions_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_erif_actions_dump(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.devlink_dpipe_action, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %8 = bitcast %struct.devlink_dpipe_action* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load i8*, i8** @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 8
  %10 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %11, align 8
  %12 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_L3_FORWARD, align 4
  %13 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = call i32 @devlink_dpipe_action_put(%struct.sk_buff* %14, %struct.devlink_dpipe_action* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %28

20:                                               ; preds = %2
  %21 = load i8*, i8** @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 8
  %22 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 2
  store i8* %21, i8** %22, align 8
  %23 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %23, align 8
  %24 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_L3_DROP, align 4
  %25 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %27 = call i32 @devlink_dpipe_action_put(%struct.sk_buff* %26, %struct.devlink_dpipe_action* %6)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %20, %18
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @devlink_dpipe_action_put(%struct.sk_buff*, %struct.devlink_dpipe_action*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
