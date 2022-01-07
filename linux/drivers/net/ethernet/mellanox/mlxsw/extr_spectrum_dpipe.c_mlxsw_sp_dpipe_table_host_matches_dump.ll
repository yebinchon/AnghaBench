; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_matches_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dpipe.c_mlxsw_sp_dpipe_table_host_matches_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.devlink_dpipe_match = type { i32, i32*, i8*, i32 }

@DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT = common dso_local global i8* null, align 8
@mlxsw_sp_dpipe_header_metadata = common dso_local global i32 0, align 4
@MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT = common dso_local global i32 0, align 4
@devlink_dpipe_header_ipv4 = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_IPV4_DST_IP = common dso_local global i32 0, align 4
@devlink_dpipe_header_ipv6 = common dso_local global i32 0, align 4
@DEVLINK_DPIPE_FIELD_IPV6_DST_IP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32)* @mlxsw_sp_dpipe_table_host_matches_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dpipe_table_host_matches_dump(%struct.sk_buff* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.devlink_dpipe_match, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = bitcast %struct.devlink_dpipe_match* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 32, i1 false)
  %9 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %10 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 2
  store i8* %9, i8** %10, align 8
  %11 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 1
  store i32* @mlxsw_sp_dpipe_header_metadata, i32** %11, align 8
  %12 = load i32, i32* @MLXSW_SP_DPIPE_FIELD_METADATA_ERIF_PORT, align 4
  %13 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = call i32 @devlink_dpipe_match_put(%struct.sk_buff* %14, %struct.devlink_dpipe_match* %6)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %3, align 4
  br label %41

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %34 [
    i32 129, label %22
    i32 128, label %28
  ]

22:                                               ; preds = %20
  %23 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %24 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 2
  store i8* %23, i8** %24, align 8
  %25 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 1
  store i32* @devlink_dpipe_header_ipv4, i32** %25, align 8
  %26 = load i32, i32* @DEVLINK_DPIPE_FIELD_IPV4_DST_IP, align 4
  %27 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 0
  store i32 %26, i32* %27, align 8
  br label %38

28:                                               ; preds = %20
  %29 = load i8*, i8** @DEVLINK_DPIPE_MATCH_TYPE_FIELD_EXACT, align 8
  %30 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 2
  store i8* %29, i8** %30, align 8
  %31 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 1
  store i32* @devlink_dpipe_header_ipv6, i32** %31, align 8
  %32 = load i32, i32* @DEVLINK_DPIPE_FIELD_IPV6_DST_IP, align 4
  %33 = getelementptr inbounds %struct.devlink_dpipe_match, %struct.devlink_dpipe_match* %6, i32 0, i32 0
  store i32 %32, i32* %33, align 8
  br label %38

34:                                               ; preds = %20
  %35 = call i32 @WARN_ON(i32 1)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %41

38:                                               ; preds = %28, %22
  %39 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %40 = call i32 @devlink_dpipe_match_put(%struct.sk_buff* %39, %struct.devlink_dpipe_match* %6)
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %38, %34, %18
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @devlink_dpipe_match_put(%struct.sk_buff*, %struct.devlink_dpipe_match*) #2

declare dso_local i32 @WARN_ON(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
