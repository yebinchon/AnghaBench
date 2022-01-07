; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32, i32, i32, %struct.TYPE_3__*, %struct.mlxsw_sp_acl_ruleset* }
%struct.TYPE_3__ = type { i64 }
%struct.mlxsw_sp_acl_ruleset = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlxsw_sp_acl_block*, i32, %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_block = type { i32, i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32 (%struct.mlxsw_sp.0*, i32)* }
%struct.mlxsw_sp.0 = type opaque

@mlxsw_sp_acl_rule_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_acl_rule_del(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule* %1) #0 {
  %3 = alloca %struct.mlxsw_sp*, align 8
  %4 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_block*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %3, align 8
  store %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_sp_acl_rule** %4, align 8
  %8 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %9 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %8, i32 0, i32 4
  %10 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %9, align 8
  store %struct.mlxsw_sp_acl_ruleset* %10, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %11 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %12 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 2
  %14 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %13, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %14, %struct.mlxsw_sp_acl_profile_ops** %6, align 8
  %15 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %17, align 8
  store %struct.mlxsw_sp_acl_block* %18, %struct.mlxsw_sp_acl_block** %7, align 8
  %19 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %20 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %19, i32 0, i32 3
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = sub nsw i64 %27, %23
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %31 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %32, align 8
  %34 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %38 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %37, i32 0, i32 2
  %39 = call i32 @list_del(i32* %38)
  %40 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %41 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %2
  %46 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %47 = call i64 @mlxsw_sp_acl_ruleset_is_singular(%struct.mlxsw_sp_acl_ruleset* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %45
  %50 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %51 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %52 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %53 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %54, align 8
  %56 = call i32 @mlxsw_sp_acl_ruleset_block_unbind(%struct.mlxsw_sp* %50, %struct.mlxsw_sp_acl_ruleset* %51, %struct.mlxsw_sp_acl_block* %55)
  br label %57

57:                                               ; preds = %49, %45, %2
  %58 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %5, align 8
  %59 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %58, i32 0, i32 0
  %60 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %61 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %60, i32 0, i32 1
  %62 = load i32, i32* @mlxsw_sp_acl_rule_ht_params, align 4
  %63 = call i32 @rhashtable_remove_fast(i32* %59, i32* %61, i32 %62)
  %64 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %6, align 8
  %65 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %64, i32 0, i32 0
  %66 = load i32 (%struct.mlxsw_sp.0*, i32)*, i32 (%struct.mlxsw_sp.0*, i32)** %65, align 8
  %67 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %3, align 8
  %68 = bitcast %struct.mlxsw_sp* %67 to %struct.mlxsw_sp.0*
  %69 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %4, align 8
  %70 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %66(%struct.mlxsw_sp.0* %68, i32 %71)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i64 @mlxsw_sp_acl_ruleset_is_singular(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_block_unbind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
