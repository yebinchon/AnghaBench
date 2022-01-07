; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_handle_cs_recalc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_action.c_dr_action_handle_cs_recalc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_action = type { i32, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Destination FT should be terminating when modify TTL is used\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to get FW cs recalc flow table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5dr_domain*, %struct.mlx5dr_action*, i32*)* @dr_action_handle_cs_recalc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dr_action_handle_cs_recalc(%struct.mlx5dr_domain* %0, %struct.mlx5dr_action* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca %struct.mlx5dr_action*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %5, align 8
  store %struct.mlx5dr_action* %1, %struct.mlx5dr_action** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %51 [
    i32 129, label %12
    i32 128, label %31
  ]

12:                                               ; preds = %3
  %13 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %12
  %19 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %7, align 8
  store i32 %23, i32* %24, align 4
  br label %30

25:                                               ; preds = %12
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %27 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %26, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %53

30:                                               ; preds = %18
  br label %52

31:                                               ; preds = %3
  %32 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mlx5dr_action*, %struct.mlx5dr_action** %6, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_action, %struct.mlx5dr_action* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %7, align 8
  %43 = call i32 @mlx5dr_domain_cache_get_recalc_cs_ft_addr(i32 %35, i32 %41, i32* %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %48 = call i32 @mlx5dr_err(%struct.mlx5dr_domain* %47, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %53

50:                                               ; preds = %31
  br label %52

51:                                               ; preds = %3
  br label %52

52:                                               ; preds = %51, %50, %30
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %52, %46, %25
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5dr_domain_cache_get_recalc_cs_ft_addr(i32, i32, i32*) #1

declare dso_local i32 @mlx5dr_err(%struct.mlx5dr_domain*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
