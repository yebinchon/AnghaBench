; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_open_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_channel = type { %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_cq_param = type { i32 }
%struct.mlx5e_cq = type { i32 }
%struct.dim_cq_moder = type { i32, i32 }

@cq_moderation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_open_cq(%struct.mlx5e_channel* %0, i64 %1, %struct.mlx5e_cq_param* %2, %struct.mlx5e_cq* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dim_cq_moder, align 4
  %7 = alloca %struct.mlx5e_channel*, align 8
  %8 = alloca %struct.mlx5e_cq_param*, align 8
  %9 = alloca %struct.mlx5e_cq*, align 8
  %10 = alloca %struct.mlx5_core_dev*, align 8
  %11 = alloca i32, align 4
  %12 = bitcast %struct.dim_cq_moder* %6 to i64*
  store i64 %1, i64* %12, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %7, align 8
  store %struct.mlx5e_cq_param* %2, %struct.mlx5e_cq_param** %8, align 8
  store %struct.mlx5e_cq* %3, %struct.mlx5e_cq** %9, align 8
  %13 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %14 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %13, i32 0, i32 0
  %15 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %14, align 8
  store %struct.mlx5_core_dev* %15, %struct.mlx5_core_dev** %10, align 8
  %16 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %17 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %18 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %19 = call i32 @mlx5e_alloc_cq(%struct.mlx5e_channel* %16, %struct.mlx5e_cq_param* %17, %struct.mlx5e_cq* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %50

24:                                               ; preds = %4
  %25 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %26 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %8, align 8
  %27 = call i32 @mlx5e_create_cq(%struct.mlx5e_cq* %25, %struct.mlx5e_cq_param* %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %46

31:                                               ; preds = %24
  %32 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %33 = load i32, i32* @cq_moderation, align 4
  %34 = call i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %31
  %37 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %10, align 8
  %38 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %39 = getelementptr inbounds %struct.mlx5e_cq, %struct.mlx5e_cq* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %6, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.dim_cq_moder, %struct.dim_cq_moder* %6, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev* %37, i32* %39, i32 %41, i32 %43)
  br label %45

45:                                               ; preds = %36, %31
  store i32 0, i32* %5, align 4
  br label %50

46:                                               ; preds = %30
  %47 = load %struct.mlx5e_cq*, %struct.mlx5e_cq** %9, align 8
  %48 = call i32 @mlx5e_free_cq(%struct.mlx5e_cq* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %45, %22
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @mlx5e_alloc_cq(%struct.mlx5e_channel*, %struct.mlx5e_cq_param*, %struct.mlx5e_cq*) #1

declare dso_local i32 @mlx5e_create_cq(%struct.mlx5e_cq*, %struct.mlx5e_cq_param*) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

declare dso_local i32 @mlx5_core_modify_cq_moderation(%struct.mlx5_core_dev*, i32*, i32, i32) #1

declare dso_local i32 @mlx5e_free_cq(%struct.mlx5e_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
