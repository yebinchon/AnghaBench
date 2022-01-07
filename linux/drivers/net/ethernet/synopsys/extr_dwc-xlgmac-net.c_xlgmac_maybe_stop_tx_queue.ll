; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_maybe_stop_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_maybe_stop_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32, %struct.xlgmac_pdata* }
%struct.xlgmac_pdata = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 (%struct.xlgmac_channel.0*, %struct.xlgmac_ring*)* }
%struct.xlgmac_channel.0 = type opaque
%struct.xlgmac_ring = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Tx queue stopped, not enough descriptors available\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_channel*, %struct.xlgmac_ring*, i32)* @xlgmac_maybe_stop_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_maybe_stop_tx_queue(%struct.xlgmac_channel* %0, %struct.xlgmac_ring* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca %struct.xlgmac_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xlgmac_pdata*, align 8
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %5, align 8
  store %struct.xlgmac_ring* %1, %struct.xlgmac_ring** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %10 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %9, i32 0, i32 1
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %10, align 8
  store %struct.xlgmac_pdata* %11, %struct.xlgmac_pdata** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %14 = call i32 @xlgmac_tx_avail_desc(%struct.xlgmac_ring* %13)
  %15 = icmp ugt i32 %12, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %3
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %8, align 8
  %18 = load i32, i32* @drv, align 4
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %8, align 8
  %20 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netif_info(%struct.xlgmac_pdata* %17, i32 %18, i32 %21, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %8, align 8
  %24 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %27 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @netif_stop_subqueue(i32 %25, i32 %28)
  %30 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %31 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  %33 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %34 = getelementptr inbounds %struct.xlgmac_ring, %struct.xlgmac_ring* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %16
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %8, align 8
  %40 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32 (%struct.xlgmac_channel.0*, %struct.xlgmac_ring*)*, i32 (%struct.xlgmac_channel.0*, %struct.xlgmac_ring*)** %41, align 8
  %43 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %44 = bitcast %struct.xlgmac_channel* %43 to %struct.xlgmac_channel.0*
  %45 = load %struct.xlgmac_ring*, %struct.xlgmac_ring** %6, align 8
  %46 = call i32 %42(%struct.xlgmac_channel.0* %44, %struct.xlgmac_ring* %45)
  br label %47

47:                                               ; preds = %38, %16
  %48 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %48, i32* %4, align 4
  br label %50

49:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %47
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @xlgmac_tx_avail_desc(%struct.xlgmac_ring*) #1

declare dso_local i32 @netif_info(%struct.xlgmac_pdata*, i32, i32, i8*) #1

declare dso_local i32 @netif_stop_subqueue(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
