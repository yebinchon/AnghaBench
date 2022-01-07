; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i64, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i32 }

@DMA_CH_RCR = common dso_local global i32 0, align 4
@DMA_CH_RCR_SR_POS = common dso_local global i32 0, align 4
@DMA_CH_RCR_SR_LEN = common dso_local global i32 0, align 4
@MAC_RQC0R = common dso_local global i64 0, align 8
@MAC_RCR = common dso_local global i64 0, align 8
@MAC_RCR_DCRCC_POS = common dso_local global i32 0, align 4
@MAC_RCR_DCRCC_LEN = common dso_local global i32 0, align 4
@MAC_RCR_CST_POS = common dso_local global i32 0, align 4
@MAC_RCR_CST_LEN = common dso_local global i32 0, align 4
@MAC_RCR_ACS_POS = common dso_local global i32 0, align 4
@MAC_RCR_ACS_LEN = common dso_local global i32 0, align 4
@MAC_RCR_RE_POS = common dso_local global i32 0, align 4
@MAC_RCR_RE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_enable_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_enable_rx(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 3
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %7, align 8
  store %struct.xlgmac_channel* %8, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %35, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %40

15:                                               ; preds = %9
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %40

21:                                               ; preds = %15
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %23 = load i32, i32* @DMA_CH_RCR, align 4
  %24 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %22, i32 %23)
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMA_CH_RCR_SR_POS, align 4
  %28 = load i32, i32* @DMA_CH_RCR_SR_LEN, align 4
  %29 = call i32 @XLGMAC_SET_REG_BITS(i32 %26, i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %32 = load i32, i32* @DMA_CH_RCR, align 4
  %33 = call i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %31, i32 %32)
  %34 = call i32 @writel(i32 %30, i64 %33)
  br label %35

35:                                               ; preds = %21
  %36 = load i32, i32* %5, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %5, align 4
  %38 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %39 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %38, i32 1
  store %struct.xlgmac_channel* %39, %struct.xlgmac_channel** %3, align 8
  br label %9

40:                                               ; preds = %20, %9
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %53, %40
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ult i32 %42, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 %48, 1
  %50 = shl i32 2, %49
  %51 = load i32, i32* %4, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %41

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %59 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MAC_RQC0R, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @writel(i32 %57, i64 %62)
  %64 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %65 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @MAC_RCR, align 8
  %68 = add nsw i64 %66, %67
  %69 = call i32 @readl(i64 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @MAC_RCR_DCRCC_POS, align 4
  %72 = load i32, i32* @MAC_RCR_DCRCC_LEN, align 4
  %73 = call i32 @XLGMAC_SET_REG_BITS(i32 %70, i32 %71, i32 %72, i32 1)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @MAC_RCR_CST_POS, align 4
  %76 = load i32, i32* @MAC_RCR_CST_LEN, align 4
  %77 = call i32 @XLGMAC_SET_REG_BITS(i32 %74, i32 %75, i32 %76, i32 1)
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* %4, align 4
  %79 = load i32, i32* @MAC_RCR_ACS_POS, align 4
  %80 = load i32, i32* @MAC_RCR_ACS_LEN, align 4
  %81 = call i32 @XLGMAC_SET_REG_BITS(i32 %78, i32 %79, i32 %80, i32 1)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @MAC_RCR_RE_POS, align 4
  %84 = load i32, i32* @MAC_RCR_RE_LEN, align 4
  %85 = call i32 @XLGMAC_SET_REG_BITS(i32 %82, i32 %83, i32 %84, i32 1)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %88 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @MAC_RCR, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @writel(i32 %86, i64 %91)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
