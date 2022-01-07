; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_collision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_handle_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.mlx5dr_ste = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste_send_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to update prev miss_list\0A\00", align 1
@DR_STE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste* (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_ste*, i32*, %struct.list_head*, %struct.list_head*)* @dr_rule_handle_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste* @dr_rule_handle_collision(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_ste* %2, i32* %3, %struct.list_head* %4, %struct.list_head* %5) #0 {
  %7 = alloca %struct.mlx5dr_ste*, align 8
  %8 = alloca %struct.mlx5dr_matcher*, align 8
  %9 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %10 = alloca %struct.mlx5dr_ste*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.list_head*, align 8
  %13 = alloca %struct.list_head*, align 8
  %14 = alloca %struct.mlx5dr_ste_send_info*, align 8
  %15 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %8, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  store %struct.mlx5dr_ste* %2, %struct.mlx5dr_ste** %10, align 8
  store i32* %3, i32** %11, align 8
  store %struct.list_head* %4, %struct.list_head** %12, align 8
  store %struct.list_head* %5, %struct.list_head** %13, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.mlx5dr_ste_send_info* @kzalloc(i32 4, i32 %16)
  store %struct.mlx5dr_ste_send_info* %17, %struct.mlx5dr_ste_send_info** %14, align 8
  %18 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %14, align 8
  %19 = icmp ne %struct.mlx5dr_ste_send_info* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %6
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %7, align 8
  br label %73

21:                                               ; preds = %6
  %22 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %8, align 8
  %23 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %26 = call %struct.mlx5dr_ste* @dr_rule_create_collision_entry(%struct.mlx5dr_matcher* %22, %struct.mlx5dr_matcher_rx_tx* %23, i32* %24, %struct.mlx5dr_ste* %25)
  store %struct.mlx5dr_ste* %26, %struct.mlx5dr_ste** %15, align 8
  %27 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %15, align 8
  %28 = icmp ne %struct.mlx5dr_ste* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %21
  br label %70

30:                                               ; preds = %21
  %31 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %15, align 8
  %32 = load %struct.list_head*, %struct.list_head** %12, align 8
  %33 = load %struct.list_head*, %struct.list_head** %13, align 8
  %34 = call i64 @dr_rule_append_to_miss_list(%struct.mlx5dr_ste* %31, %struct.list_head* %32, %struct.list_head* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %8, align 8
  %38 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @mlx5dr_dbg(i32 %41, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %65

43:                                               ; preds = %30
  %44 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %15, align 8
  %45 = load i32, i32* @DR_STE_SIZE, align 4
  %46 = load i32*, i32** %11, align 8
  %47 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %14, align 8
  %48 = load %struct.list_head*, %struct.list_head** %13, align 8
  %49 = call i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste* %44, i32 %45, i32 0, i32* %46, %struct.mlx5dr_ste_send_info* %47, %struct.list_head* %48, i32 0)
  %50 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %51 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %58 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %57, i32 0, i32 0
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %15, align 8
  store %struct.mlx5dr_ste* %64, %struct.mlx5dr_ste** %7, align 8
  br label %73

65:                                               ; preds = %36
  %66 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %15, align 8
  %67 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %8, align 8
  %68 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %9, align 8
  %69 = call i32 @mlx5dr_ste_free(%struct.mlx5dr_ste* %66, %struct.mlx5dr_matcher* %67, %struct.mlx5dr_matcher_rx_tx* %68)
  br label %70

70:                                               ; preds = %65, %29
  %71 = load %struct.mlx5dr_ste_send_info*, %struct.mlx5dr_ste_send_info** %14, align 8
  %72 = call i32 @kfree(%struct.mlx5dr_ste_send_info* %71)
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %7, align 8
  br label %73

73:                                               ; preds = %70, %43, %20
  %74 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %7, align 8
  ret %struct.mlx5dr_ste* %74
}

declare dso_local %struct.mlx5dr_ste_send_info* @kzalloc(i32, i32) #1

declare dso_local %struct.mlx5dr_ste* @dr_rule_create_collision_entry(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*, %struct.mlx5dr_ste*) #1

declare dso_local i64 @dr_rule_append_to_miss_list(%struct.mlx5dr_ste*, %struct.list_head*, %struct.list_head*) #1

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #1

declare dso_local i32 @mlx5dr_send_fill_and_append_ste_send_info(%struct.mlx5dr_ste*, i32, i32, i32*, %struct.mlx5dr_ste_send_info*, %struct.list_head*, i32) #1

declare dso_local i32 @mlx5dr_ste_free(%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_ste_send_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
