; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_tun_entropy_refcount_inc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/lib/extr_port_tun.c_mlx5_tun_entropy_refcount_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_tun_entropy = type { i64, i32, i32, i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@MLX5_REFORMAT_TYPE_L2_TO_VXLAN = common dso_local global i32 0, align 4
@MLX5_REFORMAT_TYPE_L2_TO_NVGRE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5_tun_entropy_refcount_inc(%struct.mlx5_tun_entropy* %0, i32 %1) #0 {
  %3 = alloca %struct.mlx5_tun_entropy*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mlx5_tun_entropy* %0, %struct.mlx5_tun_entropy** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @EOPNOTSUPP, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_VXLAN, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %15, i32 0, i32 3
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %21 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  store i32 0, i32* %5, align 4
  br label %48

24:                                               ; preds = %14, %2
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @MLX5_REFORMAT_TYPE_L2_TO_NVGRE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %47

28:                                               ; preds = %24
  %29 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %30 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @mlx5_set_entropy(%struct.mlx5_tun_entropy* %34, i32 %35, i32 0)
  store i32 %36, i32* %5, align 4
  br label %38

37:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %33
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %43 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = add nsw i64 %44, 1
  store i64 %45, i64* %43, align 8
  br label %46

46:                                               ; preds = %41, %38
  br label %47

47:                                               ; preds = %46, %24
  br label %48

48:                                               ; preds = %47, %19
  %49 = load %struct.mlx5_tun_entropy*, %struct.mlx5_tun_entropy** %3, align 8
  %50 = getelementptr inbounds %struct.mlx5_tun_entropy, %struct.mlx5_tun_entropy* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mlx5_set_entropy(%struct.mlx5_tun_entropy*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
