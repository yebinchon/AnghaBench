; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum2_mr_tcam.c_mlxsw_sp2_mr_tcam_rule_parse4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@MLXSW_AFK_ELEMENT_SRC_IP_0_31 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_0_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_mr_route_key*)* @mlxsw_sp2_mr_tcam_rule_parse4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp2_mr_tcam_rule_parse4(%struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_mr_route_key* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %4 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  store %struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  store %struct.mlxsw_sp_mr_route_key* %1, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %5 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %6 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_0_31, align 4
  %7 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %5, i32 %6, i8* %10, i8* %14, i32 4)
  %16 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %17 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_0_31, align 4
  %18 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = bitcast i32* %20 to i8*
  %22 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %4, align 8
  %23 = getelementptr inbounds %struct.mlxsw_sp_mr_route_key, %struct.mlxsw_sp_mr_route_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = bitcast i32* %24 to i8*
  %26 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %16, i32 %17, i8* %21, i8* %25, i32 4)
  ret void
}

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
