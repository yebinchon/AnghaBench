; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i64, %struct.TYPE_4__, %struct.mlx5e_cq_decomp }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_cq_decomp = type { i64, i64, %struct.mlx5_cqe64, %struct.mlx5_mini_cqe8* }
%struct.mlx5_cqe64 = type { i32, i32, i32, i32 }
%struct.mlx5_mini_cqe8 = type { i32, i32 }
%struct.mlx5_cqwq = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i32)* @mlx5e_decompress_cqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_decompress_cqe(%struct.mlx5e_rq* %0, %struct.mlx5_cqwq* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5_cqwq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_cq_decomp*, align 8
  %8 = alloca %struct.mlx5_mini_cqe8*, align 8
  %9 = alloca %struct.mlx5_cqe64*, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5_cqwq* %1, %struct.mlx5_cqwq** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %11 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %10, i32 0, i32 2
  store %struct.mlx5e_cq_decomp* %11, %struct.mlx5e_cq_decomp** %7, align 8
  %12 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %13 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %12, i32 0, i32 3
  %14 = load %struct.mlx5_mini_cqe8*, %struct.mlx5_mini_cqe8** %13, align 8
  %15 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %16 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.mlx5_mini_cqe8, %struct.mlx5_mini_cqe8* %14, i64 %17
  store %struct.mlx5_mini_cqe8* %18, %struct.mlx5_mini_cqe8** %8, align 8
  %19 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %20 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %19, i32 0, i32 2
  store %struct.mlx5_cqe64* %20, %struct.mlx5_cqe64** %9, align 8
  %21 = load %struct.mlx5_mini_cqe8*, %struct.mlx5_mini_cqe8** %8, align 8
  %22 = getelementptr inbounds %struct.mlx5_mini_cqe8, %struct.mlx5_mini_cqe8* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %25 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %24, i32 0, i32 3
  store i32 %23, i32* %25, align 4
  %26 = load %struct.mlx5_mini_cqe8*, %struct.mlx5_mini_cqe8** %8, align 8
  %27 = getelementptr inbounds %struct.mlx5_mini_cqe8, %struct.mlx5_mini_cqe8* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %30 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %32 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 240
  store i32 %34, i32* %32, align 4
  %35 = load i32, i32* %6, align 4
  %36 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %37 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %35, %39
  %41 = and i32 1, %40
  %42 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %43 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %47 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @cpu_to_be16(i64 %48)
  %50 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %51 = getelementptr inbounds %struct.mlx5_cqe64, %struct.mlx5_cqe64* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %53 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MLX5_WQ_TYPE_LINKED_LIST_STRIDING_RQ, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %64

57:                                               ; preds = %3
  %58 = load %struct.mlx5_cqe64*, %struct.mlx5_cqe64** %9, align 8
  %59 = call i64 @mpwrq_get_cqe_consumed_strides(%struct.mlx5_cqe64* %58)
  %60 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %61 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  br label %75

64:                                               ; preds = %3
  %65 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %66 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %69 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  %72 = call i64 @mlx5_wq_cyc_ctr2ix(i32* %67, i64 %71)
  %73 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %74 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %64, %57
  ret void
}

declare dso_local i32 @cpu_to_be16(i64) #1

declare dso_local i64 @mpwrq_get_cqe_consumed_strides(%struct.mlx5_cqe64*) #1

declare dso_local i64 @mlx5_wq_cyc_ctr2ix(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
