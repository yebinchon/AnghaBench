; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_poll_irq_disabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_poll_irq_disabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq_comp = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlx5_eq_poll_irq_disabled(%struct.mlx5_eq_comp* %0) #0 {
  %2 = alloca %struct.mlx5_eq_comp*, align 8
  %3 = alloca i64, align 8
  store %struct.mlx5_eq_comp* %0, %struct.mlx5_eq_comp** %2, align 8
  %4 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %2, align 8
  %5 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @disable_irq(i32 %7)
  %9 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %2, align 8
  %10 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %3, align 8
  %13 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %13, i32 0, i32 1
  %15 = call i32 @mlx5_eq_comp_int(i32* %14, i32 0, i32* null)
  %16 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %3, align 8
  %21 = sub nsw i64 %19, %20
  store i64 %21, i64* %3, align 8
  %22 = load %struct.mlx5_eq_comp*, %struct.mlx5_eq_comp** %2, align 8
  %23 = getelementptr inbounds %struct.mlx5_eq_comp, %struct.mlx5_eq_comp* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @enable_irq(i32 %25)
  %27 = load i64, i64* %3, align 8
  ret i64 %27
}

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mlx5_eq_comp_int(i32*, i32, i32*) #1

declare dso_local i32 @enable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
