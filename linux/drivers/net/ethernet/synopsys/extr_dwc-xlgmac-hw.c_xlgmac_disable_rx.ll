; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_disable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_disable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel*, i64 }
%struct.xlgmac_channel = type { i32 }

@MAC_RCR = common dso_local global i64 0, align 8
@MAC_RCR_DCRCC_POS = common dso_local global i32 0, align 4
@MAC_RCR_DCRCC_LEN = common dso_local global i32 0, align 4
@MAC_RCR_CST_POS = common dso_local global i32 0, align 4
@MAC_RCR_CST_LEN = common dso_local global i32 0, align 4
@MAC_RCR_ACS_POS = common dso_local global i32 0, align 4
@MAC_RCR_ACS_LEN = common dso_local global i32 0, align 4
@MAC_RCR_RE_POS = common dso_local global i32 0, align 4
@MAC_RCR_RE_LEN = common dso_local global i32 0, align 4
@MAC_RQC0R = common dso_local global i64 0, align 8
@DMA_CH_RCR = common dso_local global i32 0, align 4
@DMA_CH_RCR_SR_POS = common dso_local global i32 0, align 4
@DMA_CH_RCR_SR_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_disable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_disable_rx(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 3
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MAC_RCR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @readl(i64 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @MAC_RCR_DCRCC_POS, align 4
  %14 = load i32, i32* @MAC_RCR_DCRCC_LEN, align 4
  %15 = call i32 @XLGMAC_SET_REG_BITS(i32 %12, i32 %13, i32 %14, i32 0)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @MAC_RCR_CST_POS, align 4
  %18 = load i32, i32* @MAC_RCR_CST_LEN, align 4
  %19 = call i32 @XLGMAC_SET_REG_BITS(i32 %16, i32 %17, i32 %18, i32 0)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @MAC_RCR_ACS_POS, align 4
  %22 = load i32, i32* @MAC_RCR_ACS_LEN, align 4
  %23 = call i32 @XLGMAC_SET_REG_BITS(i32 %20, i32 %21, i32 %22, i32 0)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @MAC_RCR_RE_POS, align 4
  %26 = load i32, i32* @MAC_RCR_RE_LEN, align 4
  %27 = call i32 @XLGMAC_SET_REG_BITS(i32 %24, i32 %25, i32 %26, i32 0)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @MAC_RCR, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @writel(i32 %28, i64 %33)
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %45, %1
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %38 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ult i32 %36, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %35
  %42 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @xlgmac_prepare_rx_stop(%struct.xlgmac_pdata* %42, i32 %43)
  br label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %35

48:                                               ; preds = %35
  %49 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %50 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %49, i32 0, i32 3
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @MAC_RQC0R, align 8
  %53 = add nsw i64 %51, %52
  %54 = call i32 @writel(i32 0, i64 %53)
  %55 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %56 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %55, i32 0, i32 2
  %57 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %56, align 8
  store %struct.xlgmac_channel* %57, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %84, %48
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %61 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58
  %65 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %66 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  br label %89

70:                                               ; preds = %64
  %71 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %72 = load i32, i32* @DMA_CH_RCR, align 4
  %73 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %71, i32 %72)
  %74 = call i32 @readl(i64 %73)
  store i32 %74, i32* %5, align 4
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @DMA_CH_RCR_SR_POS, align 4
  %77 = load i32, i32* @DMA_CH_RCR_SR_LEN, align 4
  %78 = call i32 @XLGMAC_SET_REG_BITS(i32 %75, i32 %76, i32 %77, i32 0)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %81 = load i32, i32* @DMA_CH_RCR, align 4
  %82 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %80, i32 %81)
  %83 = call i32 @writel(i32 %79, i64 %82)
  br label %84

84:                                               ; preds = %70
  %85 = load i32, i32* %4, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %4, align 4
  %87 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %88 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %87, i32 1
  store %struct.xlgmac_channel* %88, %struct.xlgmac_channel** %3, align 8
  br label %58

89:                                               ; preds = %69, %58
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @xlgmac_prepare_rx_stop(%struct.xlgmac_pdata*, i32) #1

declare dso_local i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
