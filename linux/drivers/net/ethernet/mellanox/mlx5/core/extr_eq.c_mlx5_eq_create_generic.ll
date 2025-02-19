; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_create_generic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_eq.c_mlx5_eq_create_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_eq = type { i32 }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_eq_param = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mlx5_eq* @mlx5_eq_create_generic(%struct.mlx5_core_dev* %0, %struct.mlx5_eq_param* %1) #0 {
  %3 = alloca %struct.mlx5_eq*, align 8
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_eq_param*, align 8
  %6 = alloca %struct.mlx5_eq*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_eq_param* %1, %struct.mlx5_eq_param** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.mlx5_eq* @kvzalloc(i32 4, i32 %8)
  store %struct.mlx5_eq* %9, %struct.mlx5_eq** %6, align 8
  %10 = load %struct.mlx5_eq*, %struct.mlx5_eq** %6, align 8
  %11 = icmp ne %struct.mlx5_eq* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.mlx5_eq* @ERR_PTR(i32 %14)
  store %struct.mlx5_eq* %15, %struct.mlx5_eq** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %18 = load %struct.mlx5_eq*, %struct.mlx5_eq** %6, align 8
  %19 = load %struct.mlx5_eq_param*, %struct.mlx5_eq_param** %5, align 8
  %20 = call i32 @create_async_eq(%struct.mlx5_core_dev* %17, %struct.mlx5_eq* %18, %struct.mlx5_eq_param* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.mlx5_eq*, %struct.mlx5_eq** %6, align 8
  %25 = call i32 @kvfree(%struct.mlx5_eq* %24)
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.mlx5_eq* @ERR_PTR(i32 %26)
  store %struct.mlx5_eq* %27, %struct.mlx5_eq** %6, align 8
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.mlx5_eq*, %struct.mlx5_eq** %6, align 8
  store %struct.mlx5_eq* %29, %struct.mlx5_eq** %3, align 8
  br label %30

30:                                               ; preds = %28, %12
  %31 = load %struct.mlx5_eq*, %struct.mlx5_eq** %3, align 8
  ret %struct.mlx5_eq* %31
}

declare dso_local %struct.mlx5_eq* @kvzalloc(i32, i32) #1

declare dso_local %struct.mlx5_eq* @ERR_PTR(i32) #1

declare dso_local i32 @create_async_eq(%struct.mlx5_core_dev*, %struct.mlx5_eq*, %struct.mlx5_eq_param*) #1

declare dso_local i32 @kvfree(%struct.mlx5_eq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
