; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_speed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_selftest.c_mlx4_en_test_speed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_1000 = common dso_local global i64 0, align 8
@SPEED_10000 = common dso_local global i64 0, align 8
@SPEED_20000 = common dso_local global i64 0, align 8
@SPEED_40000 = common dso_local global i64 0, align 8
@SPEED_56000 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_test_speed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_test_speed(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %4 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %5 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %8 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @mlx4_en_QUERY_PORT(i32 %6, i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %17 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SPEED_100, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %15
  %23 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %24 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @SPEED_1000, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %63

29:                                               ; preds = %22
  %30 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %31 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SPEED_10000, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %63

36:                                               ; preds = %29
  %37 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %38 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPEED_20000, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %63

43:                                               ; preds = %36
  %44 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %45 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @SPEED_40000, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %52 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SPEED_56000, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %59 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %2, align 4
  br label %64

63:                                               ; preds = %50, %43, %36, %29, %22, %15
  store i32 0, i32* %2, align 4
  br label %64

64:                                               ; preds = %63, %57, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i64 @mlx4_en_QUERY_PORT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
