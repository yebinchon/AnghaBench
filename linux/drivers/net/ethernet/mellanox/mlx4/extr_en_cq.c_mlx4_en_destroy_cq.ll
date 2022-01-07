; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_destroy_cq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_cq.c_mlx4_en_destroy_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.mlx4_en_dev*, i32 }
%struct.mlx4_en_dev = type { i32 }
%struct.mlx4_en_cq = type { i64, i32*, i64, i64, i32 }

@RX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_destroy_cq(%struct.mlx4_en_priv* %0, %struct.mlx4_en_cq** %1) #0 {
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_cq**, align 8
  %5 = alloca %struct.mlx4_en_dev*, align 8
  %6 = alloca %struct.mlx4_en_cq*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  store %struct.mlx4_en_cq** %1, %struct.mlx4_en_cq*** %4, align 8
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 0
  %9 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %8, align 8
  store %struct.mlx4_en_dev* %9, %struct.mlx4_en_dev** %5, align 8
  %10 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %4, align 8
  %11 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %10, align 8
  store %struct.mlx4_en_cq* %11, %struct.mlx4_en_cq** %6, align 8
  %12 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %15, i32 0, i32 4
  %17 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %18 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @mlx4_free_hwq_res(i32 %14, i32* %16, i64 %19)
  %21 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %5, align 8
  %22 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %27, i32 0, i32 3
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @mlx4_is_eq_vector_valid(i32 %23, i32 %26, i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %34 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @RX, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %32
  %39 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %40 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %39, i32 0, i32 0
  %41 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %40, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @mlx4_release_eq(i32 %43, i64 %46)
  br label %48

48:                                               ; preds = %38, %32, %2
  %49 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %51, i32 0, i32 2
  store i64 0, i64* %52, align 8
  %53 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %54 = getelementptr inbounds %struct.mlx4_en_cq, %struct.mlx4_en_cq* %53, i32 0, i32 1
  store i32* null, i32** %54, align 8
  %55 = load %struct.mlx4_en_cq*, %struct.mlx4_en_cq** %6, align 8
  %56 = call i32 @kfree(%struct.mlx4_en_cq* %55)
  %57 = load %struct.mlx4_en_cq**, %struct.mlx4_en_cq*** %4, align 8
  store %struct.mlx4_en_cq* null, %struct.mlx4_en_cq** %57, align 8
  ret void
}

declare dso_local i32 @mlx4_free_hwq_res(i32, i32*, i64) #1

declare dso_local i64 @mlx4_is_eq_vector_valid(i32, i32, i64) #1

declare dso_local i32 @mlx4_release_eq(i32, i64) #1

declare dso_local i32 @kfree(%struct.mlx4_en_cq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
