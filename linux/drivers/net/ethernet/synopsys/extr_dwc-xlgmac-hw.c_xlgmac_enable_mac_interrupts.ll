; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_mac_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_mac_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64 }

@MAC_IER_TSIE_POS = common dso_local global i32 0, align 4
@MAC_IER_TSIE_LEN = common dso_local global i32 0, align 4
@MAC_IER = common dso_local global i64 0, align 8
@MMC_RIER = common dso_local global i64 0, align 8
@MMC_RIER_ALL_INTERRUPTS_POS = common dso_local global i32 0, align 4
@MMC_RIER_ALL_INTERRUPTS_LEN = common dso_local global i32 0, align 4
@MMC_TIER = common dso_local global i64 0, align 8
@MMC_TIER_ALL_INTERRUPTS_POS = common dso_local global i32 0, align 4
@MMC_TIER_ALL_INTERRUPTS_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_enable_mac_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_enable_mac_interrupts(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @MAC_IER_TSIE_POS, align 4
  %7 = load i32, i32* @MAC_IER_TSIE_LEN, align 4
  %8 = call i32 @XLGMAC_SET_REG_BITS(i32 %5, i32 %6, i32 %7, i32 1)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %11 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MAC_IER, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel(i32 %9, i64 %14)
  %16 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %17 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MMC_RIER, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MMC_RIER_ALL_INTERRUPTS_POS, align 4
  %24 = load i32, i32* @MMC_RIER_ALL_INTERRUPTS_LEN, align 4
  %25 = call i32 @XLGMAC_SET_REG_BITS(i32 %22, i32 %23, i32 %24, i32 -1)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %28 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MMC_RIER, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @writel(i32 %26, i64 %31)
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %34 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MMC_TIER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl(i64 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @MMC_TIER_ALL_INTERRUPTS_POS, align 4
  %41 = load i32, i32* @MMC_TIER_ALL_INTERRUPTS_LEN, align 4
  %42 = call i32 @XLGMAC_SET_REG_BITS(i32 %39, i32 %40, i32 %41, i32 -1)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %45 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MMC_TIER, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @writel(i32 %43, i64 %48)
  ret void
}

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
