; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i64, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }

@MAC_PFR = common dso_local global i64 0, align 8
@MAC_PFR_HPF_POS = common dso_local global i32 0, align 4
@MAC_PFR_HPF_LEN = common dso_local global i32 0, align 4
@MAC_PFR_HUC_POS = common dso_local global i32 0, align 4
@MAC_PFR_HUC_LEN = common dso_local global i32 0, align 4
@MAC_PFR_HMC_POS = common dso_local global i32 0, align 4
@MAC_PFR_HMC_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_config_mac_address to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_config_mac_address(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %4 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %5 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %6 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %5, i32 0, i32 2
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @xlgmac_set_mac_address(%struct.xlgmac_pdata* %4, i32 %9)
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %42

16:                                               ; preds = %1
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %18 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MAC_PFR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = load i32, i32* @MAC_PFR_HPF_POS, align 4
  %25 = load i32, i32* @MAC_PFR_HPF_LEN, align 4
  %26 = call i32 @XLGMAC_SET_REG_BITS(i32 %23, i32 %24, i32 %25, i32 1)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @MAC_PFR_HUC_POS, align 4
  %29 = load i32, i32* @MAC_PFR_HUC_LEN, align 4
  %30 = call i32 @XLGMAC_SET_REG_BITS(i32 %27, i32 %28, i32 %29, i32 1)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* @MAC_PFR_HMC_POS, align 4
  %33 = load i32, i32* @MAC_PFR_HMC_LEN, align 4
  %34 = call i32 @XLGMAC_SET_REG_BITS(i32 %31, i32 %32, i32 %33, i32 1)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %37 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MAC_PFR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel(i32 %35, i64 %40)
  br label %42

42:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @xlgmac_set_mac_address(%struct.xlgmac_pdata*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
