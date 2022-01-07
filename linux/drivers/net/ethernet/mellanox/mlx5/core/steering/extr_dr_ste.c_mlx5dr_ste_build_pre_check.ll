; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_pre_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_ste.c_mlx5dr_ste_build_pre_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_match_param = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DR_MATCHER_CRITERIA_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Partial mask source_port is not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_ste_build_pre_check(%struct.mlx5dr_domain* %0, i32 %1, %struct.mlx5dr_match_param* %2, %struct.mlx5dr_match_param* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5dr_match_param*, align 8
  %9 = alloca %struct.mlx5dr_match_param*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.mlx5dr_match_param* %2, %struct.mlx5dr_match_param** %8, align 8
  store %struct.mlx5dr_match_param* %3, %struct.mlx5dr_match_param** %9, align 8
  %10 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %9, align 8
  %11 = icmp ne %struct.mlx5dr_match_param* %10, null
  br i1 %11, label %35, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @DR_MATCHER_CRITERIA_MISC, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %35

17:                                               ; preds = %12
  %18 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %17
  %24 = load %struct.mlx5dr_match_param*, %struct.mlx5dr_match_param** %8, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_match_param, %struct.mlx5dr_match_param* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 65535
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %31 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %30, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %36

34:                                               ; preds = %23, %17
  br label %35

35:                                               ; preds = %34, %12, %4
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
