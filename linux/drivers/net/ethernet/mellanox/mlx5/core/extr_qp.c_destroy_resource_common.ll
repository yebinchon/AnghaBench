; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_destroy_resource_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_qp.c_destroy_resource_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.mlx5_qp_table }
%struct.mlx5_qp_table = type { i32, i32 }
%struct.mlx5_core_qp = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mlx5_core_rsc_common = type { i32 }

@MLX5_USER_INDEX_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5_core_qp*)* @destroy_resource_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_resource_common(%struct.mlx5_core_dev* %0, %struct.mlx5_core_qp* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_core_qp*, align 8
  %5 = alloca %struct.mlx5_qp_table*, align 8
  %6 = alloca i64, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_core_qp* %1, %struct.mlx5_core_qp** %4, align 8
  %7 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store %struct.mlx5_qp_table* %9, %struct.mlx5_qp_table** %5, align 8
  %10 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %5, align 8
  %11 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %10, i32 0, i32 0
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %5, align 8
  %15 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %14, i32 0, i32 1
  %16 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %4, align 8
  %20 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MLX5_USER_INDEX_LEN, align 4
  %24 = shl i32 %22, %23
  %25 = or i32 %18, %24
  %26 = call i32 @radix_tree_delete(i32* %15, i32 %25)
  %27 = load %struct.mlx5_qp_table*, %struct.mlx5_qp_table** %5, align 8
  %28 = getelementptr inbounds %struct.mlx5_qp_table, %struct.mlx5_qp_table* %27, i32 0, i32 0
  %29 = load i64, i64* %6, align 8
  %30 = call i32 @spin_unlock_irqrestore(i32* %28, i64 %29)
  %31 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %4, align 8
  %32 = bitcast %struct.mlx5_core_qp* %31 to %struct.mlx5_core_rsc_common*
  %33 = call i32 @mlx5_core_put_rsc(%struct.mlx5_core_rsc_common* %32)
  %34 = load %struct.mlx5_core_qp*, %struct.mlx5_core_qp** %4, align 8
  %35 = getelementptr inbounds %struct.mlx5_core_qp, %struct.mlx5_core_qp* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = call i32 @wait_for_completion(i32* %36)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @radix_tree_delete(i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mlx5_core_put_rsc(%struct.mlx5_core_rsc_common*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
