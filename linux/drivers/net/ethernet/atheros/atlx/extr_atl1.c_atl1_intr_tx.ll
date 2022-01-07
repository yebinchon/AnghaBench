; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32, i32, %struct.TYPE_4__, %struct.atl1_tpd_ring }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.atl1_tpd_ring = type { i64, i32, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i32*, i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_adapter*)* @atl1_intr_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_intr_tx(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.atl1_tpd_ring*, align 8
  %4 = alloca %struct.atl1_buffer*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 3
  store %struct.atl1_tpd_ring* %9, %struct.atl1_tpd_ring** %3, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %11 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %10, i32 0, i32 1
  %12 = call i64 @atomic_read(i32* %11)
  store i64 %12, i64* %5, align 8
  %13 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %14 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  store i64 %19, i64* %6, align 8
  br label %20

20:                                               ; preds = %68, %1
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %5, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %71

24:                                               ; preds = %20
  %25 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %26 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %25, i32 0, i32 2
  %27 = load %struct.atl1_buffer*, %struct.atl1_buffer** %26, align 8
  %28 = load i64, i64* %5, align 8
  %29 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %27, i64 %28
  store %struct.atl1_buffer* %29, %struct.atl1_buffer** %4, align 8
  %30 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %48

34:                                               ; preds = %24
  %35 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %36 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %39 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %42 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %45 = call i32 @pci_unmap_page(i32 %37, i64 %40, i32 %43, i32 %44)
  %46 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %47 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  br label %48

48:                                               ; preds = %34, %24
  %49 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %50 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %55 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @dev_consume_skb_irq(i32* %56)
  %58 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %59 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %58, i32 0, i32 0
  store i32* null, i32** %59, align 8
  br label %60

60:                                               ; preds = %53, %48
  %61 = load i64, i64* %5, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %5, align 8
  %63 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %64 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  br label %68

68:                                               ; preds = %67, %60
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  br label %20

71:                                               ; preds = %20
  %72 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %73 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %72, i32 0, i32 1
  %74 = load i64, i64* %5, align 8
  %75 = call i32 @atomic_set(i32* %73, i64 %74)
  %76 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %77 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = call i64 @netif_queue_stopped(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %71
  %82 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %83 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i64 @netif_carrier_ok(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %89 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @netif_wake_queue(i32 %90)
  br label %92

92:                                               ; preds = %87, %81, %71
  %93 = load i32, i32* %7, align 4
  ret i32 %93
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @pci_unmap_page(i32, i64, i32, i32) #1

declare dso_local i32 @dev_consume_skb_irq(i32*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i64 @netif_queue_stopped(i32) #1

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
