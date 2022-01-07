; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_set_strobe_dll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-esdhc-imx.c_esdhc_set_strobe_dll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_host = type { i32, i64 }

@ESDHC_VENDOR_SPEC = common dso_local global i64 0, align 8
@ESDHC_VENDOR_SPEC_FRC_SDCLK_ON = common dso_local global i32 0, align 4
@ESDHC_STROBE_DLL_CTRL_RESET = common dso_local global i32 0, align 4
@ESDHC_STROBE_DLL_CTRL = common dso_local global i64 0, align 8
@ESDHC_STROBE_DLL_CTRL_ENABLE = common dso_local global i32 0, align 4
@ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT = common dso_local global i32 0, align 4
@ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT = common dso_local global i32 0, align 4
@ESDHC_STROBE_DLL_STATUS = common dso_local global i64 0, align 8
@ESDHC_STROBE_DLL_STS_REF_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"warning! HS400 strobe DLL status REF not lock!\0A\00", align 1
@ESDHC_STROBE_DLL_STS_SLV_LOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"warning! HS400 strobe DLL status SLV not lock!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_host*)* @esdhc_set_strobe_dll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esdhc_set_strobe_dll(%struct.sdhci_host* %0) #0 {
  %2 = alloca %struct.sdhci_host*, align 8
  %3 = alloca i32, align 4
  store %struct.sdhci_host* %0, %struct.sdhci_host** %2, align 8
  %4 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readl(i64 %8)
  %10 = load i32, i32* @ESDHC_VENDOR_SPEC_FRC_SDCLK_ON, align 4
  %11 = xor i32 %10, -1
  %12 = and i32 %9, %11
  %13 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %14 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ESDHC_VENDOR_SPEC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @writel(i32 %12, i64 %17)
  %19 = load i32, i32* @ESDHC_STROBE_DLL_CTRL_RESET, align 4
  %20 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ESDHC_STROBE_DLL_CTRL, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @writel(i32 %19, i64 %24)
  %26 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %27 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ESDHC_STROBE_DLL_CTRL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel(i32 0, i64 %30)
  %32 = load i32, i32* @ESDHC_STROBE_DLL_CTRL_ENABLE, align 4
  %33 = load i32, i32* @ESDHC_STROBE_DLL_CTRL_SLV_UPDATE_INT_DEFAULT, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @ESDHC_STROBE_DLL_CTRL_SLV_DLY_TARGET_SHIFT, align 4
  %36 = shl i32 7, %35
  %37 = or i32 %34, %36
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %40 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ESDHC_STROBE_DLL_CTRL, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @writel(i32 %38, i64 %43)
  %45 = call i32 @udelay(i32 5)
  %46 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %47 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ESDHC_STROBE_DLL_STATUS, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @readl(i64 %50)
  store i32 %51, i32* %3, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @ESDHC_STROBE_DLL_STS_REF_LOCK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %62, label %56

56:                                               ; preds = %1
  %57 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %58 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mmc_dev(i32 %59)
  %61 = call i32 @dev_warn(i32 %60, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %62

62:                                               ; preds = %56, %1
  %63 = load i32, i32* %3, align 4
  %64 = load i32, i32* @ESDHC_STROBE_DLL_STS_SLV_LOCK, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %62
  %68 = load %struct.sdhci_host*, %struct.sdhci_host** %2, align 8
  %69 = getelementptr inbounds %struct.sdhci_host, %struct.sdhci_host* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mmc_dev(i32 %70)
  %72 = call i32 @dev_warn(i32 %71, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %73

73:                                               ; preds = %67, %62
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
