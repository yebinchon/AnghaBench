; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_en_fold_software_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_port.c_mlx4_en_fold_software_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i64 }
%struct.mlx4_en_priv = type { i32, i32*, %struct.mlx4_en_tx_ring***, %struct.mlx4_en_rx_ring**, i32, %struct.mlx4_en_dev* }
%struct.mlx4_en_tx_ring = type { i32, i32 }
%struct.mlx4_en_rx_ring = type { i32, i32 }
%struct.mlx4_en_dev = type { i32 }

@TX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx4_en_fold_software_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.mlx4_en_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mlx4_en_rx_ring*, align 8
  %9 = alloca %struct.mlx4_en_tx_ring*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %3, align 8
  %12 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %13 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %12, i32 0, i32 5
  %14 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %13, align 8
  store %struct.mlx4_en_dev* %14, %struct.mlx4_en_dev** %4, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.mlx4_en_dev*, %struct.mlx4_en_dev** %4, align 8
  %21 = getelementptr inbounds %struct.mlx4_en_dev, %struct.mlx4_en_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @mlx4_is_master(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19, %1
  br label %109

26:                                               ; preds = %19
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %53, %26
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %30 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %56

33:                                               ; preds = %27
  %34 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %34, i32 0, i32 3
  %36 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %35, align 8
  %37 = load i32, i32* %7, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %36, i64 %38
  %40 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %39, align 8
  store %struct.mlx4_en_rx_ring* %40, %struct.mlx4_en_rx_ring** %8, align 8
  %41 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %42 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @READ_ONCE(i32 %43)
  %45 = load i64, i64* %5, align 8
  %46 = add i64 %45, %44
  store i64 %46, i64* %5, align 8
  %47 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %8, align 8
  %48 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @READ_ONCE(i32 %49)
  %51 = load i64, i64* %6, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %6, align 8
  br label %53

53:                                               ; preds = %33
  %54 = load i32, i32* %7, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  br label %27

56:                                               ; preds = %27
  %57 = load i64, i64* %5, align 8
  %58 = load %struct.net_device*, %struct.net_device** %2, align 8
  %59 = getelementptr inbounds %struct.net_device, %struct.net_device* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i64, i64* %6, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = getelementptr inbounds %struct.net_device, %struct.net_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  store i64 %61, i64* %64, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %97, %56
  %66 = load i32, i32* %7, align 4
  %67 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %68 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* @TX, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp slt i32 %66, %72
  br i1 %73, label %74, label %100

74:                                               ; preds = %65
  %75 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %76 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %75, i32 0, i32 2
  %77 = load %struct.mlx4_en_tx_ring***, %struct.mlx4_en_tx_ring**** %76, align 8
  %78 = load i64, i64* @TX, align 8
  %79 = getelementptr inbounds %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %77, i64 %78
  %80 = load %struct.mlx4_en_tx_ring**, %struct.mlx4_en_tx_ring*** %79, align 8
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %80, i64 %82
  %84 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %83, align 8
  store %struct.mlx4_en_tx_ring* %84, %struct.mlx4_en_tx_ring** %9, align 8
  %85 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %86 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @READ_ONCE(i32 %87)
  %89 = load i64, i64* %5, align 8
  %90 = add i64 %89, %88
  store i64 %90, i64* %5, align 8
  %91 = load %struct.mlx4_en_tx_ring*, %struct.mlx4_en_tx_ring** %9, align 8
  %92 = getelementptr inbounds %struct.mlx4_en_tx_ring, %struct.mlx4_en_tx_ring* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @READ_ONCE(i32 %93)
  %95 = load i64, i64* %6, align 8
  %96 = add i64 %95, %94
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %74
  %98 = load i32, i32* %7, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %7, align 4
  br label %65

100:                                              ; preds = %65
  %101 = load i64, i64* %5, align 8
  %102 = load %struct.net_device*, %struct.net_device** %2, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 2
  store i64 %101, i64* %104, align 8
  %105 = load i64, i64* %6, align 8
  %106 = load %struct.net_device*, %struct.net_device** %2, align 8
  %107 = getelementptr inbounds %struct.net_device, %struct.net_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 3
  store i64 %105, i64* %108, align 8
  br label %109

109:                                              ; preds = %100, %25
  ret void
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mlx4_is_master(i32) #1

declare dso_local i64 @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
