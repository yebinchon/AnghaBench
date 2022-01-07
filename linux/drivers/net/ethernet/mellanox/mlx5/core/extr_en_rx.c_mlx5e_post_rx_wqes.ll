; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_wqes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_post_rx_wqes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_4__*, %struct.TYPE_5__, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, %struct.mlx5_wq_cyc }
%struct.TYPE_6__ = type { i64 }
%struct.mlx5_wq_cyc = type { i32 }

@MLX5E_RQ_STATE_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx5e_post_rx_wqes(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx5e_rq*, align 8
  %4 = alloca %struct.mlx5_wq_cyc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %3, align 8
  %8 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %9 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 1
  store %struct.mlx5_wq_cyc* %10, %struct.mlx5_wq_cyc** %4, align 8
  %11 = load i32, i32* @MLX5E_RQ_STATE_ENABLED, align 4
  %12 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %12, i32 0, i32 2
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %68

21:                                               ; preds = %1
  %22 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %5, align 8
  %27 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %28 = call i64 @mlx5_wq_cyc_missing(%struct.mlx5_wq_cyc* %27)
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %68

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %54, %32
  %34 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %35 = call i32 @mlx5_wq_cyc_get_head(%struct.mlx5_wq_cyc* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @mlx5e_alloc_rx_wqes(%struct.mlx5e_rq* %36, i32 %37, i64 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %33
  %44 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %3, align 8
  %45 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %59

50:                                               ; preds = %33
  %51 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %52 = load i64, i64* %5, align 8
  %53 = call i32 @mlx5_wq_cyc_push_n(%struct.mlx5_wq_cyc* %51, i64 %52)
  br label %54

54:                                               ; preds = %50
  %55 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %56 = call i64 @mlx5_wq_cyc_missing(%struct.mlx5_wq_cyc* %55)
  %57 = load i64, i64* %5, align 8
  %58 = icmp sge i64 %56, %57
  br i1 %58, label %33, label %59

59:                                               ; preds = %54, %43
  %60 = call i32 (...) @dma_wmb()
  %61 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %4, align 8
  %62 = call i32 @mlx5_wq_cyc_update_db_record(%struct.mlx5_wq_cyc* %61)
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %59, %31, %20
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @mlx5_wq_cyc_missing(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5_wq_cyc_get_head(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5e_alloc_rx_wqes(%struct.mlx5e_rq*, i32, i64) #1

declare dso_local i32 @mlx5_wq_cyc_push_n(%struct.mlx5_wq_cyc*, i64) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @mlx5_wq_cyc_update_db_record(%struct.mlx5_wq_cyc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
