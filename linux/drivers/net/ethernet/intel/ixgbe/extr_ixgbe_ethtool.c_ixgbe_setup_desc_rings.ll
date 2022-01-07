; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw, %struct.TYPE_8__**, i32, %struct.TYPE_7__*, %struct.TYPE_6__**, %struct.ixgbe_ring, %struct.ixgbe_ring }
%struct.ixgbe_hw = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.1*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.ixgbe_ring = type { i32, i32, i32*, i64, i32 }

@IXGBE_DEFAULT_TXD = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL = common dso_local global i32 0, align 4
@IXGBE_DMATXCTL_TE = common dso_local global i32 0, align 4
@IXGBE_DEFAULT_RXD = common dso_local global i32 0, align 4
@IXGBE_RXCTRL = common dso_local global i32 0, align 4
@IXGBE_RXCTRL_DMBYPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_setup_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_desc_rings(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_ring*, align 8
  %5 = alloca %struct.ixgbe_ring*, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %11 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %12 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %11, i32 0, i32 6
  store %struct.ixgbe_ring* %12, %struct.ixgbe_ring** %4, align 8
  %13 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %13, i32 0, i32 5
  store %struct.ixgbe_ring* %14, %struct.ixgbe_ring** %5, align 8
  %15 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %15, i32 0, i32 0
  store %struct.ixgbe_hw* %16, %struct.ixgbe_hw** %6, align 8
  %17 = load i32, i32* @IXGBE_DEFAULT_TXD, align 4
  %18 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %19 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %18, i32 0, i32 4
  store i32 %17, i32* %19, align 8
  %20 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %21 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %20, i32 0, i32 3
  store i64 0, i64* %21, align 8
  %22 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %23 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %27 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %26, i32 0, i32 2
  store i32* %25, i32** %27, align 8
  %28 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %29 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %32 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 4
  %35 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %35, i64 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %41 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %43 = call i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring* %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %138

47:                                               ; preds = %1
  %48 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %49 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %66 [
    i32 132, label %53
    i32 131, label %53
    i32 130, label %53
    i32 129, label %53
    i32 128, label %53
  ]

53:                                               ; preds = %47, %47, %47, %47, %47
  %54 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %55 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %54, i32 0, i32 0
  %56 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %57 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %55, i32 %56)
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* @IXGBE_DMATXCTL_TE, align 4
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %61, i32 0, i32 0
  %63 = load i32, i32* @IXGBE_DMATXCTL, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %62, i32 %63, i32 %64)
  br label %67

66:                                               ; preds = %47
  br label %67

67:                                               ; preds = %66, %53
  %68 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %69 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %4, align 8
  %70 = call i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter* %68, %struct.ixgbe_ring* %69)
  %71 = load i32, i32* @IXGBE_DEFAULT_RXD, align 4
  %72 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %73 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %72, i32 0, i32 4
  store i32 %71, i32* %73, align 8
  %74 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %75 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %74, i32 0, i32 3
  store i64 0, i64* %75, align 8
  %76 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %77 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %76, i32 0, i32 3
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %81 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %80, i32 0, i32 2
  store i32* %79, i32** %81, align 8
  %82 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %83 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %86 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 4
  %87 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %89, i64 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %95 = getelementptr inbounds %struct.ixgbe_ring, %struct.ixgbe_ring* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 8
  %96 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %97 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %98 = call i32 @ixgbe_setup_rx_resources(%struct.ixgbe_adapter* %96, %struct.ixgbe_ring* %97)
  store i32 %98, i32* %10, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %67
  store i32 4, i32* %9, align 4
  br label %134

102:                                              ; preds = %67
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32 (%struct.ixgbe_hw.1*)*, i32 (%struct.ixgbe_hw.1*)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.1*
  %110 = call i32 %107(%struct.ixgbe_hw.1* %109)
  %111 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %112 = load %struct.ixgbe_ring*, %struct.ixgbe_ring** %5, align 8
  %113 = call i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter* %111, %struct.ixgbe_ring* %112)
  %114 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %115 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %114, i32 0, i32 0
  %116 = load i32, i32* @IXGBE_RXCTRL, align 4
  %117 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %115, i32 %116)
  store i32 %117, i32* %7, align 4
  %118 = load i32, i32* @IXGBE_RXCTRL_DMBYPS, align 4
  %119 = load i32, i32* %7, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %7, align 4
  %121 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %122 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %121, i32 0, i32 0
  %123 = load i32, i32* @IXGBE_RXCTRL, align 4
  %124 = load i32, i32* %7, align 4
  %125 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %122, i32 %123, i32 %124)
  %126 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %127 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 0
  %130 = load i32 (%struct.ixgbe_hw.0*)*, i32 (%struct.ixgbe_hw.0*)** %129, align 8
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %132 = bitcast %struct.ixgbe_hw* %131 to %struct.ixgbe_hw.0*
  %133 = call i32 %130(%struct.ixgbe_hw.0* %132)
  store i32 0, i32* %2, align 4
  br label %138

134:                                              ; preds = %101
  %135 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %136 = call i32 @ixgbe_free_desc_rings(%struct.ixgbe_adapter* %135)
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %134, %102, %46
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i32 @ixgbe_setup_tx_resources(%struct.ixgbe_ring*) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @ixgbe_configure_tx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_setup_rx_resources(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_configure_rx_ring(%struct.ixgbe_adapter*, %struct.ixgbe_ring*) #1

declare dso_local i32 @ixgbe_free_desc_rings(%struct.ixgbe_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
