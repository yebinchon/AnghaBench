; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_collision_htbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_rule.c_dr_rule_create_collision_htbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_ste = type { i32 }
%struct.mlx5dr_matcher = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mlx5dr_domain* }
%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_matcher_rx_tx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5dr_ste_htbl = type { %struct.mlx5dr_ste* }

@DR_CHUNK_SIZE_1 = common dso_local global i32 0, align 4
@MLX5DR_STE_LU_TYPE_DONT_CARE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed allocating collision table\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5dr_ste* (%struct.mlx5dr_matcher*, %struct.mlx5dr_matcher_rx_tx*, i32*)* @dr_rule_create_collision_htbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5dr_ste* @dr_rule_create_collision_htbl(%struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher_rx_tx* %1, i32* %2) #0 {
  %4 = alloca %struct.mlx5dr_ste*, align 8
  %5 = alloca %struct.mlx5dr_matcher*, align 8
  %6 = alloca %struct.mlx5dr_matcher_rx_tx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_domain*, align 8
  %9 = alloca %struct.mlx5dr_ste_htbl*, align 8
  %10 = alloca %struct.mlx5dr_ste*, align 8
  store %struct.mlx5dr_matcher* %0, %struct.mlx5dr_matcher** %5, align 8
  store %struct.mlx5dr_matcher_rx_tx* %1, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.mlx5dr_matcher*, %struct.mlx5dr_matcher** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5dr_matcher, %struct.mlx5dr_matcher* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %14, align 8
  store %struct.mlx5dr_domain* %15, %struct.mlx5dr_domain** %8, align 8
  %16 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %8, align 8
  %17 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @DR_CHUNK_SIZE_1, align 4
  %20 = load i32, i32* @MLX5DR_STE_LU_TYPE_DONT_CARE, align 4
  %21 = call %struct.mlx5dr_ste_htbl* @mlx5dr_ste_htbl_alloc(i32 %18, i32 %19, i32 %20, i32 0)
  store %struct.mlx5dr_ste_htbl* %21, %struct.mlx5dr_ste_htbl** %9, align 8
  %22 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %23 = icmp ne %struct.mlx5dr_ste_htbl* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %8, align 8
  %26 = call i32 @mlx5dr_dbg(%struct.mlx5dr_domain* %25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  store %struct.mlx5dr_ste* null, %struct.mlx5dr_ste** %4, align 8
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_ste_htbl, %struct.mlx5dr_ste_htbl* %28, i32 0, i32 0
  %30 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %29, align 8
  store %struct.mlx5dr_ste* %30, %struct.mlx5dr_ste** %10, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = load %struct.mlx5dr_matcher_rx_tx*, %struct.mlx5dr_matcher_rx_tx** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5dr_matcher_rx_tx, %struct.mlx5dr_matcher_rx_tx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlx5dr_ste_set_miss_addr(i32* %31, i32 %38)
  %40 = load %struct.mlx5dr_ste_htbl*, %struct.mlx5dr_ste_htbl** %9, align 8
  %41 = call i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl* %40)
  %42 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %10, align 8
  store %struct.mlx5dr_ste* %42, %struct.mlx5dr_ste** %4, align 8
  br label %43

43:                                               ; preds = %27, %24
  %44 = load %struct.mlx5dr_ste*, %struct.mlx5dr_ste** %4, align 8
  ret %struct.mlx5dr_ste* %44
}

declare dso_local %struct.mlx5dr_ste_htbl* @mlx5dr_ste_htbl_alloc(i32, i32, i32, i32) #1

declare dso_local i32 @mlx5dr_dbg(%struct.mlx5dr_domain*, i8*) #1

declare dso_local i32 @mlx5dr_ste_set_miss_addr(i32*, i32) #1

declare dso_local i32 @mlx5dr_htbl_get(%struct.mlx5dr_ste_htbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
