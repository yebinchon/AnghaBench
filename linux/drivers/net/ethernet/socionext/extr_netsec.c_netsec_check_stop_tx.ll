; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_check_stop_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_netsec.c_netsec_check_stop_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netsec_priv = type { i32, %struct.netsec_desc_ring* }
%struct.netsec_desc_ring = type { i32 }

@NETSEC_RING_TX = common dso_local global i64 0, align 8
@DESC_NUM = common dso_local global i32 0, align 4
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netsec_priv*, i32)* @netsec_check_stop_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netsec_check_stop_tx(%struct.netsec_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.netsec_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.netsec_desc_ring*, align 8
  store %struct.netsec_priv* %0, %struct.netsec_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %8 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %7, i32 0, i32 1
  %9 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %8, align 8
  %10 = load i64, i64* @NETSEC_RING_TX, align 8
  %11 = getelementptr inbounds %struct.netsec_desc_ring, %struct.netsec_desc_ring* %9, i64 %10
  store %struct.netsec_desc_ring* %11, %struct.netsec_desc_ring** %6, align 8
  %12 = load i32, i32* @DESC_NUM, align 4
  %13 = load i32, i32* %5, align 4
  %14 = sub nsw i32 %12, %13
  %15 = icmp slt i32 %14, 2
  br i1 %15, label %16, label %35

16:                                               ; preds = %2
  %17 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %18 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @netif_stop_queue(i32 %19)
  %21 = call i32 (...) @smp_rmb()
  %22 = load %struct.netsec_desc_ring*, %struct.netsec_desc_ring** %6, align 8
  %23 = call i32 @netsec_desc_used(%struct.netsec_desc_ring* %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @DESC_NUM, align 4
  %25 = load i32, i32* %5, align 4
  %26 = sub nsw i32 %24, %25
  %27 = icmp slt i32 %26, 2
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %29, i32* %3, align 4
  br label %36

30:                                               ; preds = %16
  %31 = load %struct.netsec_priv*, %struct.netsec_priv** %4, align 8
  %32 = getelementptr inbounds %struct.netsec_priv, %struct.netsec_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @netif_wake_queue(i32 %33)
  br label %35

35:                                               ; preds = %30, %2
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @smp_rmb(...) #1

declare dso_local i32 @netsec_desc_used(%struct.netsec_desc_ring*) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
