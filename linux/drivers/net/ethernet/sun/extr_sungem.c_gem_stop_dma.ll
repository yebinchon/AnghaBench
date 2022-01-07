; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_stop_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_stop_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gem = type { i64 }

@TXDMA_CFG = common dso_local global i64 0, align 8
@TXDMA_CFG_ENABLE = common dso_local global i32 0, align 4
@RXDMA_CFG = common dso_local global i64 0, align 8
@RXDMA_CFG_ENABLE = common dso_local global i32 0, align 4
@MAC_TXCFG = common dso_local global i64 0, align 8
@MAC_TXCFG_ENAB = common dso_local global i32 0, align 4
@MAC_RXCFG = common dso_local global i64 0, align 8
@MAC_RXCFG_ENAB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gem*)* @gem_stop_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gem_stop_dma(%struct.gem* %0) #0 {
  %2 = alloca %struct.gem*, align 8
  %3 = alloca i32, align 4
  store %struct.gem* %0, %struct.gem** %2, align 8
  %4 = load %struct.gem*, %struct.gem** %2, align 8
  %5 = getelementptr inbounds %struct.gem, %struct.gem* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @TXDMA_CFG, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @TXDMA_CFG_ENABLE, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = load %struct.gem*, %struct.gem** %2, align 8
  %15 = getelementptr inbounds %struct.gem, %struct.gem* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TXDMA_CFG, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @writel(i32 %13, i64 %18)
  %20 = load %struct.gem*, %struct.gem** %2, align 8
  %21 = getelementptr inbounds %struct.gem, %struct.gem* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @RXDMA_CFG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @RXDMA_CFG_ENABLE, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load %struct.gem*, %struct.gem** %2, align 8
  %31 = getelementptr inbounds %struct.gem, %struct.gem* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @RXDMA_CFG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @writel(i32 %29, i64 %34)
  %36 = load %struct.gem*, %struct.gem** %2, align 8
  %37 = getelementptr inbounds %struct.gem, %struct.gem* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAC_TXCFG, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* @MAC_TXCFG_ENAB, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = load %struct.gem*, %struct.gem** %2, align 8
  %47 = getelementptr inbounds %struct.gem, %struct.gem* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MAC_TXCFG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @writel(i32 %45, i64 %50)
  %52 = load %struct.gem*, %struct.gem** %2, align 8
  %53 = getelementptr inbounds %struct.gem, %struct.gem* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @MAC_RXCFG, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @readl(i64 %56)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = load i32, i32* @MAC_RXCFG_ENAB, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = load %struct.gem*, %struct.gem** %2, align 8
  %63 = getelementptr inbounds %struct.gem, %struct.gem* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MAC_RXCFG, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @writel(i32 %61, i64 %66)
  %68 = load %struct.gem*, %struct.gem** %2, align 8
  %69 = getelementptr inbounds %struct.gem, %struct.gem* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MAC_RXCFG, align 8
  %72 = add nsw i64 %70, %71
  %73 = call i32 @readl(i64 %72)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
