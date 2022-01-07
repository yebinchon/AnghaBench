; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_cache_get_recalc_cs_ft_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/steering/extr_dr_domain.c_mlx5dr_domain_cache_get_recalc_cs_ft_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5dr_domain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mlx5dr_fw_recalc_cs_ft** }
%struct.mlx5dr_fw_recalc_cs_ft = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5dr_domain_cache_get_recalc_cs_ft_addr(%struct.mlx5dr_domain* %0, i64 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5dr_domain*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx5dr_fw_recalc_cs_ft*, align 8
  store %struct.mlx5dr_domain* %0, %struct.mlx5dr_domain** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %10 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mlx5dr_fw_recalc_cs_ft**, %struct.mlx5dr_fw_recalc_cs_ft*** %11, align 8
  %13 = load i64, i64* %6, align 8
  %14 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %12, i64 %13
  %15 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %14, align 8
  store %struct.mlx5dr_fw_recalc_cs_ft* %15, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %16 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %17 = icmp ne %struct.mlx5dr_fw_recalc_cs_ft* %16, null
  br i1 %17, label %35, label %18

18:                                               ; preds = %3
  %19 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.mlx5dr_fw_recalc_cs_ft* @mlx5dr_fw_create_recalc_cs_ft(%struct.mlx5dr_domain* %19, i64 %20)
  store %struct.mlx5dr_fw_recalc_cs_ft* %21, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %22 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %23 = icmp ne %struct.mlx5dr_fw_recalc_cs_ft* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %40

27:                                               ; preds = %18
  %28 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %29 = load %struct.mlx5dr_domain*, %struct.mlx5dr_domain** %5, align 8
  %30 = getelementptr inbounds %struct.mlx5dr_domain, %struct.mlx5dr_domain* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.mlx5dr_fw_recalc_cs_ft**, %struct.mlx5dr_fw_recalc_cs_ft*** %31, align 8
  %33 = load i64, i64* %6, align 8
  %34 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %32, i64 %33
  store %struct.mlx5dr_fw_recalc_cs_ft* %28, %struct.mlx5dr_fw_recalc_cs_ft** %34, align 8
  br label %35

35:                                               ; preds = %27, %3
  %36 = load %struct.mlx5dr_fw_recalc_cs_ft*, %struct.mlx5dr_fw_recalc_cs_ft** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5dr_fw_recalc_cs_ft, %struct.mlx5dr_fw_recalc_cs_ft* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 %38, i32* %39, align 4
  store i32 0, i32* %4, align 4
  br label %40

40:                                               ; preds = %35, %24
  %41 = load i32, i32* %4, align 4
  ret i32 %41
}

declare dso_local %struct.mlx5dr_fw_recalc_cs_ft* @mlx5dr_fw_create_recalc_cs_ft(%struct.mlx5dr_domain*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
