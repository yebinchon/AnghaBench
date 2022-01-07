; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_free_rx_descs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_free_rx_descs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i64, i32 (%struct.mlx5e_rq*, i32)*, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.mlx5_wq_cyc }
%struct.mlx5_wq_cyc = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.mlx5_wq_ll }
%struct.mlx5_wq_ll = type { i32*, i32 }
%struct.mlx5e_rx_wqe_ll = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5e_free_rx_descs(%struct.mlx5e_rq* %0) #0 {
  %2 = alloca %struct.mlx5e_rq*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_wq_ll*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_rx_wqe_ll*, align 8
  %9 = alloca %struct.mlx5_wq_cyc*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %2, align 8
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %71

15:                                               ; preds = %1
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  store %struct.mlx5_wq_ll* %18, %struct.mlx5_wq_ll** %5, align 8
  %19 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %20 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  store i32 %21, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %22

22:                                               ; preds = %39, %15
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %25 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %23, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %22
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %30, i32 0, i32 1
  %32 = load i32 (%struct.mlx5e_rq*, i32)*, i32 (%struct.mlx5e_rq*, i32)** %31, align 8
  %33 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 %32(%struct.mlx5e_rq* %33, i32 %34)
  %36 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll* %36, i32 %37)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %29
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %7, align 4
  br label %22

42:                                               ; preds = %22
  br label %43

43:                                               ; preds = %48, %42
  %44 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %45 = call i32 @mlx5_wq_ll_is_empty(%struct.mlx5_wq_ll* %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %70

48:                                               ; preds = %43
  %49 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %50 = getelementptr inbounds %struct.mlx5_wq_ll, %struct.mlx5_wq_ll* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @be16_to_cpu(i32 %53)
  store i32 %54, i32* %4, align 4
  %55 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.mlx5e_rx_wqe_ll* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll* %55, i32 %56)
  store %struct.mlx5e_rx_wqe_ll* %57, %struct.mlx5e_rx_wqe_ll** %8, align 8
  %58 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %59 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %58, i32 0, i32 1
  %60 = load i32 (%struct.mlx5e_rq*, i32)*, i32 (%struct.mlx5e_rq*, i32)** %59, align 8
  %61 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %62 = load i32, i32* %4, align 4
  %63 = call i32 %60(%struct.mlx5e_rq* %61, i32 %62)
  %64 = load %struct.mlx5_wq_ll*, %struct.mlx5_wq_ll** %5, align 8
  %65 = load i32, i32* %3, align 4
  %66 = load %struct.mlx5e_rx_wqe_ll*, %struct.mlx5e_rx_wqe_ll** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5e_rx_wqe_ll, %struct.mlx5e_rx_wqe_ll* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = call i32 @mlx5_wq_ll_pop(%struct.mlx5_wq_ll* %64, i32 %65, i32* %68)
  br label %43

70:                                               ; preds = %43
  br label %92

71:                                               ; preds = %1
  %72 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %73 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store %struct.mlx5_wq_cyc* %74, %struct.mlx5_wq_cyc** %9, align 8
  br label %75

75:                                               ; preds = %80, %71
  %76 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %9, align 8
  %77 = call i32 @mlx5_wq_cyc_is_empty(%struct.mlx5_wq_cyc* %76)
  %78 = icmp ne i32 %77, 0
  %79 = xor i1 %78, true
  br i1 %79, label %80, label %91

80:                                               ; preds = %75
  %81 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %9, align 8
  %82 = call i32 @mlx5_wq_cyc_get_tail(%struct.mlx5_wq_cyc* %81)
  store i32 %82, i32* %4, align 4
  %83 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %84 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %83, i32 0, i32 1
  %85 = load i32 (%struct.mlx5e_rq*, i32)*, i32 (%struct.mlx5e_rq*, i32)** %84, align 8
  %86 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %2, align 8
  %87 = load i32, i32* %4, align 4
  %88 = call i32 %85(%struct.mlx5e_rq* %86, i32 %87)
  %89 = load %struct.mlx5_wq_cyc*, %struct.mlx5_wq_cyc** %9, align 8
  %90 = call i32 @mlx5_wq_cyc_pop(%struct.mlx5_wq_cyc* %89)
  br label %75

91:                                               ; preds = %75
  br label %92

92:                                               ; preds = %91, %70
  ret void
}

declare dso_local i32 @mlx5_wq_ll_get_wqe_next_ix(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @mlx5_wq_ll_is_empty(%struct.mlx5_wq_ll*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local %struct.mlx5e_rx_wqe_ll* @mlx5_wq_ll_get_wqe(%struct.mlx5_wq_ll*, i32) #1

declare dso_local i32 @mlx5_wq_ll_pop(%struct.mlx5_wq_ll*, i32, i32*) #1

declare dso_local i32 @mlx5_wq_cyc_is_empty(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5_wq_cyc_get_tail(%struct.mlx5_wq_cyc*) #1

declare dso_local i32 @mlx5_wq_cyc_pop(%struct.mlx5_wq_cyc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
