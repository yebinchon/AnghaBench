; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.bcmgenet_priv = type { %struct.bcmgenet_rx_ring*, %struct.TYPE_2__*, %struct.bcmgenet_tx_ring* }
%struct.bcmgenet_rx_ring = type { i64, i64, i64, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.bcmgenet_tx_ring = type { i64, i64 }

@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @bcmgenet_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @bcmgenet_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bcmgenet_tx_ring*, align 8
  %11 = alloca %struct.bcmgenet_rx_ring*, align 8
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call %struct.bcmgenet_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.bcmgenet_priv* %14, %struct.bcmgenet_priv** %3, align 8
  store i64 0, i64* %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %12, align 4
  br label %15

15:                                               ; preds = %40, %1
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %18 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp ult i32 %16, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %25 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %24, i32 0, i32 2
  %26 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %25, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %26, i64 %28
  store %struct.bcmgenet_tx_ring* %29, %struct.bcmgenet_tx_ring** %10, align 8
  %30 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %10, align 8
  %31 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %4, align 8
  %35 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %10, align 8
  %36 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %5, align 8
  br label %40

40:                                               ; preds = %23
  %41 = load i32, i32* %12, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %12, align 4
  br label %15

43:                                               ; preds = %15
  %44 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %45 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %44, i32 0, i32 2
  %46 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %45, align 8
  %47 = load i64, i64* @DESC_INDEX, align 8
  %48 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %46, i64 %47
  store %struct.bcmgenet_tx_ring* %48, %struct.bcmgenet_tx_ring** %10, align 8
  %49 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %10, align 8
  %50 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %4, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %4, align 8
  %54 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %10, align 8
  %55 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %5, align 8
  store i32 0, i32* %12, align 4
  br label %59

59:                                               ; preds = %94, %43
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %62 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ult i32 %60, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %59
  %68 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %69 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %68, i32 0, i32 0
  %70 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %69, align 8
  %71 = load i32, i32* %12, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %70, i64 %72
  store %struct.bcmgenet_rx_ring* %73, %struct.bcmgenet_rx_ring** %11, align 8
  %74 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %75 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* %6, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %6, align 8
  %79 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %80 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %7, align 8
  %84 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %85 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %87, %86
  store i64 %88, i64* %8, align 8
  %89 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %90 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* %9, align 8
  %93 = add i64 %92, %91
  store i64 %93, i64* %9, align 8
  br label %94

94:                                               ; preds = %67
  %95 = load i32, i32* %12, align 4
  %96 = add i32 %95, 1
  store i32 %96, i32* %12, align 4
  br label %59

97:                                               ; preds = %59
  %98 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %3, align 8
  %99 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %98, i32 0, i32 0
  %100 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %99, align 8
  %101 = load i64, i64* @DESC_INDEX, align 8
  %102 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %100, i64 %101
  store %struct.bcmgenet_rx_ring* %102, %struct.bcmgenet_rx_ring** %11, align 8
  %103 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %104 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, %105
  store i64 %107, i64* %6, align 8
  %108 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %109 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* %7, align 8
  %112 = add i64 %111, %110
  store i64 %112, i64* %7, align 8
  %113 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %114 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = add i64 %116, %115
  store i64 %117, i64* %8, align 8
  %118 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %11, align 8
  %119 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %9, align 8
  %123 = load i64, i64* %4, align 8
  %124 = load %struct.net_device*, %struct.net_device** %2, align 8
  %125 = getelementptr inbounds %struct.net_device, %struct.net_device* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %125, i32 0, i32 0
  store i64 %123, i64* %126, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %129, i32 0, i32 1
  store i64 %127, i64* %130, align 8
  %131 = load i64, i64* %6, align 8
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %133, i32 0, i32 2
  store i64 %131, i64* %134, align 8
  %135 = load i64, i64* %7, align 8
  %136 = load %struct.net_device*, %struct.net_device** %2, align 8
  %137 = getelementptr inbounds %struct.net_device, %struct.net_device* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %137, i32 0, i32 3
  store i64 %135, i64* %138, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.net_device*, %struct.net_device** %2, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %141, i32 0, i32 4
  store i64 %139, i64* %142, align 8
  %143 = load i64, i64* %8, align 8
  %144 = load %struct.net_device*, %struct.net_device** %2, align 8
  %145 = getelementptr inbounds %struct.net_device, %struct.net_device* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %145, i32 0, i32 5
  store i64 %143, i64* %146, align 8
  %147 = load %struct.net_device*, %struct.net_device** %2, align 8
  %148 = getelementptr inbounds %struct.net_device, %struct.net_device* %147, i32 0, i32 0
  ret %struct.net_device_stats* %148
}

declare dso_local %struct.bcmgenet_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
