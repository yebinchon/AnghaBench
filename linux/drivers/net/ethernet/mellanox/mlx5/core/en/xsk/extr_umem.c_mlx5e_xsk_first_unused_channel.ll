; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_first_unused_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_first_unused_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_params = type { i64 }
%struct.mlx5e_xsk = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mlx5e_xsk_first_unused_channel(%struct.mlx5e_params* %0, %struct.mlx5e_xsk* %1) #0 {
  %3 = alloca %struct.mlx5e_params*, align 8
  %4 = alloca %struct.mlx5e_xsk*, align 8
  %5 = alloca i64, align 8
  store %struct.mlx5e_params* %0, %struct.mlx5e_params** %3, align 8
  store %struct.mlx5e_xsk* %1, %struct.mlx5e_xsk** %4, align 8
  %6 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_xsk, %struct.mlx5e_xsk* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_params, %struct.mlx5e_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %10
  %16 = phi i64 [ %13, %10 ], [ 0, %14 ]
  store i64 %16, i64* %5, align 8
  br label %17

17:                                               ; preds = %28, %15
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %17
  %21 = load %struct.mlx5e_params*, %struct.mlx5e_params** %3, align 8
  %22 = load %struct.mlx5e_xsk*, %struct.mlx5e_xsk** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = sub nsw i64 %23, 1
  %25 = call i64 @mlx5e_xsk_get_umem(%struct.mlx5e_params* %21, %struct.mlx5e_xsk* %22, i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %31

28:                                               ; preds = %20
  %29 = load i64, i64* %5, align 8
  %30 = add nsw i64 %29, -1
  store i64 %30, i64* %5, align 8
  br label %17

31:                                               ; preds = %27, %17
  %32 = load i64, i64* %5, align 8
  ret i64 %32
}

declare dso_local i64 @mlx5e_xsk_get_umem(%struct.mlx5e_params*, %struct.mlx5e_xsk*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
