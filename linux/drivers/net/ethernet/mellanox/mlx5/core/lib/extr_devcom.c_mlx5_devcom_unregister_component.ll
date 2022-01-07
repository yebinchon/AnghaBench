; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_unregister_component.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_devcom.c_mlx5_devcom_unregister_component.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_devcom = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mlx5_devcom_component* }
%struct.mlx5_devcom_component = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_devcom_unregister_component(%struct.mlx5_devcom* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_devcom*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_devcom_component*, align 8
  store %struct.mlx5_devcom* %0, %struct.mlx5_devcom** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %3, align 8
  %7 = call i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  br label %33

10:                                               ; preds = %2
  %11 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %15, i64 %17
  store %struct.mlx5_devcom_component* %18, %struct.mlx5_devcom_component** %5, align 8
  %19 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %19, i32 0, i32 0
  %21 = call i32 @down_write(i32* %20)
  %22 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %5, align 8
  %23 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load %struct.mlx5_devcom*, %struct.mlx5_devcom** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5_devcom, %struct.mlx5_devcom* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store i32* null, i32** %29, align 8
  %30 = load %struct.mlx5_devcom_component*, %struct.mlx5_devcom_component** %5, align 8
  %31 = getelementptr inbounds %struct.mlx5_devcom_component, %struct.mlx5_devcom_component* %30, i32 0, i32 0
  %32 = call i32 @up_write(i32* %31)
  br label %33

33:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.mlx5_devcom*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
