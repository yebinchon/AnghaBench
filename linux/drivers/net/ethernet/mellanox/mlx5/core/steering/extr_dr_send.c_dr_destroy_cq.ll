; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_dr_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5dr_cq = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_core_dev*, %struct.mlx5dr_cq*)* @dr_destroy_cq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dr_destroy_cq(%struct.mlx5_core_dev* %0, %struct.mlx5dr_cq* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5dr_cq*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5dr_cq* %1, %struct.mlx5dr_cq** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %6, i32 0, i32 1
  %8 = call i32 @mlx5_core_destroy_cq(%struct.mlx5_core_dev* %5, i32* %7)
  %9 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_cq, %struct.mlx5dr_cq* %9, i32 0, i32 0
  %11 = call i32 @mlx5_wq_destroy(i32* %10)
  %12 = load %struct.mlx5dr_cq*, %struct.mlx5dr_cq** %4, align 8
  %13 = call i32 @kfree(%struct.mlx5dr_cq* %12)
  ret void
}

declare dso_local i32 @mlx5_core_destroy_cq(%struct.mlx5_core_dev*, i32*) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.mlx5dr_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
