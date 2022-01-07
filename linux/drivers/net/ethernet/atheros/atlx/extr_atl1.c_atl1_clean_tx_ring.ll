; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_clean_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { %struct.pci_dev*, %struct.atl1_tpd_ring }
%struct.pci_dev = type { i32 }
%struct.atl1_tpd_ring = type { i32, i64, i32, i32, %struct.atl1_buffer*, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i32*, i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atl1_adapter*)* @atl1_clean_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atl1_clean_tx_ring(%struct.atl1_adapter* %0) #0 {
  %2 = alloca %struct.atl1_adapter*, align 8
  %3 = alloca %struct.atl1_tpd_ring*, align 8
  %4 = alloca %struct.atl1_buffer*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %2, align 8
  %8 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %8, i32 0, i32 1
  store %struct.atl1_tpd_ring* %9, %struct.atl1_tpd_ring** %3, align 8
  %10 = load %struct.atl1_adapter*, %struct.atl1_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %10, i32 0, i32 0
  %12 = load %struct.pci_dev*, %struct.pci_dev** %11, align 8
  store %struct.pci_dev* %12, %struct.pci_dev** %5, align 8
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %43, %1
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %16 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ult i32 %14, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %13
  %20 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %21 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %20, i32 0, i32 5
  %22 = load %struct.atl1_buffer*, %struct.atl1_buffer** %21, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %22, i64 %24
  store %struct.atl1_buffer* %25, %struct.atl1_buffer** %4, align 8
  %26 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %27 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %19
  %31 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %32 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %33 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %36 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %39 = call i32 @pci_unmap_page(%struct.pci_dev* %31, i64 %34, i32 %37, i32 %38)
  %40 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %41 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  br label %42

42:                                               ; preds = %30, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %13

46:                                               ; preds = %13
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %50 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp ult i32 %48, %51
  br i1 %52, label %53, label %75

53:                                               ; preds = %47
  %54 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %55 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %54, i32 0, i32 5
  %56 = load %struct.atl1_buffer*, %struct.atl1_buffer** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %56, i64 %58
  store %struct.atl1_buffer* %59, %struct.atl1_buffer** %4, align 8
  %60 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %61 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = icmp ne i32* %62, null
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %66 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = call i32 @dev_kfree_skb_any(i32* %67)
  %69 = load %struct.atl1_buffer*, %struct.atl1_buffer** %4, align 8
  %70 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %69, i32 0, i32 0
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %64, %53
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %47

75:                                               ; preds = %47
  %76 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %77 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = zext i32 %78 to i64
  %80 = mul i64 24, %79
  store i64 %80, i64* %6, align 8
  %81 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %82 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %81, i32 0, i32 5
  %83 = load %struct.atl1_buffer*, %struct.atl1_buffer** %82, align 8
  %84 = load i64, i64* %6, align 8
  %85 = call i32 @memset(%struct.atl1_buffer* %83, i32 0, i64 %84)
  %86 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %87 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %86, i32 0, i32 4
  %88 = load %struct.atl1_buffer*, %struct.atl1_buffer** %87, align 8
  %89 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %90 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @memset(%struct.atl1_buffer* %88, i32 0, i64 %91)
  %93 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %94 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %93, i32 0, i32 3
  %95 = call i32 @atomic_set(i32* %94, i32 0)
  %96 = load %struct.atl1_tpd_ring*, %struct.atl1_tpd_ring** %3, align 8
  %97 = getelementptr inbounds %struct.atl1_tpd_ring, %struct.atl1_tpd_ring* %96, i32 0, i32 2
  %98 = call i32 @atomic_set(i32* %97, i32 0)
  ret void
}

declare dso_local i32 @pci_unmap_page(%struct.pci_dev*, i64, i32, i32) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @memset(%struct.atl1_buffer*, i32, i64) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
