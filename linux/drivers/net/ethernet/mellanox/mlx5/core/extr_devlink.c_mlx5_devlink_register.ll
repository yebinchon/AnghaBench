; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_devlink.c_mlx5_devlink_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.devlink = type { i32 }
%struct.device = type { i32 }

@mlx5_devlink_params = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_devlink_register(%struct.devlink* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.devlink*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.devlink* %0, %struct.devlink** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %7 = load %struct.devlink*, %struct.devlink** %4, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = call i32 @devlink_register(%struct.devlink* %7, %struct.device* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  store i32 %13, i32* %3, align 4
  br label %32

14:                                               ; preds = %2
  %15 = load %struct.devlink*, %struct.devlink** %4, align 8
  %16 = load i32, i32* @mlx5_devlink_params, align 4
  %17 = load i32, i32* @mlx5_devlink_params, align 4
  %18 = call i32 @ARRAY_SIZE(i32 %17)
  %19 = call i32 @devlink_params_register(%struct.devlink* %15, i32 %16, i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  br label %28

23:                                               ; preds = %14
  %24 = load %struct.devlink*, %struct.devlink** %4, align 8
  %25 = call i32 @mlx5_devlink_set_params_init_values(%struct.devlink* %24)
  %26 = load %struct.devlink*, %struct.devlink** %4, align 8
  %27 = call i32 @devlink_params_publish(%struct.devlink* %26)
  store i32 0, i32* %3, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load %struct.devlink*, %struct.devlink** %4, align 8
  %30 = call i32 @devlink_unregister(%struct.devlink* %29)
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %23, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @devlink_register(%struct.devlink*, %struct.device*) #1

declare dso_local i32 @devlink_params_register(%struct.devlink*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @mlx5_devlink_set_params_init_values(%struct.devlink*) #1

declare dso_local i32 @devlink_params_publish(%struct.devlink*) #1

declare dso_local i32 @devlink_unregister(%struct.devlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
