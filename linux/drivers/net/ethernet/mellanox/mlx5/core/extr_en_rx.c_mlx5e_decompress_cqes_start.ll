; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqes_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rx.c_mlx5e_decompress_cqes_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rq = type { i32 (%struct.mlx5e_rq*, i32*)*, %struct.mlx5e_cq_decomp }
%struct.mlx5e_cq_decomp = type { i32, i32 }
%struct.mlx5_cqwq = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i32)* @mlx5e_decompress_cqes_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mlx5e_decompress_cqes_start(%struct.mlx5e_rq* %0, %struct.mlx5_cqwq* %1, i32 %2) #0 {
  %4 = alloca %struct.mlx5e_rq*, align 8
  %5 = alloca %struct.mlx5_cqwq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mlx5e_cq_decomp*, align 8
  %8 = alloca i64, align 8
  store %struct.mlx5e_rq* %0, %struct.mlx5e_rq** %4, align 8
  store %struct.mlx5_cqwq* %1, %struct.mlx5_cqwq** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %10 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %9, i32 0, i32 1
  store %struct.mlx5e_cq_decomp* %10, %struct.mlx5e_cq_decomp** %7, align 8
  %11 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %12 = getelementptr inbounds %struct.mlx5_cqwq, %struct.mlx5_cqwq* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %15 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @mlx5e_read_title_slot(%struct.mlx5e_rq* %14, %struct.mlx5_cqwq* %15, i64 %16)
  %18 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %19 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %20 = load i64, i64* %8, align 8
  %21 = add nsw i64 %20, 1
  %22 = call i32 @mlx5e_read_mini_arr_slot(%struct.mlx5_cqwq* %18, %struct.mlx5e_cq_decomp* %19, i64 %21)
  %23 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %24 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @mlx5e_decompress_cqe(%struct.mlx5e_rq* %23, %struct.mlx5_cqwq* %24, i64 %25)
  %27 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %28 = getelementptr inbounds %struct.mlx5e_rq, %struct.mlx5e_rq* %27, i32 0, i32 0
  %29 = load i32 (%struct.mlx5e_rq*, i32*)*, i32 (%struct.mlx5e_rq*, i32*)** %28, align 8
  %30 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %31 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %32 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %31, i32 0, i32 1
  %33 = call i32 %29(%struct.mlx5e_rq* %30, i32* %32)
  %34 = load %struct.mlx5e_cq_decomp*, %struct.mlx5e_cq_decomp** %7, align 8
  %35 = getelementptr inbounds %struct.mlx5e_cq_decomp, %struct.mlx5e_cq_decomp* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 4
  %38 = load %struct.mlx5e_rq*, %struct.mlx5e_rq** %4, align 8
  %39 = load %struct.mlx5_cqwq*, %struct.mlx5_cqwq** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @mlx5e_decompress_cqes_cont(%struct.mlx5e_rq* %38, %struct.mlx5_cqwq* %39, i32 1, i32 %40)
  %42 = sub nsw i64 %41, 1
  ret i64 %42
}

declare dso_local i32 @mlx5e_read_title_slot(%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i64) #1

declare dso_local i32 @mlx5e_read_mini_arr_slot(%struct.mlx5_cqwq*, %struct.mlx5e_cq_decomp*, i64) #1

declare dso_local i32 @mlx5e_decompress_cqe(%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i64) #1

declare dso_local i64 @mlx5e_decompress_cqes_cont(%struct.mlx5e_rq*, %struct.mlx5_cqwq*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
