; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_matcher.c_dr_matcher_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { i64, %struct.TYPE_2__, %struct.TYPE_2__, i32, %struct.mlx5dr_table* }
%struct.TYPE_2__ = type { i32* }
%struct.mlx5dr_table = type { i32, i32, %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_match_parameters = type { i32 }

@DR_MATCHER_CRITERIA_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Invalid match criteria attribute\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid match size attribute\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_matcher*, %struct.mlx5dr_match_parameters*)* @dr_matcher_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_matcher_init(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_match_parameters* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5dr_matcher*, align 8
  %5 = alloca %struct.mlx5dr_match_parameters*, align 8
  %6 = alloca %struct.mlx5dr_table*, align 8
  %7 = alloca %struct.mlx5dr_domain*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %4, align 8
  store %struct.mlx5dr_match_parameters* %1, %struct.mlx5dr_match_parameters** %5, align 8
  %9 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %9, i32 0, i32 4
  %11 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %10, align 8
  store %struct.mlx5dr_table* %11, %struct.mlx5dr_table** %6, align 8
  %12 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %12, i32 0, i32 2
  %14 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %13, align 8
  store %struct.mlx5dr_domain* %14, %struct.mlx5dr_domain** %7, align 8
  %15 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DR_MATCHER_CRITERIA_MAX, align 8
  %19 = icmp sge i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %22 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %90

25:                                               ; preds = %2
  %26 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %5, align 8
  %27 = icmp ne %struct.mlx5dr_match_parameters* %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %25
  %29 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_match_parameters, %struct.mlx5dr_match_parameters* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %36 = call i32 @mlx5dr_info(%struct.mlx5dr_domain* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %90

39:                                               ; preds = %28
  %40 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %44 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %43, i32 0, i32 3
  %45 = load %struct.mlx5dr_match_parameters*, %struct.mlx5dr_match_parameters** %5, align 8
  %46 = call i32 @mlx5dr_ste_copy_param(i64 %42, i32* %44, %struct.mlx5dr_match_parameters* %45)
  br label %47

47:                                               ; preds = %39, %25
  %48 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %7, align 8
  %49 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %84 [
    i32 129, label %51
    i32 128, label %61
    i32 130, label %71
  ]

51:                                               ; preds = %47
  %52 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %53 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %52, i32 0, i32 1
  %54 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %55 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %58 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %59 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %58, i32 0, i32 2
  %60 = call i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher* %57, %struct.TYPE_2__* %59)
  store i32 %60, i32* %8, align 4
  br label %88

61:                                               ; preds = %47
  %62 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %63 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %62, i32 0, i32 0
  %64 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %65 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32* %63, i32** %66, align 8
  %67 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %68 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %69 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %68, i32 0, i32 1
  %70 = call i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher* %67, %struct.TYPE_2__* %69)
  store i32 %70, i32* %8, align 4
  br label %88

71:                                               ; preds = %47
  %72 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %73 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %72, i32 0, i32 1
  %74 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %75 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i32* %73, i32** %76, align 8
  %77 = load %struct.mlx5dr_table*, %struct.mlx5dr_table** %6, align 8
  %78 = getelementptr inbounds %struct.mlx5dr_table, %struct.mlx5dr_table* %77, i32 0, i32 0
  %79 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %80 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  store i32* %78, i32** %81, align 8
  %82 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %4, align 8
  %83 = call i32 @dr_matcher_init_fdb(%struct.mlx5dr_matcher* %82)
  store i32 %83, i32* %8, align 4
  br label %88

84:                                               ; preds = %47
  %85 = call i32 @WARN_ON(i32 1)
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %90

88:                                               ; preds = %71, %61, %51
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %88, %84, %34, %20
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @mlx5dr_info(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5dr_ste_copy_param(i64, i32*, %struct.mlx5dr_match_parameters*) #1

declare dso_local i32 @dr_matcher_init_nic(%struct.mlx5dr_matcher*, %struct.TYPE_2__*) #1

declare dso_local i32 @dr_matcher_init_fdb(%struct.mlx5dr_matcher*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
