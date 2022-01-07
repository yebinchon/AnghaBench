; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip1001_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_icplus.c_ip1001_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@IP1001_SPEC_CTRL_STATUS_2 = common dso_local global i32 0, align 4
@IP1001_APS_ON = common dso_local global i32 0, align 4
@IP10XX_SPEC_CTRL_STATUS = common dso_local global i32 0, align 4
@IP1001_RXPHASE_SEL = common dso_local global i32 0, align 4
@IP1001_TXPHASE_SEL = common dso_local global i32 0, align 4
@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_RXID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_RGMII_TXID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @ip1001_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip1001_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @ip1xx_reset(%struct.phy_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %94

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @IP1001_SPEC_CTRL_STATUS_2, align 4
  %14 = call i32 @phy_read(%struct.phy_device* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %94

19:                                               ; preds = %11
  %20 = load i32, i32* @IP1001_APS_ON, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %24 = load i32, i32* @IP1001_SPEC_CTRL_STATUS_2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @phy_write(%struct.phy_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %94

31:                                               ; preds = %19
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %93

35:                                               ; preds = %31
  %36 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %37 = load i32, i32* @IP10XX_SPEC_CTRL_STATUS, align 4
  %38 = call i32 @phy_read(%struct.phy_device* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %94

43:                                               ; preds = %35
  %44 = load i32, i32* @IP1001_RXPHASE_SEL, align 4
  %45 = load i32, i32* @IP1001_TXPHASE_SEL, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %4, align 4
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %43
  %56 = load i32, i32* @IP1001_RXPHASE_SEL, align 4
  %57 = load i32, i32* @IP1001_TXPHASE_SEL, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %4, align 4
  br label %83

61:                                               ; preds = %43
  %62 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %63 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_RXID, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %61
  %68 = load i32, i32* @IP1001_RXPHASE_SEL, align 4
  %69 = load i32, i32* %4, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %82

71:                                               ; preds = %61
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_TXID, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* @IP1001_TXPHASE_SEL, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  br label %81

81:                                               ; preds = %77, %71
  br label %82

82:                                               ; preds = %81, %67
  br label %83

83:                                               ; preds = %82, %55
  %84 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %85 = load i32, i32* @IP10XX_SPEC_CTRL_STATUS, align 4
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @phy_write(%struct.phy_device* %84, i32 %85, i32 %86)
  store i32 %87, i32* %4, align 4
  %88 = load i32, i32* %4, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  store i32 %91, i32* %2, align 4
  br label %94

92:                                               ; preds = %83
  br label %93

93:                                               ; preds = %92, %31
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %93, %90, %41, %29, %17, %9
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @ip1xx_reset(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
