; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_ethtool.c_igb_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.e1000_hw, %struct.igb_ring, %struct.igb_ring }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_hw = type { i32 }
%struct.igb_ring = type { i32, i32, i32*, i32 }

@IGB_DEFAULT_TXD = common dso_local global i32 0, align 4
@IGB_DEFAULT_RXD = common dso_local global i32 0, align 4
@E1000_MRQC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*)* @igb_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_setup_desc_rings(%struct.igb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.igb_adapter*, align 8
  %4 = alloca %struct.igb_ring*, align 8
  %5 = alloca %struct.igb_ring*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %3, align 8
  %8 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %8, i32 0, i32 5
  store %struct.igb_ring* %9, %struct.igb_ring** %4, align 8
  %10 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %10, i32 0, i32 4
  store %struct.igb_ring* %11, %struct.igb_ring** %5, align 8
  %12 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %13 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %12, i32 0, i32 3
  store %struct.e1000_hw* %13, %struct.e1000_hw** %6, align 8
  %14 = load i32, i32* @IGB_DEFAULT_TXD, align 4
  %15 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %16 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 8
  %17 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %22 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %21, i32 0, i32 2
  store i32* %20, i32** %22, align 8
  %23 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %27 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %32 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %34 = call i64 @igb_setup_tx_resources(%struct.igb_ring* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 1, i32* %7, align 4
  br label %82

37:                                               ; preds = %1
  %38 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %39 = call i32 @igb_setup_tctl(%struct.igb_adapter* %38)
  %40 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %41 = load %struct.igb_ring*, %struct.igb_ring** %4, align 8
  %42 = call i32 @igb_configure_tx_ring(%struct.igb_adapter* %40, %struct.igb_ring* %41)
  %43 = load i32, i32* @IGB_DEFAULT_RXD, align 4
  %44 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %45 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %51 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %50, i32 0, i32 2
  store i32* %49, i32** %51, align 8
  %52 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %56 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %58 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %61 = getelementptr inbounds %struct.igb_ring, %struct.igb_ring* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %63 = call i64 @igb_setup_rx_resources(%struct.igb_ring* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %37
  store i32 3, i32* %7, align 4
  br label %82

66:                                               ; preds = %37
  %67 = load i32, i32* @E1000_MRQC, align 4
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %69 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = shl i32 %70, 3
  %72 = call i32 @wr32(i32 %67, i32 %71)
  %73 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %74 = call i32 @igb_setup_rctl(%struct.igb_adapter* %73)
  %75 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %76 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %77 = call i32 @igb_configure_rx_ring(%struct.igb_adapter* %75, %struct.igb_ring* %76)
  %78 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %79 = load %struct.igb_ring*, %struct.igb_ring** %5, align 8
  %80 = call i32 @igb_desc_unused(%struct.igb_ring* %79)
  %81 = call i32 @igb_alloc_rx_buffers(%struct.igb_ring* %78, i32 %80)
  store i32 0, i32* %2, align 4
  br label %86

82:                                               ; preds = %65, %36
  %83 = load %struct.igb_adapter*, %struct.igb_adapter** %3, align 8
  %84 = call i32 @igb_free_desc_rings(%struct.igb_adapter* %83)
  %85 = load i32, i32* %7, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %82, %66
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i64 @igb_setup_tx_resources(%struct.igb_ring*) #1

declare dso_local i32 @igb_setup_tctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure_tx_ring(%struct.igb_adapter*, %struct.igb_ring*) #1

declare dso_local i64 @igb_setup_rx_resources(%struct.igb_ring*) #1

declare dso_local i32 @wr32(i32, i32) #1

declare dso_local i32 @igb_setup_rctl(%struct.igb_adapter*) #1

declare dso_local i32 @igb_configure_rx_ring(%struct.igb_adapter*, %struct.igb_ring*) #1

declare dso_local i32 @igb_alloc_rx_buffers(%struct.igb_ring*, i32) #1

declare dso_local i32 @igb_desc_unused(%struct.igb_ring*) #1

declare dso_local i32 @igb_free_desc_rings(%struct.igb_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
