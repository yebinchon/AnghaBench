; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_send.c_mlx5dr_send_ring_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { i32 }
%struct.mlx5dr_send_ring = type { %struct.mlx5dr_send_ring*, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5dr_send_ring_free(%struct.mlx5dr_domain* %0, %struct.mlx5dr_send_ring* %1) #0 {
  %3 = alloca %struct.mlx5dr_domain*, align 8
  %4 = alloca %struct.mlx5dr_send_ring*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %3, align 8
  store %struct.mlx5dr_send_ring* %1, %struct.mlx5dr_send_ring** %4, align 8
  %5 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dr_destroy_qp(i32 %7, i32 %10)
  %12 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %16 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @dr_destroy_cq(i32 %14, i32 %17)
  %19 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %20 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dr_dereg_mr(i32 %21, i32 %24)
  %26 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %3, align 8
  %27 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dr_dereg_mr(i32 %28, i32 %31)
  %33 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_send_ring, %struct.mlx5dr_send_ring* %33, i32 0, i32 0
  %35 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %34, align 8
  %36 = call i32 @kfree(%struct.mlx5dr_send_ring* %35)
  %37 = load %struct.mlx5dr_send_ring*, %struct.mlx5dr_send_ring** %4, align 8
  %38 = call i32 @kfree(%struct.mlx5dr_send_ring* %37)
  ret void
}

declare dso_local i32 @dr_destroy_qp(i32, i32) #1

declare dso_local i32 @dr_destroy_cq(i32, i32) #1

declare dso_local i32 @dr_dereg_mr(i32, i32) #1

declare dso_local i32 @kfree(%struct.mlx5dr_send_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
