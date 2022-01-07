; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_clean_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1c_adapter = type { i32, i32, %struct.pci_dev*, %struct.atl1c_tpd_ring* }
%struct.pci_dev = type { i32 }
%struct.atl1c_tpd_ring = type { i64, i32, %struct.atl1c_buffer* }
%struct.atl1c_buffer = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@atl1c_trans_high = common dso_local global i32 0, align 4
@REG_TPD_PRI1_CIDX = common dso_local global i64 0, align 8
@REG_TPD_PRI0_CIDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1c_adapter*, i32)* @atl1c_clean_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_clean_tx_irq(%struct.atl1c_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1c_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_tpd_ring*, align 8
  %6 = alloca %struct.atl1c_buffer*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.atl1c_adapter* %0, %struct.atl1c_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %13, i32 0, i32 3
  %15 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %15, i64 %17
  store %struct.atl1c_tpd_ring* %18, %struct.atl1c_tpd_ring** %5, align 8
  %19 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %20 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %19, i32 0, i32 2
  %21 = load %struct.pci_dev*, %struct.pci_dev** %20, align 8
  store %struct.pci_dev* %21, %struct.pci_dev** %7, align 8
  %22 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %23 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  store i64 %24, i64* %8, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @atl1c_trans_high, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i64, i64* @REG_TPD_PRI1_CIDX, align 8
  br label %32

30:                                               ; preds = %2
  %31 = load i64, i64* @REG_TPD_PRI0_CIDX, align 8
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i64 [ %29, %28 ], [ %31, %30 ]
  store i64 %33, i64* %10, align 8
  %34 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %34, i32 0, i32 1
  %36 = load i64, i64* %10, align 8
  %37 = call i32 @AT_READ_REGW(i32* %35, i64 %36, i64* %9)
  br label %38

38:                                               ; preds = %75, %32
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %44 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %43, i32 0, i32 2
  %45 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %44, align 8
  %46 = load i64, i64* %8, align 8
  %47 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %45, i64 %46
  store %struct.atl1c_buffer* %47, %struct.atl1c_buffer** %6, align 8
  %48 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %49 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %64

52:                                               ; preds = %42
  %53 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %54 = getelementptr inbounds %struct.atl1c_buffer, %struct.atl1c_buffer* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = zext i32 %58 to i64
  %60 = add nsw i64 %59, %57
  %61 = trunc i64 %60 to i32
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %12, align 4
  br label %64

64:                                               ; preds = %52, %42
  %65 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %66 = load %struct.atl1c_buffer*, %struct.atl1c_buffer** %6, align 8
  %67 = call i32 @atl1c_clean_buffer(%struct.pci_dev* %65, %struct.atl1c_buffer* %66)
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %8, align 8
  %70 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %71 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  store i64 0, i64* %8, align 8
  br label %75

75:                                               ; preds = %74, %64
  %76 = load %struct.atl1c_tpd_ring*, %struct.atl1c_tpd_ring** %5, align 8
  %77 = getelementptr inbounds %struct.atl1c_tpd_ring, %struct.atl1c_tpd_ring* %76, i32 0, i32 1
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @atomic_set(i32* %77, i64 %78)
  br label %38

80:                                               ; preds = %38
  %81 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load i32, i32* %11, align 4
  %86 = call i32 @netdev_completed_queue(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i64 @netif_queue_stopped(i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %103

92:                                               ; preds = %80
  %93 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %94 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @netif_carrier_ok(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %92
  %99 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @netif_wake_queue(i32 %101)
  br label %103

103:                                              ; preds = %98, %92, %80
  ret i32 1
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @AT_READ_REGW(i32*, i64, i64*) #1

declare dso_local i32 @atl1c_clean_buffer(%struct.pci_dev*, %struct.atl1c_buffer*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @netdev_completed_queue(i32, i32, i32) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
