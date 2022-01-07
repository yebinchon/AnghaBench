; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_rx_dma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_rx_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.rx_ring }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.rx_ring = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@ET_RXDMA_CSR_FBR1_ENABLE = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_FBR1_SIZE_LO = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_FBR1_SIZE_HI = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_FBR0_ENABLE = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_FBR0_SIZE_LO = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_FBR0_SIZE_HI = common dso_local global i32 0, align 4
@ET_RXDMA_CSR_HALT_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"RX Dma failed to exit halt state. CSR 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_rx_dma_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_rx_dma_enable(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rx_ring*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %5 = load i32, i32* @ET_RXDMA_CSR_FBR1_ENABLE, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %6, i32 0, i32 2
  store %struct.rx_ring* %7, %struct.rx_ring** %4, align 8
  %8 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %9 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %10, i64 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 4096
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i32, i32* @ET_RXDMA_CSR_FBR1_SIZE_LO, align 4
  %18 = load i32, i32* %3, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %3, align 4
  br label %50

20:                                               ; preds = %1
  %21 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %22 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %23, i64 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 8192
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load i32, i32* @ET_RXDMA_CSR_FBR1_SIZE_HI, align 4
  %31 = load i32, i32* %3, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %49

33:                                               ; preds = %20
  %34 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %35 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %34, i32 0, i32 0
  %36 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %36, i64 1
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 16384
  br i1 %41, label %42, label %48

42:                                               ; preds = %33
  %43 = load i32, i32* @ET_RXDMA_CSR_FBR1_SIZE_LO, align 4
  %44 = load i32, i32* @ET_RXDMA_CSR_FBR1_SIZE_HI, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* %3, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %3, align 4
  br label %48

48:                                               ; preds = %42, %33
  br label %49

49:                                               ; preds = %48, %29
  br label %50

50:                                               ; preds = %49, %16
  %51 = load i32, i32* @ET_RXDMA_CSR_FBR0_ENABLE, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %55 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %56, i64 0
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %60, 256
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load i32, i32* @ET_RXDMA_CSR_FBR0_SIZE_LO, align 4
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  br label %96

66:                                               ; preds = %50
  %67 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %68 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %67, i32 0, i32 0
  %69 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %69, i64 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp eq i32 %73, 512
  br i1 %74, label %75, label %79

75:                                               ; preds = %66
  %76 = load i32, i32* @ET_RXDMA_CSR_FBR0_SIZE_HI, align 4
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  br label %95

79:                                               ; preds = %66
  %80 = load %struct.rx_ring*, %struct.rx_ring** %4, align 8
  %81 = getelementptr inbounds %struct.rx_ring, %struct.rx_ring* %80, i32 0, i32 0
  %82 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %82, i64 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = icmp eq i32 %86, 1024
  br i1 %87, label %88, label %94

88:                                               ; preds = %79
  %89 = load i32, i32* @ET_RXDMA_CSR_FBR0_SIZE_LO, align 4
  %90 = load i32, i32* @ET_RXDMA_CSR_FBR0_SIZE_HI, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %88, %79
  br label %95

95:                                               ; preds = %94, %75
  br label %96

96:                                               ; preds = %95, %62
  %97 = load i32, i32* %3, align 4
  %98 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %99 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %98, i32 0, i32 1
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = call i32 @writel(i32 %97, i32* %102)
  %104 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %105 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %104, i32 0, i32 1
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = call i32 @readl(i32* %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* %3, align 4
  %111 = load i32, i32* @ET_RXDMA_CSR_HALT_STATUS, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %134

114:                                              ; preds = %96
  %115 = call i32 @udelay(i32 5)
  %116 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %117 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %116, i32 0, i32 1
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 0
  %121 = call i32 @readl(i32* %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = load i32, i32* @ET_RXDMA_CSR_HALT_STATUS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %114
  %127 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %128 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %127, i32 0, i32 0
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 0
  %131 = load i32, i32* %3, align 4
  %132 = call i32 @dev_err(i32* %130, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %126, %114
  br label %134

134:                                              ; preds = %133, %96
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
