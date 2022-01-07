; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_pool_mr_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_icm_pool.c_dr_icm_pool_mr_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_icm_mr = type { i32, i32, %struct.mlx5dr_icm_dm, %struct.TYPE_4__* }
%struct.mlx5dr_icm_dm = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5dr_icm_mr*)* @dr_icm_pool_mr_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_icm_pool_mr_destroy(%struct.mlx5dr_icm_mr* %0) #0 {
  %2 = alloca %struct.mlx5dr_icm_mr*, align 8
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5dr_icm_dm*, align 8
  store %struct.mlx5dr_icm_mr* %0, %struct.mlx5dr_icm_mr** %2, align 8
  %5 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  store %struct.mlx5_core_dev* %11, %struct.mlx5_core_dev** %3, align 8
  %12 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %2, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %12, i32 0, i32 2
  store %struct.mlx5dr_icm_dm* %13, %struct.mlx5dr_icm_dm** %4, align 8
  %14 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %2, align 8
  %15 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %14, i32 0, i32 1
  %16 = call i32 @list_del(i32* %15)
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %18 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5dr_icm_mr, %struct.mlx5dr_icm_mr* %18, i32 0, i32 0
  %20 = call i32 @mlx5_core_destroy_mkey(%struct.mlx5_core_dev* %17, i32* %19)
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %22 = load %struct.mlx5dr_icm_dm*, %struct.mlx5dr_icm_dm** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_icm_dm, %struct.mlx5dr_icm_dm* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mlx5dr_icm_dm*, %struct.mlx5dr_icm_dm** %4, align 8
  %26 = getelementptr inbounds %struct.mlx5dr_icm_dm, %struct.mlx5dr_icm_dm* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mlx5dr_icm_dm*, %struct.mlx5dr_icm_dm** %4, align 8
  %29 = getelementptr inbounds %struct.mlx5dr_icm_dm, %struct.mlx5dr_icm_dm* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.mlx5dr_icm_dm*, %struct.mlx5dr_icm_dm** %4, align 8
  %32 = getelementptr inbounds %struct.mlx5dr_icm_dm, %struct.mlx5dr_icm_dm* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev* %21, i32 %24, i32 %27, i32 0, i32 %30, i32 %33)
  %35 = load %struct.mlx5dr_icm_mr*, %struct.mlx5dr_icm_mr** %2, align 8
  %36 = call i32 @kvfree(%struct.mlx5dr_icm_mr* %35)
  ret void
}

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlx5_core_destroy_mkey(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_dm_sw_icm_dealloc(%struct.mlx5_core_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @kvfree(%struct.mlx5dr_icm_mr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
