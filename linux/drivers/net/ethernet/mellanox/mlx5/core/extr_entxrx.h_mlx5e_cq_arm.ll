; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_cq_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_entxrx.h_mlx5e_cq_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_cq = type { %struct.TYPE_4__, %struct.mlx5_core_cq }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5_core_cq = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MLX5_CQ_DB_REQ_NOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_cq*)* @mlx5e_cq_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cq_arm(%struct.mlx5e_cq* %0) #0 {
  %2 = alloca %struct.mlx5e_cq*, align 8
  %3 = alloca %struct.mlx5_core_cq*, align 8
  store %struct.mlx5e_cq* %0, %struct.mlx5e_cq** %2, align 8
  %4 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %4, i32 0, i32 1
  store %struct.mlx5_core_cq* %5, %struct.mlx5_core_cq** %3, align 8
  %6 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %7 = load i32, i32* @MLX5_CQ_DB_REQ_NOT, align 4
  %8 = load %struct.mlx5_core_cq*, %struct.mlx5_core_cq** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_core_cq, %struct.mlx5_core_cq* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @mlx5_cq_arm(%struct.mlx5_core_cq* %6, i32 %7, i32 %12, i32 %16)
  ret void
}

declare dso_local i32 @mlx5_cq_arm(%struct.mlx5_core_cq*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
