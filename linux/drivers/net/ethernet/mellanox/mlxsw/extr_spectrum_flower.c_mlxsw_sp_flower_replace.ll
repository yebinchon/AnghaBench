; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_replace.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_flower.c_mlxsw_sp_flower_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_block = type { i32 }
%struct.flow_cls_offload = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mlxsw_sp_acl_rule_info = type { i32 }
%struct.mlxsw_sp_acl_ruleset = type { i32 }
%struct.mlxsw_sp_acl_rule = type opaque

@MLXSW_SP_ACL_PROFILE_FLOWER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_flower_replace(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_block* %1, %struct.flow_cls_offload* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %7 = alloca %struct.flow_cls_offload*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_rule_info*, align 8
  %9 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %10 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %11 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store %struct.mlxsw_sp_acl_block* %1, %struct.mlxsw_sp_acl_block** %6, align 8
  store %struct.flow_cls_offload* %2, %struct.flow_cls_offload** %7, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %14 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %15 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MLXSW_SP_ACL_PROFILE_FLOWER, align 4
  %19 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp* %12, %struct.mlxsw_sp_acl_block* %13, i32 %17, i32 %18, i32* null)
  store %struct.mlxsw_sp_acl_ruleset* %19, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %20 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %21 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_ruleset* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %25 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_ruleset* %24)
  store i32 %25, i32* %4, align 4
  br label %88

26:                                               ; preds = %3
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %28 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %29 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %30 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %33 = getelementptr inbounds %struct.flow_cls_offload, %struct.flow_cls_offload* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_rule_create(%struct.mlxsw_sp* %27, %struct.mlxsw_sp_acl_ruleset* %28, i32 %31, i32* null, i32 %35)
  %37 = bitcast %struct.mlxsw_sp_acl_ruleset* %36 to %struct.mlxsw_sp_acl_rule*
  store %struct.mlxsw_sp_acl_rule* %37, %struct.mlxsw_sp_acl_rule** %10, align 8
  %38 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %10, align 8
  %39 = bitcast %struct.mlxsw_sp_acl_rule* %38 to %struct.mlxsw_sp_acl_ruleset*
  %40 = call i64 @IS_ERR(%struct.mlxsw_sp_acl_ruleset* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %26
  %43 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %10, align 8
  %44 = bitcast %struct.mlxsw_sp_acl_rule* %43 to %struct.mlxsw_sp_acl_ruleset*
  %45 = call i32 @PTR_ERR(%struct.mlxsw_sp_acl_ruleset* %44)
  store i32 %45, i32* %11, align 4
  br label %83

46:                                               ; preds = %26
  %47 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %10, align 8
  %48 = bitcast %struct.mlxsw_sp_acl_rule* %47 to %struct.mlxsw_sp_acl_ruleset*
  %49 = call %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_ruleset* %48)
  store %struct.mlxsw_sp_acl_rule_info* %49, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %51 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %6, align 8
  %52 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %53 = load %struct.flow_cls_offload*, %struct.flow_cls_offload** %7, align 8
  %54 = call i32 @mlxsw_sp_flower_parse(%struct.mlxsw_sp* %50, %struct.mlxsw_sp_acl_block* %51, %struct.mlxsw_sp_acl_rule_info* %52, %struct.flow_cls_offload* %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %78

58:                                               ; preds = %46
  %59 = load %struct.mlxsw_sp_acl_rule_info*, %struct.mlxsw_sp_acl_rule_info** %8, align 8
  %60 = call i32 @mlxsw_sp_acl_rulei_commit(%struct.mlxsw_sp_acl_rule_info* %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  br label %77

64:                                               ; preds = %58
  %65 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %66 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %10, align 8
  %67 = bitcast %struct.mlxsw_sp_acl_rule* %66 to %struct.mlxsw_sp_acl_ruleset*
  %68 = call i32 @mlxsw_sp_acl_rule_add(%struct.mlxsw_sp* %65, %struct.mlxsw_sp_acl_ruleset* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %76

72:                                               ; preds = %64
  %73 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %74 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %75 = call i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp* %73, %struct.mlxsw_sp_acl_ruleset* %74)
  store i32 0, i32* %4, align 4
  br label %88

76:                                               ; preds = %71
  br label %77

77:                                               ; preds = %76, %63
  br label %78

78:                                               ; preds = %77, %57
  %79 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %80 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %10, align 8
  %81 = bitcast %struct.mlxsw_sp_acl_rule* %80 to %struct.mlxsw_sp_acl_ruleset*
  %82 = call i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp* %79, %struct.mlxsw_sp_acl_ruleset* %81)
  br label %83

83:                                               ; preds = %78, %42
  %84 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %85 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  %86 = call i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp* %84, %struct.mlxsw_sp_acl_ruleset* %85)
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %83, %72, %23
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_ruleset_get(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @PTR_ERR(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local %struct.mlxsw_sp_acl_ruleset* @mlxsw_sp_acl_rule_create(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, i32, i32*, i32) #1

declare dso_local %struct.mlxsw_sp_acl_rule_info* @mlxsw_sp_acl_rule_rulei(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @mlxsw_sp_flower_parse(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_rule_info*, %struct.flow_cls_offload*) #1

declare dso_local i32 @mlxsw_sp_acl_rulei_commit(%struct.mlxsw_sp_acl_rule_info*) #1

declare dso_local i32 @mlxsw_sp_acl_rule_add(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_put(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @mlxsw_sp_acl_rule_destroy(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
