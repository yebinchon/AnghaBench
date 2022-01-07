; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_pblx8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_pblx8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i32 }

@DMA_CH_CR = common dso_local global i32 0, align 4
@DMA_CH_CR_PBLX8_POS = common dso_local global i32 0, align 4
@DMA_CH_CR_PBLX8_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_config_pblx8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_config_pblx8(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 2
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %7, align 8
  store %struct.xlgmac_channel* %8, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %32, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %37

15:                                               ; preds = %9
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = load i32, i32* @DMA_CH_CR, align 4
  %18 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %16, i32 %17)
  %19 = call i32 @readl(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @DMA_CH_CR_PBLX8_POS, align 4
  %22 = load i32, i32* @DMA_CH_CR_PBLX8_LEN, align 4
  %23 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %24 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @XLGMAC_SET_REG_BITS(i32 %20, i32 %21, i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %29 = load i32, i32* @DMA_CH_CR, align 4
  %30 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %28, i32 %29)
  %31 = call i32 @writel(i32 %27, i32 %30)
  br label %32

32:                                               ; preds = %15
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %4, align 4
  %35 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %36 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %35, i32 1
  store %struct.xlgmac_channel* %36, %struct.xlgmac_channel** %3, align 8
  br label %9

37:                                               ; preds = %9
  ret i32 0
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
