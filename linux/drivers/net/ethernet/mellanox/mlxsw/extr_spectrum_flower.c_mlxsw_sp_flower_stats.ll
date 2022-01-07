; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_cls_offload = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32 }

@MLXSW_SP_ACL_PROFILE_FLOWER = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_flower_stats(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %14 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %15 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %16 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %17 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MLXSW_SP_ACL_PROFILE_FLOWER, align 4
  %21 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp* %14, %struct.mlxsw_sp_acl_block* %15, i32 %19, i32 %20, i32* null)
  store %struct.mlxsw_sp_acl_ruleset* %21, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %22 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %23 = call i32 @IS_ERR(%struct.mlxsw_sp_acl_ruleset* %22)
  %24 = call i64 @WARN_ON(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %3
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %63

29:                                               ; preds = %3
  %30 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %31 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %32 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %33 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp* %30, %struct.mlxsw_sp_acl_ruleset* %31, i32 %34)
  store %struct.mlxsw_sp_acl_rule* %35, %struct.mlxsw_sp_acl_rule** %9, align 8
  %36 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %9, align 8
  %37 = icmp ne %struct.mlxsw_sp_acl_rule* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %29
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %63

41:                                               ; preds = %29
  %42 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %43 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %9, align 8
  %44 = call i32 @mlxsw_sp_acl_rule_get_stats(%struct.mlxsw_sp* %42, %struct.mlxsw_sp_acl_rule* %43, i32* %10, i32* %12, i32* %11)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  br label %58

48:                                               ; preds = %41
  %49 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %50 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %49, i32 0, i32 0
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = call i32 @flow_stats_update(i32* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %56 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %57 = call i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp* %55, %struct.mlxsw_sp_acl_ruleset* %56)
  store i32 0, i32* %4, align 4
  br label %63

58:                                               ; preds = %47
  %59 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %60 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %8, align 8
  %61 = call i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp* %59, %struct.mlxsw_sp_acl_ruleset* %60)
  %62 = load i32, i32* %13, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %58, %48, %38, %26
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32, i32, i32*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @IS_ERR(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_rule* @mlxsw_sp_acl_rule_lookup(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i32) #1

declare dso_local i32 @mlxsw_sp_acl_rule_get_stats(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_rule*, i32*, i32*, i32*) #1

declare dso_local i32 @flow_stats_update(i32*, i32, i32, i32) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
