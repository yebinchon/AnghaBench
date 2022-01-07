; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_acl.c_mlxsw_sp_acl_rule_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.mlxsw_sp_acl_rule = type { i32, i32, %struct.TYPE_6__*, i32, %struct.mlxsw_sp_acl_ruleset* }
%struct.TYPE_6__ = type { i64 }
%struct.mlxsw_sp_acl_ruleset = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_profile_ops* }
%struct.mlxsw_sp_acl_block = type { i32, i32 }
%struct.mlxsw_sp_acl_profile_ops = type { i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.TYPE_6__*)*, i32 (%struct.mlxsw_sp.1*, i32)* }
%struct.mlxsw_sp.0 = type opaque
%struct.mlxsw_sp.1 = type opaque

@mlxsw_sp_acl_rule_ht_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_acl_rule_add(%struct.mlxsw_sp* %0, %struct.mlxsw_sp_acl_rule* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca %struct.mlxsw_sp_acl_rule*, align 8
  %6 = alloca %struct.mlxsw_sp_acl_ruleset*, align 8
  %7 = alloca %struct.mlxsw_sp_acl_profile_ops*, align 8
  %8 = alloca %struct.mlxsw_sp_acl_block*, align 8
  %9 = alloca i32, align 4
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store %struct.mlxsw_sp_acl_rule* %1, %struct.mlxsw_sp_acl_rule** %5, align 8
  %10 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %10, i32 0, i32 4
  %12 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %11, align 8
  store %struct.mlxsw_sp_acl_ruleset* %12, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %13 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 2
  %16 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %15, align 8
  store %struct.mlxsw_sp_acl_profile_ops* %16, %struct.mlxsw_sp_acl_profile_ops** %7, align 8
  %17 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %19, align 8
  store %struct.mlxsw_sp_acl_block* %20, %struct.mlxsw_sp_acl_block** %8, align 8
  %21 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %7, align 8
  %22 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %21, i32 0, i32 0
  %23 = load i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.TYPE_6__*)*, i32 (%struct.mlxsw_sp.0*, i32, i32, %struct.TYPE_6__*)** %22, align 8
  %24 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %25 = bitcast %struct.mlxsw_sp* %24 to %struct.mlxsw_sp.0*
  %26 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %27 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %30 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %33 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 %23(%struct.mlxsw_sp.0* %25, i32 %28, i32 %31, %struct.TYPE_6__* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %110

40:                                               ; preds = %2
  %41 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %42 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %41, i32 0, i32 0
  %43 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %44 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %43, i32 0, i32 1
  %45 = load i32, i32* @mlxsw_sp_acl_rule_ht_params, align 4
  %46 = call i32 @rhashtable_insert_fast(i32* %42, i32* %44, i32 %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %99

50:                                               ; preds = %40
  %51 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %52 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %69, label %56

56:                                               ; preds = %50
  %57 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %58 = call i64 @mlxsw_sp_acl_ruleset_is_singular(%struct.mlxsw_sp_acl_ruleset* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %56
  %61 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %62 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %63 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %64 = call i32 @mlxsw_sp_acl_ruleset_block_bind(%struct.mlxsw_sp* %61, %struct.mlxsw_sp_acl_ruleset* %62, %struct.mlxsw_sp_acl_block* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %92

68:                                               ; preds = %60
  br label %69

69:                                               ; preds = %68, %56, %50
  %70 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %71 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %70, i32 0, i32 3
  %72 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %73 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = call i32 @list_add_tail(i32* %71, i32* %75)
  %77 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %78 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %82 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %81, i32 0, i32 2
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.mlxsw_sp_acl_block*, %struct.mlxsw_sp_acl_block** %8, align 8
  %87 = getelementptr inbounds %struct.mlxsw_sp_acl_block, %struct.mlxsw_sp_acl_block* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = add nsw i64 %89, %85
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %87, align 4
  store i32 0, i32* %3, align 4
  br label %110

92:                                               ; preds = %67
  %93 = load %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_ruleset** %6, align 8
  %94 = getelementptr inbounds %struct.mlxsw_sp_acl_ruleset, %struct.mlxsw_sp_acl_ruleset* %93, i32 0, i32 0
  %95 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %96 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %95, i32 0, i32 1
  %97 = load i32, i32* @mlxsw_sp_acl_rule_ht_params, align 4
  %98 = call i32 @rhashtable_remove_fast(i32* %94, i32* %96, i32 %97)
  br label %99

99:                                               ; preds = %92, %49
  %100 = load %struct.mlxsw_sp_acl_profile_ops*, %struct.mlxsw_sp_acl_profile_ops** %7, align 8
  %101 = getelementptr inbounds %struct.mlxsw_sp_acl_profile_ops, %struct.mlxsw_sp_acl_profile_ops* %100, i32 0, i32 1
  %102 = load i32 (%struct.mlxsw_sp.1*, i32)*, i32 (%struct.mlxsw_sp.1*, i32)** %101, align 8
  %103 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %104 = bitcast %struct.mlxsw_sp* %103 to %struct.mlxsw_sp.1*
  %105 = load %struct.mlxsw_sp_acl_rule*, %struct.mlxsw_sp_acl_rule** %5, align 8
  %106 = getelementptr inbounds %struct.mlxsw_sp_acl_rule, %struct.mlxsw_sp_acl_rule* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 %102(%struct.mlxsw_sp.1* %104, i32 %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %99, %69, %38
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i32 @rhashtable_insert_fast(i32*, i32*, i32) #1

declare dso_local i64 @mlxsw_sp_acl_ruleset_is_singular(%struct.mlxsw_sp_acl_ruleset*) #1

declare dso_local i32 @mlxsw_sp_acl_ruleset_block_bind(%struct.mlxsw_sp*, %struct.mlxsw_sp_acl_ruleset*, %struct.mlxsw_sp_acl_block*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
