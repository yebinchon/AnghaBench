; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_enable_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_channel = type { i32 }

@DMA_CH_IER = common dso_local global i32 0, align 4
@DMA_CH_IER_TIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_TIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_TXSE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_TXSE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_TBUE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_TBUE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_RIE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_RIE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_RBUE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_RBUE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_RSE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_RSE_LEN = common dso_local global i32 0, align 4
@DMA_CH_IER_FBEE_POS = common dso_local global i32 0, align 4
@DMA_CH_IER_FBEE_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_channel*, i32)* @xlgmac_enable_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_enable_int(%struct.xlgmac_channel* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xlgmac_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_channel* %0, %struct.xlgmac_channel** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %8 = load i32, i32* @DMA_CH_IER, align 4
  %9 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %7, i32 %8)
  %10 = call i32 @readl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %62 [
    i32 130, label %12
    i32 128, label %17
    i32 131, label %22
    i32 133, label %27
    i32 134, label %32
    i32 132, label %37
    i32 129, label %42
    i32 135, label %51
    i32 136, label %56
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @DMA_CH_IER_TIE_POS, align 4
  %15 = load i32, i32* @DMA_CH_IER_TIE_LEN, align 4
  %16 = call i32 @XLGMAC_SET_REG_BITS(i32 %13, i32 %14, i32 %15, i32 1)
  store i32 %16, i32* %6, align 4
  br label %63

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @DMA_CH_IER_TXSE_POS, align 4
  %20 = load i32, i32* @DMA_CH_IER_TXSE_LEN, align 4
  %21 = call i32 @XLGMAC_SET_REG_BITS(i32 %18, i32 %19, i32 %20, i32 1)
  store i32 %21, i32* %6, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @DMA_CH_IER_TBUE_POS, align 4
  %25 = load i32, i32* @DMA_CH_IER_TBUE_LEN, align 4
  %26 = call i32 @XLGMAC_SET_REG_BITS(i32 %23, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %6, align 4
  br label %63

27:                                               ; preds = %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @DMA_CH_IER_RIE_POS, align 4
  %30 = load i32, i32* @DMA_CH_IER_RIE_LEN, align 4
  %31 = call i32 @XLGMAC_SET_REG_BITS(i32 %28, i32 %29, i32 %30, i32 1)
  store i32 %31, i32* %6, align 4
  br label %63

32:                                               ; preds = %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @DMA_CH_IER_RBUE_POS, align 4
  %35 = load i32, i32* @DMA_CH_IER_RBUE_LEN, align 4
  %36 = call i32 @XLGMAC_SET_REG_BITS(i32 %33, i32 %34, i32 %35, i32 1)
  store i32 %36, i32* %6, align 4
  br label %63

37:                                               ; preds = %2
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @DMA_CH_IER_RSE_POS, align 4
  %40 = load i32, i32* @DMA_CH_IER_RSE_LEN, align 4
  %41 = call i32 @XLGMAC_SET_REG_BITS(i32 %38, i32 %39, i32 %40, i32 1)
  store i32 %41, i32* %6, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @DMA_CH_IER_TIE_POS, align 4
  %45 = load i32, i32* @DMA_CH_IER_TIE_LEN, align 4
  %46 = call i32 @XLGMAC_SET_REG_BITS(i32 %43, i32 %44, i32 %45, i32 1)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @DMA_CH_IER_RIE_POS, align 4
  %49 = load i32, i32* @DMA_CH_IER_RIE_LEN, align 4
  %50 = call i32 @XLGMAC_SET_REG_BITS(i32 %47, i32 %48, i32 %49, i32 1)
  store i32 %50, i32* %6, align 4
  br label %63

51:                                               ; preds = %2
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @DMA_CH_IER_FBEE_POS, align 4
  %54 = load i32, i32* @DMA_CH_IER_FBEE_LEN, align 4
  %55 = call i32 @XLGMAC_SET_REG_BITS(i32 %52, i32 %53, i32 %54, i32 1)
  store i32 %55, i32* %6, align 4
  br label %63

56:                                               ; preds = %2
  %57 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %58 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %6, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %6, align 4
  br label %63

62:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %69

63:                                               ; preds = %56, %51, %42, %37, %32, %27, %22, %17, %12
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %4, align 8
  %66 = load i32, i32* @DMA_CH_IER, align 4
  %67 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %65, i32 %66)
  %68 = call i32 @writel(i32 %64, i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %62
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
