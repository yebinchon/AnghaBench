; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_icosq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_alloc_icosq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_wq_cyc = type { i32* }
%struct.mlx5e_channel = type { i32, %struct.mlx5_core_dev* }
%struct.mlx5_core_dev = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_sq_param = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_icosq = type { i32, i32, i32, %struct.mlx5e_channel*, %struct.mlx5_wq_cyc }

@sqc = common dso_local global i32 0, align 4
@wq = common dso_local global %struct.mlx5_wq_cyc* null, align 8
@MLX5_SND_DBR = common dso_local global i64 0, align 8
@mlx5e_icosq_err_cqe_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_channel*, %struct.mlx5e_sq_param*, %struct.mlx5e_icosq*)* @mlx5e_alloc_icosq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_icosq(%struct.mlx5e_channel* %0, %struct.mlx5e_sq_param* %1, %struct.mlx5e_icosq* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_channel*, align 8
  %6 = alloca %struct.mlx5e_sq_param*, align 8
  %7 = alloca %struct.mlx5e_icosq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.mlx5_core_dev*, align 8
  %10 = alloca %struct.mlx5_wq_cyc*, align 8
  %11 = alloca i32, align 4
  store %struct.mlx5e_channel* %0, %struct.mlx5e_channel** %5, align 8
  store %struct.mlx5e_sq_param* %1, %struct.mlx5e_sq_param** %6, align 8
  store %struct.mlx5e_icosq* %2, %struct.mlx5e_icosq** %7, align 8
  %12 = load i32, i32* @sqc, align 4
  %13 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %14 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** @wq, align 8
  %17 = ptrtoint %struct.mlx5_wq_cyc* %16 to i32
  %18 = call i8* @MLX5_ADDR_OF(i32 %12, i32 %15, i32 %17)
  store i8* %18, i8** %8, align 8
  %19 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %19, i32 0, i32 1
  %21 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %20, align 8
  store %struct.mlx5_core_dev* %21, %struct.mlx5_core_dev** %9, align 8
  %22 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %23 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %22, i32 0, i32 4
  store %struct.mlx5_wq_cyc* %23, %struct.mlx5_wq_cyc** %10, align 8
  %24 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %25 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %26 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %25, i32 0, i32 3
  store %struct.mlx5e_channel* %24, %struct.mlx5e_channel** %26, align 8
  %27 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %28 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %33 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 8
  %34 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %35 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @cpu_to_node(i32 %36)
  %38 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %39 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 4
  %41 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %9, align 8
  %42 = load %struct.mlx5e_sq_param*, %struct.mlx5e_sq_param** %6, align 8
  %43 = getelementptr inbounds %struct.mlx5e_sq_param, %struct.mlx5e_sq_param* %42, i32 0, i32 0
  %44 = load i8*, i8** %8, align 8
  %45 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %46 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %46, i32 0, i32 0
  %48 = call i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev* %41, %struct.TYPE_6__* %43, i8* %44, %struct.mlx5_wq_cyc* %45, i32* %47)
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %11, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %3
  %52 = load i32, i32* %11, align 4
  store i32 %52, i32* %4, align 4
  br label %80

53:                                               ; preds = %3
  %54 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %55 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i64, i64* @MLX5_SND_DBR, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %10, align 8
  %60 = getelementptr inbounds %struct.mlx5_wq_cyc, %struct.mlx5_wq_cyc* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  %61 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %62 = load %struct.mlx5e_channel*, %struct.mlx5e_channel** %5, align 8
  %63 = getelementptr inbounds %struct.mlx5e_channel, %struct.mlx5e_channel* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @cpu_to_node(i32 %64)
  %66 = call i32 @mlx5e_alloc_icosq_db(%struct.mlx5e_icosq* %61, i32 %65)
  store i32 %66, i32* %11, align 4
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %53
  br label %75

70:                                               ; preds = %53
  %71 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %72 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %71, i32 0, i32 1
  %73 = load i32, i32* @mlx5e_icosq_err_cqe_work, align 4
  %74 = call i32 @INIT_WORK(i32* %72, i32 %73)
  store i32 0, i32* %4, align 4
  br label %80

75:                                               ; preds = %69
  %76 = load %struct.mlx5e_icosq*, %struct.mlx5e_icosq** %7, align 8
  %77 = getelementptr inbounds %struct.mlx5e_icosq, %struct.mlx5e_icosq* %76, i32 0, i32 0
  %78 = call i32 @mlx5_wq_destroy(i32* %77)
  %79 = load i32, i32* %11, align 4
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %75, %70, %51
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i8* @MLX5_ADDR_OF(i32, i32, i32) #1

declare dso_local i32 @cpu_to_node(i32) #1

declare dso_local i32 @mlx5_wq_cyc_create(%struct.mlx5_core_dev*, %struct.TYPE_6__*, i8*, %struct.mlx5_wq_cyc*, i32*) #1

declare dso_local i32 @mlx5e_alloc_icosq_db(%struct.mlx5e_icosq*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mlx5_wq_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
