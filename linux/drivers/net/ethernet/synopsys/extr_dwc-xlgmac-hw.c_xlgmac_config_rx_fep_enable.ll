; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_fep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_fep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32 }

@MTL_Q_RQOMR = common dso_local global i32 0, align 4
@MTL_Q_RQOMR_FEP_POS = common dso_local global i32 0, align 4
@MTL_Q_RQOMR_FEP_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_config_rx_fep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_config_rx_fep_enable(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %27, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %8 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ult i32 %6, %9
  br i1 %10, label %11, label %30

11:                                               ; preds = %5
  %12 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @MTL_Q_RQOMR, align 4
  %15 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %12, i32 %13, i32 %14)
  %16 = call i32 @readl(i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @MTL_Q_RQOMR_FEP_POS, align 4
  %19 = load i32, i32* @MTL_Q_RQOMR_FEP_LEN, align 4
  %20 = call i32 @XLGMAC_SET_REG_BITS(i32 %17, i32 %18, i32 %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MTL_Q_RQOMR, align 4
  %25 = call i32 @XLGMAC_MTL_REG(%struct.xlgmac_pdata* %22, i32 %23, i32 %24)
  %26 = call i32 @writel(i32 %21, i32 %25)
  br label %27

27:                                               ; preds = %11
  %28 = load i32, i32* %3, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %3, align 4
  br label %5

30:                                               ; preds = %5
  ret void
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
