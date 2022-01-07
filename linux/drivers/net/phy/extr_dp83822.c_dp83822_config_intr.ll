; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83822.c_dp83822_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83822.c_dp83822_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_DP83822_MISR1 = common dso_local global i32 0, align 4
@DP83822_RX_ERR_HF_INT_EN = common dso_local global i32 0, align 4
@DP83822_FALSE_CARRIER_HF_INT_EN = common dso_local global i32 0, align 4
@DP83822_ANEG_COMPLETE_INT_EN = common dso_local global i32 0, align 4
@DP83822_DUP_MODE_CHANGE_INT_EN = common dso_local global i32 0, align 4
@DP83822_SPEED_CHANGED_INT_EN = common dso_local global i32 0, align 4
@DP83822_LINK_STAT_INT_EN = common dso_local global i32 0, align 4
@DP83822_ENERGY_DET_INT_EN = common dso_local global i32 0, align 4
@DP83822_LINK_QUAL_INT_EN = common dso_local global i32 0, align 4
@MII_DP83822_MISR2 = common dso_local global i32 0, align 4
@DP83822_JABBER_DET_INT_EN = common dso_local global i32 0, align 4
@DP83822_WOL_PKT_INT_EN = common dso_local global i32 0, align 4
@DP83822_SLEEP_MODE_INT_EN = common dso_local global i32 0, align 4
@DP83822_MDI_XOVER_INT_EN = common dso_local global i32 0, align 4
@DP83822_LB_FIFO_INT_EN = common dso_local global i32 0, align 4
@DP83822_PAGE_RX_INT_EN = common dso_local global i32 0, align 4
@DP83822_ANEG_ERR_INT_EN = common dso_local global i32 0, align 4
@DP83822_EEE_ERROR_CHANGE_INT_EN = common dso_local global i32 0, align 4
@MII_DP83822_PHYSCR = common dso_local global i32 0, align 4
@DP83822_PHYSCR_INT_OE = common dso_local global i32 0, align 4
@DP83822_PHYSCR_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83822_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83822_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %94

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @MII_DP83822_MISR1, align 4
  %15 = call i32 @phy_read(%struct.phy_device* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %128

20:                                               ; preds = %12
  %21 = load i32, i32* @DP83822_RX_ERR_HF_INT_EN, align 4
  %22 = load i32, i32* @DP83822_FALSE_CARRIER_HF_INT_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @DP83822_ANEG_COMPLETE_INT_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @DP83822_DUP_MODE_CHANGE_INT_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DP83822_SPEED_CHANGED_INT_EN, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @DP83822_LINK_STAT_INT_EN, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @DP83822_ENERGY_DET_INT_EN, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @DP83822_LINK_QUAL_INT_EN, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %4, align 4
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MII_DP83822_MISR1, align 4
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @phy_write(%struct.phy_device* %38, i32 %39, i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %20
  %45 = load i32, i32* %6, align 4
  store i32 %45, i32* %2, align 4
  br label %128

46:                                               ; preds = %20
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = load i32, i32* @MII_DP83822_MISR2, align 4
  %49 = call i32 @phy_read(%struct.phy_device* %47, i32 %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %128

54:                                               ; preds = %46
  %55 = load i32, i32* @DP83822_JABBER_DET_INT_EN, align 4
  %56 = load i32, i32* @DP83822_WOL_PKT_INT_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @DP83822_SLEEP_MODE_INT_EN, align 4
  %59 = or i32 %57, %58
  %60 = load i32, i32* @DP83822_MDI_XOVER_INT_EN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @DP83822_LB_FIFO_INT_EN, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @DP83822_PAGE_RX_INT_EN, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @DP83822_ANEG_ERR_INT_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @DP83822_EEE_ERROR_CHANGE_INT_EN, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* %4, align 4
  %71 = or i32 %70, %69
  store i32 %71, i32* %4, align 4
  %72 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %73 = load i32, i32* @MII_DP83822_MISR2, align 4
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @phy_write(%struct.phy_device* %72, i32 %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %54
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %128

80:                                               ; preds = %54
  %81 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %82 = load i32, i32* @MII_DP83822_PHYSCR, align 4
  %83 = call i32 @phy_read(%struct.phy_device* %81, i32 %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %128

88:                                               ; preds = %80
  %89 = load i32, i32* @DP83822_PHYSCR_INT_OE, align 4
  %90 = load i32, i32* @DP83822_PHYSCR_INTEN, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %123

94:                                               ; preds = %1
  %95 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %96 = load i32, i32* @MII_DP83822_MISR1, align 4
  %97 = call i32 @phy_write(%struct.phy_device* %95, i32 %96, i32 0)
  store i32 %97, i32* %6, align 4
  %98 = load i32, i32* %6, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %6, align 4
  store i32 %101, i32* %2, align 4
  br label %128

102:                                              ; preds = %94
  %103 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %104 = load i32, i32* @MII_DP83822_MISR1, align 4
  %105 = call i32 @phy_write(%struct.phy_device* %103, i32 %104, i32 0)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %102
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %128

110:                                              ; preds = %102
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = load i32, i32* @MII_DP83822_PHYSCR, align 4
  %113 = call i32 @phy_read(%struct.phy_device* %111, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %110
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %128

118:                                              ; preds = %110
  %119 = load i32, i32* @DP83822_PHYSCR_INTEN, align 4
  %120 = xor i32 %119, -1
  %121 = load i32, i32* %5, align 4
  %122 = and i32 %121, %120
  store i32 %122, i32* %5, align 4
  br label %123

123:                                              ; preds = %118, %88
  %124 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %125 = load i32, i32* @MII_DP83822_PHYSCR, align 4
  %126 = load i32, i32* %5, align 4
  %127 = call i32 @phy_write(%struct.phy_device* %124, i32 %125, i32 %126)
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %123, %116, %108, %100, %86, %78, %52, %44, %18
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
