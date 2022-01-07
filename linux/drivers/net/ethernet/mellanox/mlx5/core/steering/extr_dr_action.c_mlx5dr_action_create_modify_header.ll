; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_modify_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_mlx5dr_action_create_modify_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_action = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }

@DR_MODIFY_ACTION_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid modify actions size provided\0A\00", align 1
@DR_ACTION_TYP_MODIFY_HDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed creating modify header action %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5dr_action* @mlx5dr_action_create_modify_header(%struct.mlx5dr_domain* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.mlx5dr_action*, align 8
  %6 = alloca %struct.mlx5dr_domain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.mlx5dr_action*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 0
  %14 = call i32 @refcount_inc(i32* %13)
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @DR_MODIFY_ACTION_SIZE, align 8
  %17 = urem i64 %15, %16
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %21 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %49

22:                                               ; preds = %4
  %23 = load i32, i32* @DR_ACTION_TYP_MODIFY_HDR, align 4
  %24 = call %struct.mlx5dr_action* @dr_action_create_generic(i32 %23)
  store %struct.mlx5dr_action* %24, %struct.mlx5dr_action** %10, align 8
  %25 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  %26 = icmp ne %struct.mlx5dr_action* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  br label %49

28:                                               ; preds = %22
  %29 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %30 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  %31 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store %struct.mlx5dr_domain* %29, %struct.mlx5dr_domain** %32, align 8
  %33 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  %37 = call i32 @dr_action_create_modify_action(%struct.mlx5dr_domain* %33, i64 %34, i32* %35, %struct.mlx5dr_action* %36)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %28
  %41 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %42 = load i32, i32* %11, align 4
  %43 = call i32 (%struct.mlx5dr_domain*, i8*, ...) @mlx5dr_dbg(%struct.mlx5dr_domain* %41, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  br label %46

44:                                               ; preds = %28
  %45 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  store %struct.mlx5dr_action* %45, %struct.mlx5dr_action** %5, align 8
  br label %53

46:                                               ; preds = %40
  %47 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %10, align 8
  %48 = call i32 @kfree(%struct.mlx5dr_action* %47)
  br label %49

49:                                               ; preds = %46, %27, %19
  %50 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %6, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %50, i32 0, i32 0
  %52 = call i32 @refcount_dec(i32* %51)
  store %struct.mlx5dr_action* null, %struct.mlx5dr_action** %5, align 8
  br label %53

53:                                               ; preds = %49, %44
  %54 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %5, align 8
  ret %struct.mlx5dr_action* %54
}

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*, ...) #1

declare dso_local %struct.mlx5dr_action* @dr_action_create_generic(i32) #1

declare dso_local i32 @dr_action_create_modify_action(%struct.mlx5dr_domain*, i64, i32*, %struct.mlx5dr_action*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_action*) #1

declare dso_local i32 @refcount_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
