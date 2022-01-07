; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_release_sa_ctx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/fpga/extr_ipsec.c_mlx5_fpga_ipsec_release_sa_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_fpga_ipsec_sa_ctx = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_5__ = type { %struct.mlx5_fpga_device* }
%struct.mlx5_fpga_device = type { %struct.mlx5_fpga_ipsec* }
%struct.mlx5_fpga_ipsec = type { i32, i32 }

@MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2 = common dso_local global i32 0, align 4
@MLX5_FPGA_IPSEC_CMD_OP_DEL_SA = common dso_local global i32 0, align 4
@rhash_sa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5_fpga_ipsec_sa_ctx*)* @mlx5_fpga_ipsec_release_sa_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5_fpga_ipsec_release_sa_ctx(%struct.mlx5_fpga_ipsec_sa_ctx* %0) #0 {
  %2 = alloca %struct.mlx5_fpga_ipsec_sa_ctx*, align 8
  %3 = alloca %struct.mlx5_fpga_device*, align 8
  %4 = alloca %struct.mlx5_fpga_ipsec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mlx5_fpga_ipsec_sa_ctx* %0, %struct.mlx5_fpga_ipsec_sa_ctx** %2, align 8
  %7 = load %struct.mlx5_fpga_ipsec_sa_ctx*, %struct.mlx5_fpga_ipsec_sa_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, %struct.mlx5_fpga_ipsec_sa_ctx* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %10, align 8
  store %struct.mlx5_fpga_device* %11, %struct.mlx5_fpga_device** %3, align 8
  %12 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %12, i32 0, i32 0
  %14 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %13, align 8
  store %struct.mlx5_fpga_ipsec* %14, %struct.mlx5_fpga_ipsec** %4, align 8
  %15 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %16 = getelementptr inbounds %struct.mlx5_fpga_device, %struct.mlx5_fpga_device* %15, i32 0, i32 0
  %17 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %16, align 8
  %18 = call i64 @is_v2_sadb_supported(%struct.mlx5_fpga_ipsec* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* @MLX5_FPGA_IPSEC_CMD_OP_DEL_SA_V2, align 4
  br label %24

22:                                               ; preds = %1
  %23 = load i32, i32* @MLX5_FPGA_IPSEC_CMD_OP_DEL_SA, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %5, align 4
  %26 = load %struct.mlx5_fpga_device*, %struct.mlx5_fpga_device** %3, align 8
  %27 = load %struct.mlx5_fpga_ipsec_sa_ctx*, %struct.mlx5_fpga_ipsec_sa_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, %struct.mlx5_fpga_ipsec_sa_ctx* %27, i32 0, i32 1
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mlx5_fpga_ipsec_update_hw_sa(%struct.mlx5_fpga_device* %26, %struct.TYPE_6__* %28, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load %struct.mlx5_fpga_ipsec_sa_ctx*, %struct.mlx5_fpga_ipsec_sa_ctx** %2, align 8
  %32 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, %struct.mlx5_fpga_ipsec_sa_ctx* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %24
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @WARN_ON(i32 %38)
  br label %54

40:                                               ; preds = %24
  %41 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %4, align 8
  %42 = getelementptr inbounds %struct.mlx5_fpga_ipsec, %struct.mlx5_fpga_ipsec* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %4, align 8
  %45 = getelementptr inbounds %struct.mlx5_fpga_ipsec, %struct.mlx5_fpga_ipsec* %44, i32 0, i32 1
  %46 = load %struct.mlx5_fpga_ipsec_sa_ctx*, %struct.mlx5_fpga_ipsec_sa_ctx** %2, align 8
  %47 = getelementptr inbounds %struct.mlx5_fpga_ipsec_sa_ctx, %struct.mlx5_fpga_ipsec_sa_ctx* %46, i32 0, i32 0
  %48 = load i32, i32* @rhash_sa, align 4
  %49 = call i32 @rhashtable_remove_fast(i32* %45, i32* %47, i32 %48)
  %50 = call i32 @WARN_ON(i32 %49)
  %51 = load %struct.mlx5_fpga_ipsec*, %struct.mlx5_fpga_ipsec** %4, align 8
  %52 = getelementptr inbounds %struct.mlx5_fpga_ipsec, %struct.mlx5_fpga_ipsec* %51, i32 0, i32 0
  %53 = call i32 @mutex_unlock(i32* %52)
  br label %54

54:                                               ; preds = %40, %37
  ret void
}

declare dso_local i64 @is_v2_sadb_supported(%struct.mlx5_fpga_ipsec*) #1

declare dso_local i32 @mlx5_fpga_ipsec_update_hw_sa(%struct.mlx5_fpga_device*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
