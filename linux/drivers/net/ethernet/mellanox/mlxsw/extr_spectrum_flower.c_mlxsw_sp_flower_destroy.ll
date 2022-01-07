; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_cls_offload = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32 }

@MLXSW_SP_ACL_PROFILE_FLOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_flower_destroy(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %6 = alloca %struct.flow_cls_offload*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %5, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %6, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %5, align 8
  %11 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %12 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MLXSW_SP_ACL_PROFILE_FLOWER, align 4
  %16 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp* %9, %struct.mlxsw_sp_acl_block* %10, i32 %14, i32 %15, i32* null)
  store %struct.mlxsw_sp_acl_ruleset* %16, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %17 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %18 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_ruleset* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %41

21:                                               ; preds = %3
  %22 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %23 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %24 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %6, align 8
  %25 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp* %22, %struct.mlxsw_sp_acl_ruleset* %23, i32 %26)
  store %struct.mlxsw_sp_acl_rule* %27, %struct.mlxsw_sp_acl_rule** %8, align 8
  %28 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %29 = icmp ne %struct.mlxsw_sp_acl_rule* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %32 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %33 = call i32 @mlxsw_sp_acl_rule_del(%struct.mlxsw_sp* %31, %struct.mlxsw_sp_acl_rule* %32)
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %35 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %8, align 8
  %36 = call i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp* %34, %struct.mlxsw_sp_acl_rule* %35)
  br label %37

37:                                               ; preds = %30, %21
  %38 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %39 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %7, align 8
  %40 = call i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp* %38, %struct.mlxsw_sp_acl_ruleset* %39)
  br label %41

41:                                               ; preds = %37, %20
  ret void
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_rule_del(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
