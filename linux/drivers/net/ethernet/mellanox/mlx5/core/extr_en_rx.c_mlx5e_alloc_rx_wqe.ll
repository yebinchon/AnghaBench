; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_alloc_rx_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_alloc_rx_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.mlx5e_rx_wqe_cyc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.mlx5e_wqe_frag_info = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx5e_rq*, %struct.mlx5e_rx_wqe_cyc*, i32)* @mlx5e_alloc_rx_wqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx5e_alloc_rx_wqe(%struct.mlx5e_rq* %0, %struct.mlx5e_rx_wqe_cyc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5e_rq*, align 8
  %6 = alloca %struct.mlx5e_rx_wqe_cyc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx5e_wqe_frag_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %5, align 8
  store %struct.mlx5e_rx_wqe_cyc* %1, %struct.mlx5e_rx_wqe_cyc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %12 = load i32, i32* %7, align 4
  %13 = call %struct.mlx5e_wqe_frag_info* @get_frag(%struct.mlx5e_rq* %11, i32 %12)
  store %struct.mlx5e_wqe_frag_info* %13, %struct.mlx5e_wqe_frag_info** %8, align 8
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %53, %3
  %15 = load i32, i32* %10, align 4
  %16 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %17 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %14
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %24 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %25 = call i32 @mlx5e_get_rx_frag(%struct.mlx5e_rq* %23, %struct.mlx5e_wqe_frag_info* %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %59

30:                                               ; preds = %22
  %31 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %32 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %31, i32 0, i32 1
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %37 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %41 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %39, %43
  %45 = call i32 @cpu_to_be64(i64 %44)
  %46 = load %struct.mlx5e_rx_wqe_cyc*, %struct.mlx5e_rx_wqe_cyc** %6, align 8
  %47 = getelementptr inbounds %struct.mlx5e_rx_wqe_cyc, %struct.mlx5e_rx_wqe_cyc* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %30
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %10, align 4
  %56 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %57 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %56, i32 1
  store %struct.mlx5e_wqe_frag_info* %57, %struct.mlx5e_wqe_frag_info** %8, align 8
  br label %14

58:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %71

59:                                               ; preds = %29
  br label %60

60:                                               ; preds = %64, %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = icmp sge i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %60
  %65 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %5, align 8
  %66 = load %struct.mlx5e_wqe_frag_info*, %struct.mlx5e_wqe_frag_info** %8, align 8
  %67 = getelementptr inbounds %struct.mlx5e_wqe_frag_info, %struct.mlx5e_wqe_frag_info* %66, i32 -1
  store %struct.mlx5e_wqe_frag_info* %67, %struct.mlx5e_wqe_frag_info** %8, align 8
  %68 = call i32 @mlx5e_put_rx_frag(%struct.mlx5e_rq* %65, %struct.mlx5e_wqe_frag_info* %67, i32 1)
  br label %60

69:                                               ; preds = %60
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %69, %58
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local %struct.mlx5e_wqe_frag_info* @get_frag(%struct.mlx5e_rq*, i32) #1

declare dso_local i32 @mlx5e_get_rx_frag(%struct.mlx5e_rq*, %struct.mlx5e_wqe_frag_info*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @cpu_to_be64(i64) #1

declare dso_local i32 @mlx5e_put_rx_frag(%struct.mlx5e_rq*, %struct.mlx5e_wqe_frag_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
