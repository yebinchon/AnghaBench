; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_dma_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_dma_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i64, i64 }

@DMA_CH_SR = common dso_local global i32 0, align 4
@DMA_CH_IER_NIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_NIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_AIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_AIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_FBEE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_FBEE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_TIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_TIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_RBUE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_RBUE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_RIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_RIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_enable_dma_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_enable_dma_interrupts(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 2
  %9 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %8, align 8
  store %struct.xlgmac_channel* %9, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %79, %1
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %13 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ult i32 %11, %14
  br i1 %15, label %16, label %84

16:                                               ; preds = %10
  %17 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %18 = load i32, i32* @DMA_CH_SR, align 4
  %19 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %17, i32 %18)
  %20 = call i32 @readl(i32 %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %23 = load i32, i32* @DMA_CH_SR, align 4
  %24 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %22, i32 %23)
  %25 = call i32 @writel(i32 %21, i32 %24)
  store i32 0, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @DMA_CH_IER_NIE_POS, align 4
  %28 = load i32, i32* @DMA_CH_IER_NIE_LEN, align 4
  %29 = call i32 @XLGMAC_SET_REG_BITS(i32 %26, i32 %27, i32 %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @DMA_CH_IER_AIE_POS, align 4
  %32 = load i32, i32* @DMA_CH_IER_AIE_LEN, align 4
  %33 = call i32 @XLGMAC_SET_REG_BITS(i32 %30, i32 %31, i32 %32, i32 1)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @DMA_CH_IER_FBEE_POS, align 4
  %36 = load i32, i32* @DMA_CH_IER_FBEE_LEN, align 4
  %37 = call i32 @XLGMAC_SET_REG_BITS(i32 %34, i32 %35, i32 %36, i32 1)
  store i32 %37, i32* %4, align 4
  %38 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %39 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %16
  %43 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %44 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @DMA_CH_IER_TIE_POS, align 4
  %50 = load i32, i32* @DMA_CH_IER_TIE_LEN, align 4
  %51 = call i32 @XLGMAC_SET_REG_BITS(i32 %48, i32 %49, i32 %50, i32 1)
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %16
  %54 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %55 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @DMA_CH_IER_RBUE_POS, align 4
  %61 = load i32, i32* @DMA_CH_IER_RBUE_LEN, align 4
  %62 = call i32 @XLGMAC_SET_REG_BITS(i32 %59, i32 %60, i32 %61, i32 1)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %64 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @DMA_CH_IER_RIE_POS, align 4
  %70 = load i32, i32* @DMA_CH_IER_RIE_LEN, align 4
  %71 = call i32 @XLGMAC_SET_REG_BITS(i32 %68, i32 %69, i32 %70, i32 1)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %67, %58
  br label %73

73:                                               ; preds = %72, %53
  %74 = load i32, i32* %3, align 4
  %75 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %76 = load i32, i32* @DMA_CH_IER, align 4
  %77 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %75, i32 %76)
  %78 = call i32 @writel(i32 %74, i32 %77)
  br label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %6, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %83 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %82, i32 1
  store %struct.xlgmac_channel* %83, %struct.xlgmac_channel** %5, align 8
  br label %10

84:                                               ; preds = %10
  ret void
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
