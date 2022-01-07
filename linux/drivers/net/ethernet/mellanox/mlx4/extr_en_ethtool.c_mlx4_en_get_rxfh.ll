; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@MLX4_EN_RSS_KEY_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i64*, i32*, i32*)* @mlx4_en_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_rxfh(%struct.net_device* %0, i64* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_en_priv*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.mlx4_en_priv* %15, %struct.mlx4_en_priv** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i64 @mlx4_en_get_rxfh_indir_size(%struct.net_device* %16)
  store i64 %17, i64* %10, align 8
  store i32 0, i32* %13, align 4
  %18 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %4
  br label %27

25:                                               ; preds = %4
  %26 = load i64, i64* %10, align 8
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i64 [ %22, %24 ], [ %26, %25 ]
  store i64 %28, i64* %12, align 8
  %29 = load i64, i64* %12, align 8
  %30 = call i64 @rounddown_pow_of_two(i64 %29)
  store i64 %30, i64* %12, align 8
  store i64 0, i64* %11, align 8
  br label %31

31:                                               ; preds = %46, %27
  %32 = load i64, i64* %11, align 8
  %33 = load i64, i64* %10, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %49

35:                                               ; preds = %31
  %36 = load i64*, i64** %6, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  br label %49

39:                                               ; preds = %35
  %40 = load i64, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = urem i64 %40, %41
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* %11, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %39
  %47 = load i64, i64* %11, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %11, align 8
  br label %31

49:                                               ; preds = %38, %31
  %50 = load i32*, i32** %7, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %59

52:                                               ; preds = %49
  %53 = load i32*, i32** %7, align 8
  %54 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %55 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MLX4_EN_RSS_KEY_SIZE, align 4
  %58 = call i32 @memcpy(i32* %53, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %52, %49
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %9, align 8
  %64 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %8, align 8
  store i32 %65, i32* %66, align 4
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i32, i32* %13, align 4
  ret i32 %68
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx4_en_get_rxfh_indir_size(%struct.net_device*) #1

declare dso_local i64 @rounddown_pow_of_two(i64) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
