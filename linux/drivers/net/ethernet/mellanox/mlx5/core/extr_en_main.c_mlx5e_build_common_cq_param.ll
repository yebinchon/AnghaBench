; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_common_cq_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_build_common_cq_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.mlx5e_cq_param = type { i8* }

@uar_page = common dso_local global i32 0, align 4
@cqe_128_always = common dso_local global i32 0, align 4
@cqe_sz = common dso_local global i32 0, align 4
@CQE_STRIDE_128_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*, %struct.mlx5e_cq_param*)* @mlx5e_build_common_cq_param to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_build_common_cq_param(%struct.mlx5e_priv* %0, %struct.mlx5e_cq_param* %1) #0 {
  %3 = alloca %struct.mlx5e_priv*, align 8
  %4 = alloca %struct.mlx5e_cq_param*, align 8
  %5 = alloca i8*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %3, align 8
  store %struct.mlx5e_cq_param* %1, %struct.mlx5e_cq_param** %4, align 8
  %6 = load %struct.mlx5e_cq_param*, %struct.mlx5e_cq_param** %4, align 8
  %7 = getelementptr inbounds %struct.mlx5e_cq_param, %struct.mlx5e_cq_param* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  store i8* %8, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @uar_page, align 4
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @MLX5_SET(i8* %9, i8* %10, i32 %11, i32 %19)
  %21 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %3, align 8
  %22 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = load i32, i32* @cqe_128_always, align 4
  %25 = call i64 @MLX5_CAP_GEN(%struct.TYPE_6__* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = call i32 (...) @cache_line_size()
  %29 = icmp sge i32 %28, 128
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = load i8*, i8** %5, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* @cqe_sz, align 4
  %34 = load i32, i32* @CQE_STRIDE_128_PAD, align 4
  %35 = call i32 @MLX5_SET(i8* %31, i8* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %27, %2
  ret void
}

declare dso_local i32 @MLX5_SET(i8*, i8*, i32, i32) #1

declare dso_local i64 @MLX5_CAP_GEN(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @cache_line_size(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
