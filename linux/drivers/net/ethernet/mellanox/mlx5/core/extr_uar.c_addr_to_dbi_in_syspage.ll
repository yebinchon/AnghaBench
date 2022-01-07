; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_addr_to_dbi_in_syspage.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_uar.c_addr_to_dbi_in_syspage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_uars_page = type { i32 }
%struct.mlx5_sq_bfreg = type { i32 }

@log_bf_reg_size = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SHIFT = common dso_local global i32 0, align 4
@MLX5_ADAPTER_PAGE_SIZE = common dso_local global i64 0, align 8
@MLX5_BF_OFFSET = common dso_local global i64 0, align 8
@MLX5_BFREGS_PER_UAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5_uars_page*, %struct.mlx5_sq_bfreg*)* @addr_to_dbi_in_syspage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_to_dbi_in_syspage(%struct.mlx5_core_dev* %0, %struct.mlx5_uars_page* %1, %struct.mlx5_sq_bfreg* %2) #0 {
  %4 = alloca %struct.mlx5_core_dev*, align 8
  %5 = alloca %struct.mlx5_uars_page*, align 8
  %6 = alloca %struct.mlx5_sq_bfreg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %4, align 8
  store %struct.mlx5_uars_page* %1, %struct.mlx5_uars_page** %5, align 8
  store %struct.mlx5_sq_bfreg* %2, %struct.mlx5_sq_bfreg** %6, align 8
  %10 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %4, align 8
  %11 = load i32, i32* @log_bf_reg_size, align 4
  %12 = call i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev* %10, i32 %11)
  %13 = shl i32 1, %12
  store i32 %13, i32* %9, align 4
  %14 = load %struct.mlx5_sq_bfreg*, %struct.mlx5_sq_bfreg** %6, align 8
  %15 = getelementptr inbounds %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.mlx5_uars_page*, %struct.mlx5_uars_page** %5, align 8
  %18 = getelementptr inbounds %struct.mlx5_uars_page, %struct.mlx5_uars_page* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sub i32 %16, %19
  %21 = load i32, i32* @MLX5_ADAPTER_PAGE_SHIFT, align 4
  %22 = lshr i32 %20, %21
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mlx5_sq_bfreg*, %struct.mlx5_sq_bfreg** %6, align 8
  %24 = getelementptr inbounds %struct.mlx5_sq_bfreg, %struct.mlx5_sq_bfreg* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = zext i32 %25 to i64
  %27 = load i64, i64* @MLX5_ADAPTER_PAGE_SIZE, align 8
  %28 = urem i64 %26, %27
  %29 = load i64, i64* @MLX5_BF_OFFSET, align 8
  %30 = sub i64 %28, %29
  %31 = load i32, i32* %9, align 4
  %32 = zext i32 %31 to i64
  %33 = udiv i64 %30, %32
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MLX5_BFREGS_PER_UAR, align 4
  %37 = mul i32 %35, %36
  %38 = load i32, i32* %8, align 4
  %39 = add i32 %37, %38
  ret i32 %39
}

declare dso_local i32 @MLX5_CAP_GEN(%struct.mlx5_core_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
