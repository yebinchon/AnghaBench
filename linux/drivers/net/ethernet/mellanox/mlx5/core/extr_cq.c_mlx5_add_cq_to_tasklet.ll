; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cq.c_mlx5_add_cq_to_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_cq.c_mlx5_add_cq_to_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_cq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.mlx5_eq_tasklet* }
%struct.mlx5_eq_tasklet = type { i32, i32 }
%struct.mlx5_eqe = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_cq*, %struct.mlx5_eqe*)* @mlx5_add_cq_to_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_add_cq_to_tasklet(%struct.mlx5_core_cq* %0, %struct.mlx5_eqe* %1) #0 {
  %3 = alloca %struct.mlx5_core_cq*, align 8
  %4 = alloca %struct.mlx5_eqe*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.mlx5_eq_tasklet*, align 8
  store %struct.mlx5_core_cq* %0, %struct.mlx5_core_cq** %3, align 8
  store %struct.mlx5_eqe* %1, %struct.mlx5_eqe** %4, align 8
  %7 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %8 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load %struct.mlx5_eq_tasklet*, %struct.mlx5_eq_tasklet** %9, align 8
  store %struct.mlx5_eq_tasklet* %10, %struct.mlx5_eq_tasklet** %6, align 8
  %11 = load %struct.mlx5_eq_tasklet*, %struct.mlx5_eq_tasklet** %6, align 8
  %12 = getelementptr inbounds %struct.mlx5_eq_tasklet, %struct.mlx5_eq_tasklet* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i64 @list_empty_careful(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %22 = call i32 @mlx5_cq_hold(%struct.mlx5_core_cq* %21)
  %23 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %24 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load %struct.mlx5_eq_tasklet*, %struct.mlx5_eq_tasklet** %6, align 8
  %27 = getelementptr inbounds %struct.mlx5_eq_tasklet, %struct.mlx5_eq_tasklet* %26, i32 0, i32 1
  %28 = call i32 @list_add_tail(i32* %25, i32* %27)
  br label %29

29:                                               ; preds = %20, %2
  %30 = load %struct.mlx5_eq_tasklet*, %struct.mlx5_eq_tasklet** %6, align 8
  %31 = getelementptr inbounds %struct.mlx5_eq_tasklet, %struct.mlx5_eq_tasklet* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty_careful(i32*) #1

declare dso_local i32 @mlx5_cq_hold(%struct.mlx5_core_cq*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
