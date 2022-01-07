; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_fini_rx_napi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_fini_rx_napi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcmgenet_priv = type { %struct.bcmgenet_rx_ring*, %struct.TYPE_2__* }
%struct.bcmgenet_rx_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }

@DESC_INDEX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcmgenet_priv*)* @bcmgenet_fini_rx_napi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcmgenet_fini_rx_napi(%struct.bcmgenet_priv* %0) #0 {
  %2 = alloca %struct.bcmgenet_priv*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcmgenet_rx_ring*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %8 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %6, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %5
  %14 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %15 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %14, i32 0, i32 0
  %16 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %16, i64 %18
  store %struct.bcmgenet_rx_ring* %19, %struct.bcmgenet_rx_ring** %4, align 8
  %20 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %4, align 8
  %21 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %20, i32 0, i32 0
  %22 = call i32 @netif_napi_del(i32* %21)
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.bcmgenet_priv*, %struct.bcmgenet_priv** %2, align 8
  %28 = getelementptr inbounds %struct.bcmgenet_priv, %struct.bcmgenet_priv* %27, i32 0, i32 0
  %29 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %28, align 8
  %30 = load i64, i64* @DESC_INDEX, align 8
  %31 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %29, i64 %30
  store %struct.bcmgenet_rx_ring* %31, %struct.bcmgenet_rx_ring** %4, align 8
  %32 = load %struct.bcmgenet_rx_ring*, %struct.bcmgenet_rx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_rx_ring, %struct.bcmgenet_rx_ring* %32, i32 0, i32 0
  %34 = call i32 @netif_napi_del(i32* %33)
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
