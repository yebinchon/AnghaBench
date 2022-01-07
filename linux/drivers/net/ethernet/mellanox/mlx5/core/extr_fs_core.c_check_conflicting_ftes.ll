; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_check_conflicting_ftes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_check_conflicting_ftes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fs_fte = type { %struct.TYPE_3__, i32, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_flow_context = type { i32, i64 }
%struct.mlx5_flow_act = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"Found two FTEs with conflicting actions\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@FLOW_CONTEXT_HAS_TAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"FTE flow tag %u already exists with different flow tag %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fs_fte*, %struct.mlx5_flow_context*, %struct.mlx5_flow_act*)* @check_conflicting_ftes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_conflicting_ftes(%struct.fs_fte* %0, %struct.mlx5_flow_context* %1, %struct.mlx5_flow_act* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fs_fte*, align 8
  %6 = alloca %struct.mlx5_flow_context*, align 8
  %7 = alloca %struct.mlx5_flow_act*, align 8
  store %struct.fs_fte* %0, %struct.fs_fte** %5, align 8
  store %struct.mlx5_flow_context* %1, %struct.mlx5_flow_context** %6, align 8
  store %struct.mlx5_flow_act* %2, %struct.mlx5_flow_act** %7, align 8
  %8 = load %struct.mlx5_flow_act*, %struct.mlx5_flow_act** %7, align 8
  %9 = getelementptr inbounds %struct.mlx5_flow_act, %struct.mlx5_flow_act* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %12 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @check_conflicting_actions(i32 %10, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %19 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %18, i32 0, i32 1
  %20 = call i32 @get_dev(i32* %19)
  %21 = call i32 (i32, i8*, ...) @mlx5_core_warn(i32 %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EEXIST, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %55

24:                                               ; preds = %3
  %25 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %6, align 8
  %26 = getelementptr inbounds %struct.mlx5_flow_context, %struct.mlx5_flow_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @FLOW_CONTEXT_HAS_TAG, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %24
  %32 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %33 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5_flow_context, %struct.mlx5_flow_context* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %35, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %31
  %41 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %42 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %41, i32 0, i32 1
  %43 = call i32 @get_dev(i32* %42)
  %44 = load %struct.fs_fte*, %struct.fs_fte** %5, align 8
  %45 = getelementptr inbounds %struct.fs_fte, %struct.fs_fte* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.mlx5_flow_context*, %struct.mlx5_flow_context** %6, align 8
  %49 = getelementptr inbounds %struct.mlx5_flow_context, %struct.mlx5_flow_context* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i32, i8*, ...) @mlx5_core_warn(i32 %43, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %50)
  %52 = load i32, i32* @EEXIST, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %55

54:                                               ; preds = %31, %24
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %40, %17
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i64 @check_conflicting_actions(i32, i32) #1

declare dso_local i32 @mlx5_core_warn(i32, i8*, ...) #1

declare dso_local i32 @get_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
