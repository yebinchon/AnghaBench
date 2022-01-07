; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_disable_locked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/en/xsk/extr_umem.c_mlx5e_xsk_disable_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.mlx5e_channel**, %struct.TYPE_4__ }
%struct.mlx5e_channel = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xdp_umem = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@MLX5E_STATE_OPENED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_priv*, i64)* @mlx5e_xsk_disable_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_xsk_disable_locked(%struct.mlx5e_priv* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx5e_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.xdp_umem*, align 8
  %7 = alloca %struct.mlx5e_channel*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %11 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %11, i32 0, i32 0
  %13 = load i64, i64* %5, align 8
  %14 = call %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_4__* %10, i32* %12, i64 %13)
  store %struct.xdp_umem* %14, %struct.xdp_umem** %6, align 8
  %15 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %16 = icmp ne %struct.xdp_umem* %15, null
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %62

24:                                               ; preds = %2
  %25 = load i32, i32* @MLX5E_STATE_OPENED, align 4
  %26 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %26, i32 0, i32 2
  %28 = call i32 @test_bit(i32 %25, i32* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %54

31:                                               ; preds = %24
  %32 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %33 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %31
  br label %54

39:                                               ; preds = %31
  %40 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %41 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.mlx5e_channel**, %struct.mlx5e_channel*** %42, align 8
  %44 = load i64, i64* %5, align 8
  %45 = getelementptr inbounds %struct.mlx5e_channel*, %struct.mlx5e_channel** %43, i64 %44
  %46 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %45, align 8
  store %struct.mlx5e_channel* %46, %struct.mlx5e_channel** %7, align 8
  %47 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @mlx5e_xsk_redirect_rqt_to_drop(%struct.mlx5e_priv* %47, i64 %48)
  %50 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %51 = call i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel* %50)
  %52 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %7, align 8
  %53 = call i32 @mlx5e_close_xsk(%struct.mlx5e_channel* %52)
  br label %54

54:                                               ; preds = %39, %38, %30
  %55 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %56 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %55, i32 0, i32 0
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @mlx5e_xsk_remove_umem(i32* %56, i64 %57)
  %59 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %60 = load %struct.xdp_umem*, %struct.xdp_umem** %6, align 8
  %61 = call i32 @mlx5e_xsk_unmap_umem(%struct.mlx5e_priv* %59, %struct.xdp_umem* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %54, %21
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.xdp_umem* @mlx5e_xsk_get_umem(%struct.TYPE_4__*, i32*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @mlx5e_xsk_redirect_rqt_to_drop(%struct.mlx5e_priv*, i64) #1

declare dso_local i32 @mlx5e_deactivate_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_close_xsk(%struct.mlx5e_channel*) #1

declare dso_local i32 @mlx5e_xsk_remove_umem(i32*, i64) #1

declare dso_local i32 @mlx5e_xsk_unmap_umem(%struct.mlx5e_priv*, %struct.xdp_umem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
