; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftgmac100.c_ftgmac100_init_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftgmac100 = type { i32, i32, i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@FTGMAC100_OFFSET_ISR = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_RXR_BADR = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_NPTXR_BADR = common dso_local global i64 0, align 8
@RX_BUF_SIZE = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_RBSR = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_APTC = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_MAHT0 = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_MAHT1 = common dso_local global i64 0, align 8
@FTGMAC100_DBLAC_RX_THR_EN = common dso_local global i32 0, align 4
@FTGMAC100_OFFSET_DBLAC = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_ITC = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_FEAR = common dso_local global i64 0, align 8
@FTGMAC100_OFFSET_TPAFCR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ftgmac100*)* @ftgmac100_init_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftgmac100_init_hw(%struct.ftgmac100* %0) #0 {
  %2 = alloca %struct.ftgmac100*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ftgmac100* %0, %struct.ftgmac100** %2, align 8
  %6 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %7 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FTGMAC100_OFFSET_ISR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @ioread32(i64 %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %14 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @FTGMAC100_OFFSET_ISR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @iowrite32(i32 %12, i64 %17)
  %19 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %20 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %23 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FTGMAC100_OFFSET_RXR_BADR, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @iowrite32(i32 %21, i64 %26)
  %28 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %29 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %32 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FTGMAC100_OFFSET_NPTXR_BADR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  %37 = load i32, i32* @RX_BUF_SIZE, align 4
  %38 = call i32 @FTGMAC100_RBSR_SIZE(i32 %37)
  %39 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %40 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @FTGMAC100_OFFSET_RBSR, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @iowrite32(i32 %38, i64 %43)
  %45 = call i32 @FTGMAC100_APTC_RXPOLL_CNT(i32 1)
  %46 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %47 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FTGMAC100_OFFSET_APTC, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @iowrite32(i32 %45, i64 %50)
  %52 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %53 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %54 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @ftgmac100_write_mac_addr(%struct.ftgmac100* %52, i32 %57)
  %59 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %60 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %63 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @FTGMAC100_OFFSET_MAHT0, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @iowrite32(i32 %61, i64 %66)
  %68 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %69 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %72 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @FTGMAC100_OFFSET_MAHT1, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @iowrite32(i32 %70, i64 %75)
  %77 = call i32 @FTGMAC100_DBLAC_RXDES_SIZE(i32 2)
  %78 = call i32 @FTGMAC100_DBLAC_TXDES_SIZE(i32 2)
  %79 = or i32 %77, %78
  %80 = call i32 @FTGMAC100_DBLAC_RXBURST_SIZE(i32 3)
  %81 = or i32 %79, %80
  %82 = call i32 @FTGMAC100_DBLAC_TXBURST_SIZE(i32 3)
  %83 = or i32 %81, %82
  %84 = load i32, i32* @FTGMAC100_DBLAC_RX_THR_EN, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @FTGMAC100_DBLAC_RXFIFO_HTHR(i32 6)
  %87 = or i32 %85, %86
  %88 = call i32 @FTGMAC100_DBLAC_RXFIFO_LTHR(i32 2)
  %89 = or i32 %87, %88
  %90 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %91 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @FTGMAC100_OFFSET_DBLAC, align 8
  %94 = add nsw i64 %92, %93
  %95 = call i32 @iowrite32(i32 %89, i64 %94)
  %96 = call i32 @FTGMAC100_ITC_RXINT_THR(i32 1)
  %97 = call i32 @FTGMAC100_ITC_TXINT_THR(i32 1)
  %98 = or i32 %96, %97
  %99 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %100 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @FTGMAC100_OFFSET_ITC, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @iowrite32(i32 %98, i64 %103)
  %105 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %106 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %105, i32 0, i32 4
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @FTGMAC100_OFFSET_FEAR, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @ioread32(i64 %109)
  store i32 %110, i32* %3, align 4
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, 7
  store i32 %112, i32* %4, align 4
  %113 = load i32, i32* %3, align 4
  %114 = ashr i32 %113, 3
  %115 = and i32 %114, 7
  store i32 %115, i32* %5, align 4
  %116 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %117 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @FTGMAC100_OFFSET_TPAFCR, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i32 @ioread32(i64 %120)
  store i32 %121, i32* %3, align 4
  %122 = load i32, i32* %3, align 4
  %123 = and i32 %122, -1056964609
  store i32 %123, i32* %3, align 4
  %124 = load i32, i32* %5, align 4
  %125 = shl i32 %124, 27
  %126 = load i32, i32* %3, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %3, align 4
  %128 = load i32, i32* %4, align 4
  %129 = shl i32 %128, 24
  %130 = load i32, i32* %3, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %3, align 4
  %132 = load i32, i32* %3, align 4
  %133 = load %struct.ftgmac100*, %struct.ftgmac100** %2, align 8
  %134 = getelementptr inbounds %struct.ftgmac100, %struct.ftgmac100* %133, i32 0, i32 4
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @FTGMAC100_OFFSET_TPAFCR, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @iowrite32(i32 %132, i64 %137)
  ret void
}

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @FTGMAC100_RBSR_SIZE(i32) #1

declare dso_local i32 @FTGMAC100_APTC_RXPOLL_CNT(i32) #1

declare dso_local i32 @ftgmac100_write_mac_addr(%struct.ftgmac100*, i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_RXDES_SIZE(i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_TXDES_SIZE(i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_RXBURST_SIZE(i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_TXBURST_SIZE(i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_RXFIFO_HTHR(i32) #1

declare dso_local i32 @FTGMAC100_DBLAC_RXFIFO_LTHR(i32) #1

declare dso_local i32 @FTGMAC100_ITC_RXINT_THR(i32) #1

declare dso_local i32 @FTGMAC100_ITC_TXINT_THR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
