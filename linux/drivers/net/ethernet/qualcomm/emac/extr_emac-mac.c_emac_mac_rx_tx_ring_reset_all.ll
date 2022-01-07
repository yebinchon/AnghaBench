; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_ring_reset_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/emac/extr_emac-mac.c_emac_mac_rx_tx_ring_reset_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_adapter = type { %struct.TYPE_14__, %struct.TYPE_10__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__*, i64, i64 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__*, i64, i64 }
%struct.TYPE_8__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_adapter*)* @emac_mac_rx_tx_ring_reset_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mac_rx_tx_ring_reset_all(%struct.emac_adapter* %0) #0 {
  %2 = alloca %struct.emac_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.emac_adapter* %0, %struct.emac_adapter** %2, align 8
  %4 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 3
  store i64 0, i64* %7, align 8
  %8 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %30, %1
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ult i32 %13, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %12
  %21 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  store i64 0, i64* %29, align 8
  br label %30

30:                                               ; preds = %20
  %31 = load i32, i32* %3, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %12

33:                                               ; preds = %12
  %34 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %35 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %39 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %43 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %47 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 2
  store i64 0, i64* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %68, %33
  %51 = load i32, i32* %3, align 4
  %52 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %53 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ult i32 %51, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.emac_adapter*, %struct.emac_adapter** %2, align 8
  %60 = getelementptr inbounds %struct.emac_adapter, %struct.emac_adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %62, align 8
  %64 = load i32, i32* %3, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  br label %68

68:                                               ; preds = %58
  %69 = load i32, i32* %3, align 4
  %70 = add i32 %69, 1
  store i32 %70, i32* %3, align 4
  br label %50

71:                                               ; preds = %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
