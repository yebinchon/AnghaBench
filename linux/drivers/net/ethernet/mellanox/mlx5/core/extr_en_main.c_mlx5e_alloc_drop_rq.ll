; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_drop_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_drop_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5e_rq = type { %struct.mlx5_core_dev*, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.mlx5e_rq_param = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { i32, i32 }

@wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5_core_dev*, %struct.mlx5e_rq*, %struct.mlx5e_rq_param*)* @mlx5e_alloc_drop_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_drop_rq(%struct.mlx5_core_dev* %0, %struct.mlx5e_rq* %1, %struct.mlx5e_rq_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_core_dev*, align 8
  %6 = alloca %struct.mlx5e_rq*, align 8
  %7 = alloca %struct.mlx5e_rq_param*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %5, align 8
  store %struct.mlx5e_rq* %1, %struct.mlx5e_rq** %6, align 8
  store %struct.mlx5e_rq_param* %2, %struct.mlx5e_rq_param** %7, align 8
  %11 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %7, align 8
  %12 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  store i8* %13, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @wq, align 4
  %17 = call i8* @MLX5_ADDR_OF(i8* %14, i8* %15, i32 %16)
  store i8* %17, i8** %9, align 8
  %18 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %7, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %26 = load %struct.mlx5e_rq_param*, %struct.mlx5e_rq_param** %7, align 8
  %27 = getelementptr inbounds %struct.mlx5e_rq_param, %struct.mlx5e_rq_param* %26, i32 0, i32 0
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %30 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %33 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %32, i32 0, i32 2
  %34 = call i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %25, %struct.TYPE_4__* %27, i8* %28, i32* %31, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %3
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %46

39:                                               ; preds = %3
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %40, i32 0, i32 1
  %42 = call i32 @xdp_rxq_info_unused(i32* %41)
  %43 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %5, align 8
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %6, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 0
  store %struct.mlx5_core_dev* %43, %struct.mlx5_core_dev** %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %39, %37
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i8* @MLX5_ADDR_OF(i8*, i8*, i32) #1

declare dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev*, %struct.TYPE_4__*, i8*, i32*, i32*) #1

declare dso_local i32 @xdp_rxq_info_unused(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
