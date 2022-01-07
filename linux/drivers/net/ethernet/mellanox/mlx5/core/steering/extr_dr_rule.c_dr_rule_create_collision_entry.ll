; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_collision_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_collision_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.mlx5dr_ste = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Failed creating collision entry\0A\00", align 1
@DR_CHUNK_SIZE_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed allocating table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste* (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*, %struct.mlx5dr_ste*)* @dr_rule_create_collision_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste* @dr_rule_create_collision_entry(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, i32* %2, %struct.mlx5dr_ste* %3) #0 {
  %5 = alloca %struct.mlx5dr_ste*, align 8
  %6 = alloca %struct.mlx5dr_matcher*, align 8
  %7 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx5dr_ste*, align 8
  %10 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %6, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.mlx5dr_ste* %3, %struct.mlx5dr_ste** %9, align 8
  %11 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %12 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %13 = load i32*, i32** %8, align 8
  %14 = call %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher* %11, %struct.mlx5dr_matcher_rx_tx* %12, i32* %13)
  store %struct.mlx5dr_ste* %14, %struct.mlx5dr_ste** %10, align 8
  %15 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %16 = icmp ne %struct.mlx5dr_ste* %15, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %4
  %18 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @mlx5dr_dbg(i32 %22, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %5, align 8
  br label %57

24:                                               ; preds = %4
  %25 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %9, align 8
  %31 = call i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste* %30)
  %32 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %32, i32 0, i32 0
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %37 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %38 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %41 = call i64 @mlx5dr_ste_create_next_htbl(%struct.mlx5dr_matcher* %36, %struct.mlx5dr_matcher_rx_tx* %37, %struct.mlx5dr_ste* %38, i32* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %24
  %44 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @mlx5dr_dbg(i32 %48, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %52

50:                                               ; preds = %24
  %51 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  store %struct.mlx5dr_ste* %51, %struct.mlx5dr_ste** %5, align 8
  br label %57

52:                                               ; preds = %43
  %53 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %54 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %6, align 8
  %55 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %7, align 8
  %56 = call i32 @mlx5dr_ste_free(%struct.mlx5dr_ste* %53, %struct.mlx5dr_matcher* %54, %struct.mlx5dr_matcher_rx_tx* %55)
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %5, align 8
  br label %57

57:                                               ; preds = %52, %50, %17
  %58 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %5, align 8
  ret %struct.mlx5dr_ste* %58
}

declare dso_local %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*) #1

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #1

declare dso_local i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste*) #1

declare dso_local i64 @mlx5dr_ste_create_next_htbl(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste*, i32*, i32) #1

declare dso_local i32 @mlx5dr_ste_free(%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
