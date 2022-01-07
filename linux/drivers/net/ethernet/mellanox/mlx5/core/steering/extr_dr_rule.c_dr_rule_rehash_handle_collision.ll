; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_handle_collision.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_rehash_handle_collision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_matcher = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { i32 }
%struct.list_head = type { i32 }
%struct.mlx5dr_ste = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed update dup entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste* (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, %struct.list_head*, %struct.mlx5dr_ste*, i32*)* @dr_rule_rehash_handle_collision to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste* @dr_rule_rehash_handle_collision(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, %struct.list_head* %2, %struct.mlx5dr_ste* %3, i32* %4) #0 {
  %6 = alloca %struct.mlx5dr_ste*, align 8
  %7 = alloca %struct.mlx5dr_matcher*, align 8
  %8 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %9 = alloca %struct.list_head*, align 8
  %10 = alloca %struct.mlx5dr_ste*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mlx5dr_ste*, align 8
  %13 = alloca i32, align 4
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %7, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  store %struct.list_head* %2, %struct.list_head** %9, align 8
  store %struct.mlx5dr_ste* %3, %struct.mlx5dr_ste** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %15 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %16 = load i32*, i32** %11, align 8
  %17 = call %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher* %14, %struct.mlx5dr_matcher_rx_tx* %15, i32* %16)
  store %struct.mlx5dr_ste* %17, %struct.mlx5dr_ste** %12, align 8
  %18 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %19 = icmp ne %struct.mlx5dr_ste* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %6, align 8
  br label %49

21:                                               ; preds = %5
  %22 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %23 = call i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste* %22)
  %24 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %25 = getelementptr inbounds %struct.mlx5dr_ste, %struct.mlx5dr_ste* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %29 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  %30 = call i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste* %29)
  %31 = load %struct.list_head*, %struct.list_head** %9, align 8
  %32 = call i32 @dr_rule_append_to_miss_list(%struct.mlx5dr_ste* %28, i32 %30, %struct.list_head* %31)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %36, i32 0, i32 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @mlx5dr_dbg(i32 %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %44

42:                                               ; preds = %21
  %43 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  store %struct.mlx5dr_ste* %43, %struct.mlx5dr_ste** %6, align 8
  br label %49

44:                                               ; preds = %35
  %45 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %12, align 8
  %46 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %7, align 8
  %47 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %8, align 8
  %48 = call i32 @mlx5dr_ste_free(%struct.mlx5dr_ste* %45, %struct.mlx5dr_matcher* %46, %struct.mlx5dr_matcher_rx_tx* %47)
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %6, align 8
  br label %49

49:                                               ; preds = %44, %42, %20
  %50 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %6, align 8
  ret %struct.mlx5dr_ste* %50
}

declare dso_local %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*) #1

declare dso_local i32 @mlx5dr_ste_get_miss_list(%struct.mlx5dr_ste*) #1

declare dso_local i32 @dr_rule_append_to_miss_list(%struct.mlx5dr_ste*, i32, %struct.list_head*) #1

declare dso_local i32 @mlx5dr_dbg(i32, i8*) #1

declare dso_local i32 @mlx5dr_ste_free(%struct.mlx5dr_ste*, %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
