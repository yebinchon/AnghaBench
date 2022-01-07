; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }

@MTL_Q_RQOMR = common dso_local global i32 0, align 4
@MTL_Q_RQOMR_RTC_POS = common dso_local global i32 0, align 4
@MTL_Q_RQOMR_RTC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*, i32)* @xlgmac_config_rx_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_config_rx_threshold(%struct.xlgmac_pdata* %0, i32 %1) #0 {
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %30, %2
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %10 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ult i32 %8, %11
  br i1 %12, label %13, label %33

13:                                               ; preds = %7
  %14 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MTL_Q_RQOMR, align 4
  %17 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %14, i32 %15, i32 %16)
  %18 = call i32 @readl(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MTL_Q_RQOMR_RTC_POS, align 4
  %21 = load i32, i32* @MTL_Q_RQOMR_RTC_LEN, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @XLGMAC_SET_REG_BITS(i32 %19, i32 %20, i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @MTL_Q_RQOMR, align 4
  %28 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %25, i32 %26, i32 %27)
  %29 = call i32 @writel(i32 %24, i32 %28)
  br label %30

30:                                               ; preds = %13
  %31 = load i32, i32* %5, align 4
  %32 = add i32 %31, 1
  store i32 %32, i32* %5, align 4
  br label %7

33:                                               ; preds = %7
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata*, i32, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
