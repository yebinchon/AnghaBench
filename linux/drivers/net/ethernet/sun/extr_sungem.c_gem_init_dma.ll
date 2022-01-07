; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_init_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i32, i32, i64, i32 }

@TXDMA_CFG_BASE = common dso_local global i32 0, align 4
@TXDMA_CFG_PMODE = common dso_local global i32 0, align 4
@TXDMA_CFG = common dso_local global i64 0, align 8
@TXDMA_DBHI = common dso_local global i64 0, align 8
@TXDMA_DBLOW = common dso_local global i64 0, align 8
@INIT_BLOCK_TX_RING_SIZE = common dso_local global i32 0, align 4
@TXDMA_KICK = common dso_local global i64 0, align 8
@RXDMA_CFG_BASE = common dso_local global i32 0, align 4
@RX_OFFSET = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@RXDMA_CFG_FTHRESH_128 = common dso_local global i32 0, align 4
@RXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_DBHI = common dso_local global i64 0, align 8
@RXDMA_DBLOW = common dso_local global i64 0, align 8
@RX_RING_SIZE = common dso_local global i32 0, align 4
@RXDMA_KICK = common dso_local global i64 0, align 8
@RXDMA_PTHRESH_OFF = common dso_local global i32 0, align 4
@RXDMA_PTHRESH_ON = common dso_local global i32 0, align 4
@RXDMA_PTHRESH = common dso_local global i64 0, align 8
@GREG_BIFCFG = common dso_local global i64 0, align 8
@GREG_BIFCFG_M66EN = common dso_local global i32 0, align 4
@RXDMA_BLANK_IPKTS = common dso_local global i32 0, align 4
@RXDMA_BLANK_ITIME = common dso_local global i32 0, align 4
@RXDMA_BLANK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_init_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_init_dma(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %5 = load %struct.gem*, %struct.gem** %2, align 8
  %6 = getelementptr inbounds %struct.gem, %struct.gem* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @TXDMA_CFG_BASE, align 4
  %9 = or i32 %8, 2096128
  %10 = load i32, i32* @TXDMA_CFG_PMODE, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.gem*, %struct.gem** %2, align 8
  %14 = getelementptr inbounds %struct.gem, %struct.gem* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @TXDMA_CFG, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* %3, align 4
  %20 = ashr i32 %19, 32
  %21 = load %struct.gem*, %struct.gem** %2, align 8
  %22 = getelementptr inbounds %struct.gem, %struct.gem* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @TXDMA_DBHI, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel(i32 %20, i64 %25)
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.gem*, %struct.gem** %2, align 8
  %29 = getelementptr inbounds %struct.gem, %struct.gem* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TXDMA_DBLOW, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  %34 = load i32, i32* @INIT_BLOCK_TX_RING_SIZE, align 4
  %35 = sext i32 %34 to i64
  %36 = mul i64 %35, 4
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = add i64 %38, %36
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %3, align 4
  %41 = load %struct.gem*, %struct.gem** %2, align 8
  %42 = getelementptr inbounds %struct.gem, %struct.gem* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @TXDMA_KICK, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @writel(i32 0, i64 %45)
  %47 = load i32, i32* @RXDMA_CFG_BASE, align 4
  %48 = load i32, i32* @RX_OFFSET, align 4
  %49 = shl i32 %48, 10
  %50 = or i32 %47, %49
  %51 = load i32, i32* @ETH_HLEN, align 4
  %52 = shl i32 %51, 13
  %53 = or i32 %50, %52
  %54 = load i32, i32* @RXDMA_CFG_FTHRESH_128, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %4, align 4
  %56 = load i32, i32* %4, align 4
  %57 = load %struct.gem*, %struct.gem** %2, align 8
  %58 = getelementptr inbounds %struct.gem, %struct.gem* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @RXDMA_CFG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 %56, i64 %61)
  %63 = load i32, i32* %3, align 4
  %64 = ashr i32 %63, 32
  %65 = load %struct.gem*, %struct.gem** %2, align 8
  %66 = getelementptr inbounds %struct.gem, %struct.gem* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @RXDMA_DBHI, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @writel(i32 %64, i64 %69)
  %71 = load i32, i32* %3, align 4
  %72 = load %struct.gem*, %struct.gem** %2, align 8
  %73 = getelementptr inbounds %struct.gem, %struct.gem* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @RXDMA_DBLOW, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @writel(i32 %71, i64 %76)
  %78 = load i32, i32* @RX_RING_SIZE, align 4
  %79 = sub nsw i32 %78, 4
  %80 = load %struct.gem*, %struct.gem** %2, align 8
  %81 = getelementptr inbounds %struct.gem, %struct.gem* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @RXDMA_KICK, align 8
  %84 = add nsw i64 %82, %83
  %85 = call i32 @writel(i32 %79, i64 %84)
  %86 = load %struct.gem*, %struct.gem** %2, align 8
  %87 = getelementptr inbounds %struct.gem, %struct.gem* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %88, 64
  %90 = shl i32 %89, 0
  %91 = load i32, i32* @RXDMA_PTHRESH_OFF, align 4
  %92 = and i32 %90, %91
  store i32 %92, i32* %4, align 4
  %93 = load %struct.gem*, %struct.gem** %2, align 8
  %94 = getelementptr inbounds %struct.gem, %struct.gem* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sdiv i32 %95, 64
  %97 = shl i32 %96, 12
  %98 = load i32, i32* @RXDMA_PTHRESH_ON, align 4
  %99 = and i32 %97, %98
  %100 = load i32, i32* %4, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.gem*, %struct.gem** %2, align 8
  %104 = getelementptr inbounds %struct.gem, %struct.gem* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @RXDMA_PTHRESH, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  %109 = load %struct.gem*, %struct.gem** %2, align 8
  %110 = getelementptr inbounds %struct.gem, %struct.gem* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @GREG_BIFCFG, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @readl(i64 %113)
  %115 = load i32, i32* @GREG_BIFCFG_M66EN, align 4
  %116 = and i32 %114, %115
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %130

118:                                              ; preds = %1
  %119 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %120 = and i32 5, %119
  %121 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %122 = and i32 32768, %121
  %123 = or i32 %120, %122
  %124 = load %struct.gem*, %struct.gem** %2, align 8
  %125 = getelementptr inbounds %struct.gem, %struct.gem* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RXDMA_BLANK, align 8
  %128 = add nsw i64 %126, %127
  %129 = call i32 @writel(i32 %123, i64 %128)
  br label %142

130:                                              ; preds = %1
  %131 = load i32, i32* @RXDMA_BLANK_IPKTS, align 4
  %132 = and i32 5, %131
  %133 = load i32, i32* @RXDMA_BLANK_ITIME, align 4
  %134 = and i32 16384, %133
  %135 = or i32 %132, %134
  %136 = load %struct.gem*, %struct.gem** %2, align 8
  %137 = getelementptr inbounds %struct.gem, %struct.gem* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @RXDMA_BLANK, align 8
  %140 = add nsw i64 %138, %139
  %141 = call i32 @writel(i32 %135, i64 %140)
  br label %142

142:                                              ; preds = %130, %118
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
