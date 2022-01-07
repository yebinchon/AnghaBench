; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_tmplt_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_tmplt_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@MLXSW_SP_ACL_PROFILE_FLOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_flower_tmplt_create(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule_info, align 4
  %10 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %11 = call i32 @memset(%struct.mlxsw_sp_acl_rule_info* %9, i32 0, i32 4)
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %15 = call i32 @mlxsw_sp_flower_parse(%struct.mlxsw_sp* %12, %struct.mlxsw_sp_acl_block* %13, %struct.mlxsw_sp_acl_rule_info* %9, %struct.flow_cls_offload* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %4, align 4
  br label %33

20:                                               ; preds = %3
  %21 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %22 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %23 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %24 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @MLXSW_SP_ACL_PROFILE_FLOWER, align 4
  %28 = getelementptr inbounds %struct.mlxsw_sp_acl_rule_info, %struct.mlxsw_sp_acl_rule_info* %9, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp* %21, %struct.mlxsw_sp_acl_block* %22, i32 %26, i32 %27, i32* %29)
  store %struct.mlxsw_sp_acl_ruleset* %30, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %31 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %32 = call i32 @PTR_ERR_OR_ZERO(%struct.mlxsw_sp_acl_ruleset* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %20, %18
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @memset(%struct.mlxsw_sp_acl_rule_info*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_flower_parse(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32, i32, i32*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
