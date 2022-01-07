; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_match_action_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_match_action_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink_dpipe_match = type { i32, i32*, i8* }
%struct.devlink_dpipe_action = type { i32, i32*, i32 }

@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF = common dso_local global i64 0, align 8
@DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT = common dso_local global i8* null, align 8
@mlxsw_sp_dpipe_header_metadata = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP = common dso_local global i64 0, align 8
@devlink_dpipe_header_ipv4 = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_IPV4_DST_IP = common dso_local global i32 0, align 4
@devlink_dpipe_header_ipv6 = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_IPV6_DST_IP = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY = common dso_local global i32 0, align 4
@devlink_dpipe_header_ethernet = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.devlink_dpipe_match*, %struct.devlink_dpipe_action*, i32)* @mlxsw_sp_dpipe_table_host_match_action_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_dpipe_table_host_match_action_prepare(%struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_action* %1, i32 %2) #0 {
  %4 = alloca %struct.devlink_dpipe_match*, align 8
  %5 = alloca %struct.devlink_dpipe_action*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.devlink_dpipe_match*, align 8
  store %struct.devlink_dpipe_match* %0, %struct.devlink_dpipe_match** %4, align 8
  store %struct.devlink_dpipe_action* %1, %struct.devlink_dpipe_action** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %4, align 8
  %9 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_RIF, align 8
  %10 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %8, i64 %9
  store %struct.devlink_dpipe_match* %10, %struct.devlink_dpipe_match** %7, align 8
  %11 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %12 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %13 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %12, i32 0, i32 2
  store i8* %11, i8** %13, align 8
  %14 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %15 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %14, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %15, align 8
  %16 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT, align 4
  %17 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %18 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %4, align 8
  %20 = load i64, i64* @MLXSW_SP_DPIPE_TABLE_HOST_MATCH_DIP, align 8
  %21 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %19, i64 %20
  store %struct.devlink_dpipe_match* %21, %struct.devlink_dpipe_match** %7, align 8
  %22 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %23 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %38 [
    i32 129, label %26
    i32 128, label %32
  ]

26:                                               ; preds = %3
  %27 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %28 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %27, i32 0, i32 1
  store i32* @devlink_dpipe_header_ipv4, i32** %28, align 8
  %29 = load i32, i32* @DEVLINK_DPIPE_FIELD_IPV4_DST_IP, align 4
  %30 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %40

32:                                               ; preds = %3
  %33 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %34 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %33, i32 0, i32 1
  store i32* @devlink_dpipe_header_ipv6, i32** %34, align 8
  %35 = load i32, i32* @DEVLINK_DPIPE_FIELD_IPV6_DST_IP, align 4
  %36 = load %struct.devlink_dpipe_match*, %struct.devlink_dpipe_match** %7, align 8
  %37 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %40

38:                                               ; preds = %3
  %39 = call i32 @WARN_ON(i32 1)
  br label %49

40:                                               ; preds = %32, %26
  %41 = load i32, i32* @DEVLINK_DPIPE_ACTION_TYPE_FIELD_MODIFY, align 4
  %42 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %43 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 8
  %44 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %45 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %44, i32 0, i32 1
  store i32* @devlink_dpipe_header_ethernet, i32** %45, align 8
  %46 = load i32, i32* @DEVLINK_DPIPE_FIELD_ETHERNET_DST_MAC, align 4
  %47 = load %struct.devlink_dpipe_action*, %struct.devlink_dpipe_action** %5, align 8
  %48 = getelementptr inbounds %struct.devlink_dpipe_action, %struct.devlink_dpipe_action* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %40, %38
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
