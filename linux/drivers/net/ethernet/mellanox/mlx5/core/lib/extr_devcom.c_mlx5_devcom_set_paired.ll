; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_set_paired.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_set_paired.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.mlx5_devcom_component* }
%struct.mlx5_devcom_component = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_devcom_set_paired(%struct.mlx5_devcom* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5_devcom*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5_devcom_component*, align 8
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %12, i64 %14
  store %struct.mlx5_devcom_component* %15, %struct.mlx5_devcom_component** %7, align 8
  %16 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %7, align 8
  %17 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %16, i32 0, i32 1
  %18 = call i32 @rwsem_is_locked(i32* %17)
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %7, align 8
  %25 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
