; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_fmr_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_mr.c_mlx4_fmr_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_dev = type { i32 }
%struct.mlx4_fmr = type { %struct.TYPE_4__, %struct.TYPE_3__*, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64, i64 }

@EBUSY = common dso_local global i32 0, align 4
@MLX4_MPT_EN_HW = common dso_local global i64 0, align 8
@MLX4_MPT_STATUS_SW = common dso_local global i32 0, align 4
@MLX4_MPT_STATUS_HW = common dso_local global i32 0, align 4
@MLX4_MPT_DISABLED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_fmr_free(%struct.mlx4_dev* %0, %struct.mlx4_fmr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_dev*, align 8
  %5 = alloca %struct.mlx4_fmr*, align 8
  %6 = alloca i32, align 4
  store %struct.mlx4_dev* %0, %struct.mlx4_dev** %4, align 8
  store %struct.mlx4_fmr* %1, %struct.mlx4_fmr** %5, align 8
  %7 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %8 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %57

14:                                               ; preds = %2
  %15 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %16 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MLX4_MPT_EN_HW, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %43

21:                                               ; preds = %14
  %22 = load i32, i32* @MLX4_MPT_STATUS_SW, align 4
  %23 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %24 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = bitcast %struct.TYPE_3__* %25 to i32*
  store i32 %22, i32* %26, align 4
  %27 = call i32 (...) @wmb()
  %28 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %29 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %33 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i64 0, i64* %35, align 8
  %36 = call i32 (...) @wmb()
  %37 = load i32, i32* @MLX4_MPT_STATUS_HW, align 4
  %38 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %39 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %38, i32 0, i32 1
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = bitcast %struct.TYPE_3__* %40 to i32*
  store i32 %37, i32* %41, align 4
  %42 = call i32 (...) @wmb()
  br label %43

43:                                               ; preds = %21, %14
  %44 = load %struct.mlx4_dev*, %struct.mlx4_dev** %4, align 8
  %45 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %46 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %45, i32 0, i32 0
  %47 = call i32 @mlx4_mr_free(%struct.mlx4_dev* %44, %struct.TYPE_4__* %46)
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %43
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %3, align 4
  br label %57

52:                                               ; preds = %43
  %53 = load i64, i64* @MLX4_MPT_DISABLED, align 8
  %54 = load %struct.mlx4_fmr*, %struct.mlx4_fmr** %5, align 8
  %55 = getelementptr inbounds %struct.mlx4_fmr, %struct.mlx4_fmr* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i64 %53, i64* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %52, %50, %11
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @mlx4_mr_free(%struct.mlx4_dev*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
