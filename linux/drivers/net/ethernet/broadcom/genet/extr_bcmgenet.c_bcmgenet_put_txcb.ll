; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_put_txcb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/genet/extr_bcmgenet.c_bcmgenet_put_txcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enet_cb = type { i32 }
%struct.bcmgenet_priv = type { i32 }
%struct.bcmgenet_tx_ring = type { i64, i64, i64, %struct.enet_cb* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.enet_cb* (%struct.bcmgenet_priv*, %struct.bcmgenet_tx_ring*)* @bcmgenet_put_txcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.enet_cb* @bcmgenet_put_txcb(%struct.bcmgenet_priv* %0, %struct.bcmgenet_tx_ring* %1) #0 {
  %3 = alloca %struct.bcmgenet_priv*, align 8
  %4 = alloca %struct.bcmgenet_tx_ring*, align 8
  %5 = alloca %struct.enet_cb*, align 8
  store %struct.bcmgenet_priv* %0, %struct.bcmgenet_priv** %3, align 8
  store %struct.bcmgenet_tx_ring* %1, %struct.bcmgenet_tx_ring** %4, align 8
  %6 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %7 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %6, i32 0, i32 3
  %8 = load %struct.enet_cb*, %struct.enet_cb** %7, align 8
  store %struct.enet_cb* %8, %struct.enet_cb** %5, align 8
  %9 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %10 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %13 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub nsw i64 %11, %14
  %16 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  %17 = getelementptr inbounds %struct.enet_cb, %struct.enet_cb* %16, i64 %15
  store %struct.enet_cb* %17, %struct.enet_cb** %5, align 8
  %18 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %19 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %2
  %26 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %27 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %30 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %36

31:                                               ; preds = %2
  %32 = load %struct.bcmgenet_tx_ring*, %struct.bcmgenet_tx_ring** %4, align 8
  %33 = getelementptr inbounds %struct.bcmgenet_tx_ring, %struct.bcmgenet_tx_ring* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, -1
  store i64 %35, i64* %33, align 8
  br label %36

36:                                               ; preds = %31, %25
  %37 = load %struct.enet_cb*, %struct.enet_cb** %5, align 8
  ret %struct.enet_cb* %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
