; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_ethtool.c_mlx4_en_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32*, i32, %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bitmap_iterator = type { i32 }

@NUM_ALL_STATS = common dso_local global i32 0, align 4
@TX = common dso_local global i64 0, align 8
@NUM_XDP_STATS = common dso_local global i32 0, align 4
@MLX4_EN_NUM_SELF_TEST = common dso_local global i32 0, align 4
@MLX4_DEV_CAP_FLAG_UC_LOOPBACK = common dso_local global i32 0, align 4
@mlx4_en_priv_flags = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @mlx4_en_get_sset_count to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca %struct.bitmap_iterator, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.mlx4_en_priv* %9, %struct.mlx4_en_priv** %6, align 8
  %10 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %11 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @NUM_ALL_STATS, align 4
  %15 = call i32 @bitmap_iterator_init(%struct.bitmap_iterator* %7, i32 %13, i32 %14)
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %54 [
    i32 129, label %17
    i32 128, label %34
    i32 130, label %51
  ]

17:                                               ; preds = %2
  %18 = call i32 @bitmap_iterator_count(%struct.bitmap_iterator* %7)
  %19 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %20 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load i64, i64* @TX, align 8
  %23 = getelementptr inbounds i32, i32* %21, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 2
  %26 = add nsw i32 %18, %25
  %27 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %28 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @NUM_XDP_STATS, align 4
  %31 = add nsw i32 3, %30
  %32 = mul nsw i32 %29, %31
  %33 = add nsw i32 %26, %32
  store i32 %33, i32* %3, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load i32, i32* @MLX4_EN_NUM_SELF_TEST, align 4
  %36 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %37 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %36, i32 0, i32 2
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MLX4_DEV_CAP_FLAG_UC_LOOPBACK, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = mul nsw i32 %48, 2
  %50 = sub nsw i32 %35, %49
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %2
  %52 = load i32, i32* @mlx4_en_priv_flags, align 4
  %53 = call i32 @ARRAY_SIZE(i32 %52)
  store i32 %53, i32* %3, align 4
  br label %57

54:                                               ; preds = %2
  %55 = load i32, i32* @EOPNOTSUPP, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %51, %34, %17
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @bitmap_iterator_init(%struct.bitmap_iterator*, i32, i32) #1

declare dso_local i32 @bitmap_iterator_count(%struct.bitmap_iterator*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
