; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83tc811.c_dp83811_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_DP83811_INT_STAT1 = common dso_local global i32 0, align 4
@DP83811_RX_ERR_HF_INT_EN = common dso_local global i32 0, align 4
@DP83811_MS_TRAINING_INT_EN = common dso_local global i32 0, align 4
@DP83811_ANEG_COMPLETE_INT_EN = common dso_local global i32 0, align 4
@DP83811_ESD_EVENT_INT_EN = common dso_local global i32 0, align 4
@DP83811_WOL_INT_EN = common dso_local global i32 0, align 4
@DP83811_LINK_STAT_INT_EN = common dso_local global i32 0, align 4
@DP83811_ENERGY_DET_INT_EN = common dso_local global i32 0, align 4
@DP83811_LINK_QUAL_INT_EN = common dso_local global i32 0, align 4
@MII_DP83811_INT_STAT2 = common dso_local global i32 0, align 4
@DP83811_JABBER_DET_INT_EN = common dso_local global i32 0, align 4
@DP83811_POLARITY_INT_EN = common dso_local global i32 0, align 4
@DP83811_SLEEP_MODE_INT_EN = common dso_local global i32 0, align 4
@DP83811_OVERTEMP_INT_EN = common dso_local global i32 0, align 4
@DP83811_OVERVOLTAGE_INT_EN = common dso_local global i32 0, align 4
@DP83811_UNDERVOLTAGE_INT_EN = common dso_local global i32 0, align 4
@MII_DP83811_INT_STAT3 = common dso_local global i32 0, align 4
@DP83811_LPS_INT_EN = common dso_local global i32 0, align 4
@DP83811_NO_FRAME_INT_EN = common dso_local global i32 0, align 4
@DP83811_POR_DONE_INT_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83811_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83811_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %95

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = load i32, i32* @MII_DP83811_INT_STAT1, align 4
  %14 = call i32 @phy_read(%struct.phy_device* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %117

19:                                               ; preds = %11
  %20 = load i32, i32* @DP83811_RX_ERR_HF_INT_EN, align 4
  %21 = load i32, i32* @DP83811_MS_TRAINING_INT_EN, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @DP83811_ANEG_COMPLETE_INT_EN, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @DP83811_ESD_EVENT_INT_EN, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @DP83811_WOL_INT_EN, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @DP83811_LINK_STAT_INT_EN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @DP83811_ENERGY_DET_INT_EN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @DP83811_LINK_QUAL_INT_EN, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = load i32, i32* @MII_DP83811_INT_STAT1, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %37, i32 %38, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %19
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %117

45:                                               ; preds = %19
  %46 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %47 = load i32, i32* @MII_DP83811_INT_STAT2, align 4
  %48 = call i32 @phy_read(%struct.phy_device* %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %117

53:                                               ; preds = %45
  %54 = load i32, i32* @DP83811_JABBER_DET_INT_EN, align 4
  %55 = load i32, i32* @DP83811_POLARITY_INT_EN, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @DP83811_SLEEP_MODE_INT_EN, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @DP83811_OVERTEMP_INT_EN, align 4
  %60 = or i32 %58, %59
  %61 = load i32, i32* @DP83811_OVERVOLTAGE_INT_EN, align 4
  %62 = or i32 %60, %61
  %63 = load i32, i32* @DP83811_UNDERVOLTAGE_INT_EN, align 4
  %64 = or i32 %62, %63
  %65 = load i32, i32* %4, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %4, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %68 = load i32, i32* @MII_DP83811_INT_STAT2, align 4
  %69 = load i32, i32* %4, align 4
  %70 = call i32 @phy_write(%struct.phy_device* %67, i32 %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %53
  %74 = load i32, i32* %5, align 4
  store i32 %74, i32* %2, align 4
  br label %117

75:                                               ; preds = %53
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = load i32, i32* @MII_DP83811_INT_STAT3, align 4
  %78 = call i32 @phy_read(%struct.phy_device* %76, i32 %77)
  store i32 %78, i32* %4, align 4
  %79 = load i32, i32* %4, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %117

83:                                               ; preds = %75
  %84 = load i32, i32* @DP83811_LPS_INT_EN, align 4
  %85 = load i32, i32* @DP83811_NO_FRAME_INT_EN, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @DP83811_POR_DONE_INT_EN, align 4
  %88 = or i32 %86, %87
  %89 = load i32, i32* %4, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %4, align 4
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = load i32, i32* @MII_DP83811_INT_STAT3, align 4
  %93 = load i32, i32* %4, align 4
  %94 = call i32 @phy_write(%struct.phy_device* %91, i32 %92, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %115

95:                                               ; preds = %1
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = load i32, i32* @MII_DP83811_INT_STAT1, align 4
  %98 = call i32 @phy_write(%struct.phy_device* %96, i32 %97, i32 0)
  store i32 %98, i32* %5, align 4
  %99 = load i32, i32* %5, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %5, align 4
  store i32 %102, i32* %2, align 4
  br label %117

103:                                              ; preds = %95
  %104 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %105 = load i32, i32* @MII_DP83811_INT_STAT2, align 4
  %106 = call i32 @phy_write(%struct.phy_device* %104, i32 %105, i32 0)
  store i32 %106, i32* %5, align 4
  %107 = load i32, i32* %5, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %117

111:                                              ; preds = %103
  %112 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %113 = load i32, i32* @MII_DP83811_INT_STAT3, align 4
  %114 = call i32 @phy_write(%struct.phy_device* %112, i32 %113, i32 0)
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %111, %83
  %116 = load i32, i32* %5, align 4
  store i32 %116, i32* %2, align 4
  br label %117

117:                                              ; preds = %115, %109, %101, %81, %73, %51, %43, %17
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
