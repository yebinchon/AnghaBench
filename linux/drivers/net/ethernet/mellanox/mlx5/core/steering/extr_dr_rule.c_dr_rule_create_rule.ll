; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_rule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_rule = type { %struct.TYPE_4__, %struct.TYPE_4__, i32, %struct.mlx5dr_matcher* }
%struct.TYPE_4__ = type { i32* }
%struct.mlx5dr_matcher = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_match_parameters = type { i32 }
%struct.mlx5dr_action = type { i32 }
%struct.mlx5dr_match_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed creating rule\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_rule* (%struct.mlx5dr_matcher*, %struct.mlx5dr_match_parameters*, i64, %struct.mlx5dr_action**)* @dr_rule_create_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_rule* @dr_rule_create_rule(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_match_parameters* %1, i64 %2, %struct.mlx5dr_action** %3) #0 {
  %5 = alloca %struct.mlx5dr_rule*, align 8
  %6 = alloca %struct.mlx5dr_matcher*, align 8
  %7 = alloca %struct.mlx5dr_match_parameters*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mlx5dr_action**, align 8
  %10 = alloca %struct.mlx5dr_domain*, align 8
  %11 = alloca %struct.mlx5dr_match_param, align 4
  %12 = alloca %struct.mlx5dr_rule*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %6, align 8
  store %struct.mlx5dr_match_parameters* %1, %struct.mlx5dr_match_parameters** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.mlx5dr_action** %3, %struct.mlx5dr_action*** %9, align 8
  %14 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %14, i32 0, i32 2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %17, align 8
  store %struct.mlx5dr_domain* %18, %struct.mlx5dr_domain** %10, align 8
  %19 = bitcast %struct.mlx5dr_match_param* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 4, i1 false)
  %20 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %21 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %7, align 8
  %22 = call i32 @dr_rule_verify(%struct.mlx5dr_matcher* %20, %struct.mlx5dr_match_parameters* %21, %struct.mlx5dr_match_param* %11)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store %struct.mlx5dr_rule* null, %struct.mlx5dr_rule** %5, align 8
  br label %105

25:                                               ; preds = %4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.mlx5dr_rule* @kzalloc(i32 32, i32 %26)
  store %struct.mlx5dr_rule* %27, %struct.mlx5dr_rule** %12, align 8
  %28 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %29 = icmp ne %struct.mlx5dr_rule* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.mlx5dr_rule* null, %struct.mlx5dr_rule** %5, align 8
  br label %105

31:                                               ; preds = %25
  %32 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %33 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %33, i32 0, i32 3
  store %struct.mlx5dr_matcher* %32, %struct.mlx5dr_matcher** %34, align 8
  %35 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %36 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %35, i32 0, i32 2
  %37 = call i32 @INIT_LIST_HEAD(i32* %36)
  %38 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %41 = call i32 @dr_rule_add_action_members(%struct.mlx5dr_rule* %38, i64 %39, %struct.mlx5dr_action** %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %100

45:                                               ; preds = %31
  %46 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %10, align 8
  %47 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  switch i32 %48, label %88 [
    i32 129, label %49
    i32 128, label %61
    i32 130, label %73
  ]

49:                                               ; preds = %45
  %50 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %50, i32 0, i32 1
  %52 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  store i32* %51, i32** %54, align 8
  %55 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %56 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %57 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %56, i32 0, i32 1
  %58 = load i64, i64* %8, align 8
  %59 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %60 = call i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule* %55, %struct.TYPE_4__* %57, %struct.mlx5dr_match_param* %11, i64 %58, %struct.mlx5dr_action** %59)
  store i32 %60, i32* %13, align 4
  br label %91

61:                                               ; preds = %45
  %62 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %62, i32 0, i32 0
  %64 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %68 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %69 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %68, i32 0, i32 0
  %70 = load i64, i64* %8, align 8
  %71 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %72 = call i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule* %67, %struct.TYPE_4__* %69, %struct.mlx5dr_match_param* %11, i64 %70, %struct.mlx5dr_action** %71)
  store i32 %72, i32* %13, align 4
  br label %91

73:                                               ; preds = %45
  %74 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %75 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %74, i32 0, i32 1
  %76 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %77 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  store i32* %75, i32** %78, align 8
  %79 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %80 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %79, i32 0, i32 0
  %81 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %82 = getelementptr inbounds %struct.mlx5dr_rule, %struct.mlx5dr_rule* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  store i32* %80, i32** %83, align 8
  %84 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = load %struct.mlx5dr_action**, %struct.mlx5dr_action*** %9, align 8
  %87 = call i32 @dr_rule_create_rule_fdb(%struct.mlx5dr_rule* %84, %struct.mlx5dr_match_param* %11, i64 %85, %struct.mlx5dr_action** %86)
  store i32 %87, i32* %13, align 4
  br label %91

88:                                               ; preds = %45
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %13, align 4
  br label %91

91:                                               ; preds = %88, %73, %61, %49
  %92 = load i32, i32* %13, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %97

95:                                               ; preds = %91
  %96 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  store %struct.mlx5dr_rule* %96, %struct.mlx5dr_rule** %5, align 8
  br label %105

97:                                               ; preds = %94
  %98 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %99 = call i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule* %98)
  br label %100

100:                                              ; preds = %97, %44
  %101 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %12, align 8
  %102 = call i32 @kfree(%struct.mlx5dr_rule* %101)
  %103 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %10, align 8
  %104 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %103, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5dr_rule* null, %struct.mlx5dr_rule** %5, align 8
  br label %105

105:                                              ; preds = %100, %95, %30, %24
  %106 = load %struct.mlx5dr_rule*, %struct.mlx5dr_rule** %5, align 8
  ret %struct.mlx5dr_rule* %106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dr_rule_verify(%struct.mlx5dr_matcher*, %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_param*) #2

declare dso_local %struct.mlx5dr_rule* @kzalloc(i32, i32) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @dr_rule_add_action_members(%struct.mlx5dr_rule*, i64, %struct.mlx5dr_action**) #2

declare dso_local i32 @dr_rule_create_rule_nic(%struct.mlx5dr_rule*, %struct.TYPE_4__*, %struct.mlx5dr_match_param*, i64, %struct.mlx5dr_action**) #2

declare dso_local i32 @dr_rule_create_rule_fdb(%struct.mlx5dr_rule*, %struct.mlx5dr_match_param*, i64, %struct.mlx5dr_action**) #2

declare dso_local i32 @dr_rule_remove_action_members(%struct.mlx5dr_rule*) #2

declare dso_local i32 @kfree(%struct.mlx5dr_rule*) #2

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
