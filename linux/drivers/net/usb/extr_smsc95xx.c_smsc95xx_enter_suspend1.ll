; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_enter_suspend1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.mii_if_info, i64* }
%struct.mii_if_info = type { i32 }
%struct.smsc95xx_priv = type { i32, i32 }

@FEATURE_PHY_NLP_CROSSOVER = common dso_local global i32 0, align 4
@PHY_EDPD_CONFIG = common dso_local global i32 0, align 4
@PHY_EDPD_CONFIG_DEFAULT = common dso_local global i32 0, align 4
@PHY_MODE_CTRL_STS = common dso_local global i32 0, align 4
@MODE_CTRL_STS_EDPWRDOWN_ = common dso_local global i32 0, align 4
@PM_CTRL = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_ = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ = common dso_local global i32 0, align 4
@PM_CTL_PHY_RST_ = common dso_local global i32 0, align 4
@PM_CTL_SUS_MODE_1 = common dso_local global i32 0, align 4
@PM_CTL_WUPS_ED_ = common dso_local global i32 0, align 4
@PM_CTL_ED_EN_ = common dso_local global i32 0, align 4
@SUSPEND_SUSPEND1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @smsc95xx_enter_suspend1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_enter_suspend1(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca %struct.smsc95xx_priv*, align 8
  %5 = alloca %struct.mii_if_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 2
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %13, %struct.smsc95xx_priv** %4, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 1
  store %struct.mii_if_info* %15, %struct.mii_if_info** %5, align 8
  %16 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %17 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @FEATURE_PHY_NLP_CROSSOVER, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %32

22:                                               ; preds = %1
  %23 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %24 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %27 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PHY_EDPD_CONFIG, align 4
  %30 = load i32, i32* @PHY_EDPD_CONFIG_DEFAULT, align 4
  %31 = call i32 @smsc95xx_mdio_write_nopm(i32 %25, i32 %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %1
  %33 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %37 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @PHY_MODE_CTRL_STS, align 4
  %40 = call i32 @smsc95xx_mdio_read_nopm(i32 %35, i32 %38, i32 %39)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %32
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %109

45:                                               ; preds = %32
  %46 = load i32, i32* @MODE_CTRL_STS_EDPWRDOWN_, align 4
  %47 = load i32, i32* %7, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %7, align 4
  %49 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mii_if_info*, %struct.mii_if_info** %5, align 8
  %53 = getelementptr inbounds %struct.mii_if_info, %struct.mii_if_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @PHY_MODE_CTRL_STS, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @smsc95xx_mdio_write_nopm(i32 %51, i32 %54, i32 %55, i32 %56)
  %58 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %59 = load i32, i32* @PM_CTRL, align 4
  %60 = call i32 @smsc95xx_read_reg_nopm(%struct.usbnet* %58, i32 %59, i32* %6)
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %45
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %2, align 4
  br label %109

65:                                               ; preds = %45
  %66 = load i32, i32* @PM_CTL_SUS_MODE_, align 4
  %67 = load i32, i32* @PM_CTL_WUPS_, align 4
  %68 = or i32 %66, %67
  %69 = load i32, i32* @PM_CTL_PHY_RST_, align 4
  %70 = or i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* @PM_CTL_SUS_MODE_1, align 4
  %75 = load i32, i32* %6, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %78 = load i32, i32* @PM_CTRL, align 4
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %77, i32 %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %65
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %109

85:                                               ; preds = %65
  %86 = load i32, i32* @PM_CTL_WUPS_, align 4
  %87 = xor i32 %86, -1
  %88 = load i32, i32* %6, align 4
  %89 = and i32 %88, %87
  store i32 %89, i32* %6, align 4
  %90 = load i32, i32* @PM_CTL_WUPS_ED_, align 4
  %91 = load i32, i32* @PM_CTL_ED_EN_, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* %6, align 4
  %94 = or i32 %93, %92
  store i32 %94, i32* %6, align 4
  %95 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %96 = load i32, i32* @PM_CTRL, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @smsc95xx_write_reg_nopm(%struct.usbnet* %95, i32 %96, i32 %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %85
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %109

103:                                              ; preds = %85
  %104 = load i32, i32* @SUSPEND_SUSPEND1, align 4
  %105 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %4, align 8
  %106 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %104
  store i32 %108, i32* %106, align 4
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %103, %101, %83, %63, %43
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @smsc95xx_mdio_write_nopm(i32, i32, i32, i32) #1

declare dso_local i32 @smsc95xx_mdio_read_nopm(i32, i32, i32) #1

declare dso_local i32 @smsc95xx_read_reg_nopm(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @smsc95xx_write_reg_nopm(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
