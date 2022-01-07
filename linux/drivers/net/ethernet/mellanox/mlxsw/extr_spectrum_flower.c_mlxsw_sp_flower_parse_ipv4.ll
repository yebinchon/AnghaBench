; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ipv4.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_parse_ipv4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.flow_cls_offload = type { i32 }
%struct.flow_match_ipv4_addrs = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@MLXSW_AFK_ELEMENT_SRC_IP_0_31 = common dso_local global i32 0, align 4
@MLXSW_AFK_ELEMENT_DST_IP_0_31 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*)* @mlxsw_sp_flower_parse_ipv4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxsw_sp_flower_parse_ipv4(%struct.mlxsw_sp_acl_rule_info* %0, %struct.flow_cls_offload* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %4 = alloca %struct.flow_cls_offload*, align 8
  %5 = alloca %struct.flow_match_ipv4_addrs, align 8
  store %struct.mlxsw_sp_acl_rule_info* %0, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  store %struct.flow_cls_offload* %1, %struct.flow_cls_offload** %4, align 8
  %6 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %4, align 8
  %7 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @flow_rule_match_ipv4_addrs(i32 %8, %struct.flow_match_ipv4_addrs* %5)
  %10 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %11 = load i32, i32* @MLXSW_AFK_ELEMENT_SRC_IP_0_31, align 4
  %12 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %5, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = bitcast i32* %14 to i8*
  %16 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %5, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = bitcast i32* %18 to i8*
  %20 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %10, i32 %11, i8* %15, i8* %19, i32 4)
  %21 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %3, align 8
  %22 = load i32, i32* @MLXSW_AFK_ELEMENT_DST_IP_0_31, align 4
  %23 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %5, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = bitcast i32* %25 to i8*
  %27 = getelementptr inbounds %struct.flow_match_ipv4_addrs, %struct.flow_match_ipv4_addrs* %5, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info* %21, i32 %22, i8* %26, i8* %30, i32 4)
  ret void
}

declare dso_local i32 @flow_rule_match_ipv4_addrs(i32, %struct.flow_match_ipv4_addrs*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_keymask_buf(%struct.mlxsw_sp_acl_rule_info*, i32, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
