; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt2025c_select_phy_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_qt202x_phy.c_qt2025c_select_phy_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { i64, i32, %struct.qt202x_phy_data* }
%struct.qt202x_phy_data = type { i32 }
%struct.falcon_board = type { i64, i32 }

@LOOPBACK_NONE = common dso_local global i64 0, align 8
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Switching PHY to mode 0x%04x\0A\00", align 1
@PMA_PMD_MODE_REG = common dso_local global i32 0, align 4
@PMA_PMD_RXIN_SEL_LBN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"PHY microcontroller reset during mode switch timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_nic*)* @qt2025c_select_phy_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qt2025c_select_phy_mode(%struct.ef4_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ef4_nic*, align 8
  %4 = alloca %struct.qt202x_phy_data*, align 8
  %5 = alloca %struct.falcon_board*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %3, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 2
  %12 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %11, align 8
  store %struct.qt202x_phy_data* %12, %struct.qt202x_phy_data** %4, align 8
  %13 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %14 = call %struct.falcon_board* @falcon_board(%struct.ef4_nic* %13)
  store %struct.falcon_board* %14, %struct.falcon_board** %5, align 8
  %15 = load %struct.qt202x_phy_data*, %struct.qt202x_phy_data** %4, align 8
  %16 = getelementptr inbounds %struct.qt202x_phy_data, %struct.qt202x_phy_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %17, 33554688
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %147

20:                                               ; preds = %1
  %21 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %22 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @LOOPBACK_NONE, align 8
  %25 = icmp eq i64 %23, %24
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 56, i32 32
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %29 = call i32 @ef4_mdio_read(%struct.ef4_nic* %28, i32 1, i32 49945)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = and i32 %30, 56
  %32 = load i32, i32* %9, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %147

35:                                               ; preds = %20
  %36 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %37 = load i32, i32* @hw, align 4
  %38 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %39 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @netif_dbg(%struct.ef4_nic* %36, i32 %37, i32 %40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %44 = call i32 @ef4_mdio_write(%struct.ef4_nic* %43, i32 1, i32 49920, i32 0)
  %45 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %46 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %35
  %50 = load %struct.falcon_board*, %struct.falcon_board** %5, align 8
  %51 = getelementptr inbounds %struct.falcon_board, %struct.falcon_board* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %52, 2
  br i1 %53, label %54, label %73

54:                                               ; preds = %49
  %55 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %56 = call i32 @ef4_mdio_write(%struct.ef4_nic* %55, i32 1, i32 49923, i32 17560)
  store i32 0, i32* %8, align 4
  br label %57

57:                                               ; preds = %69, %54
  %58 = load i32, i32* %8, align 4
  %59 = icmp slt i32 %58, 9
  br i1 %59, label %60, label %72

60:                                               ; preds = %57
  %61 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %62 = call i32 @ef4_mdio_write(%struct.ef4_nic* %61, i32 1, i32 49923, i32 17544)
  %63 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %64 = call i32 @ef4_mdio_write(%struct.ef4_nic* %63, i32 1, i32 49923, i32 17536)
  %65 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %66 = call i32 @ef4_mdio_write(%struct.ef4_nic* %65, i32 1, i32 49923, i32 17552)
  %67 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %68 = call i32 @ef4_mdio_write(%struct.ef4_nic* %67, i32 1, i32 49923, i32 17560)
  br label %69

69:                                               ; preds = %60
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %57

72:                                               ; preds = %57
  br label %96

73:                                               ; preds = %49, %35
  %74 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %75 = call i32 @ef4_mdio_write(%struct.ef4_nic* %74, i32 1, i32 49923, i32 2336)
  %76 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %77 = call i32 @ef4_mdio_write(%struct.ef4_nic* %76, i32 1, i32 53256, i32 4)
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %90, %73
  %79 = load i32, i32* %8, align 4
  %80 = icmp slt i32 %79, 9
  br i1 %80, label %81, label %93

81:                                               ; preds = %78
  %82 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %83 = call i32 @ef4_mdio_write(%struct.ef4_nic* %82, i32 1, i32 49923, i32 2304)
  %84 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %85 = call i32 @ef4_mdio_write(%struct.ef4_nic* %84, i32 1, i32 53256, i32 5)
  %86 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %87 = call i32 @ef4_mdio_write(%struct.ef4_nic* %86, i32 1, i32 49923, i32 2336)
  %88 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %89 = call i32 @ef4_mdio_write(%struct.ef4_nic* %88, i32 1, i32 53256, i32 4)
  br label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %8, align 4
  br label %78

93:                                               ; preds = %78
  %94 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %95 = call i32 @ef4_mdio_write(%struct.ef4_nic* %94, i32 1, i32 49923, i32 18688)
  br label %96

96:                                               ; preds = %93, %72
  %97 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %98 = call i32 @ef4_mdio_write(%struct.ef4_nic* %97, i32 1, i32 49923, i32 18688)
  %99 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %100 = call i32 @ef4_mdio_write(%struct.ef4_nic* %99, i32 1, i32 49922, i32 4)
  %101 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %102 = call i32 @ef4_mdio_write(%struct.ef4_nic* %101, i32 1, i32 49942, i32 19)
  %103 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %104 = call i32 @ef4_mdio_write(%struct.ef4_nic* %103, i32 1, i32 49944, i32 84)
  %105 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %106 = load i32, i32* %9, align 4
  %107 = call i32 @ef4_mdio_write(%struct.ef4_nic* %105, i32 1, i32 49945, i32 %106)
  %108 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %109 = call i32 @ef4_mdio_write(%struct.ef4_nic* %108, i32 1, i32 49946, i32 152)
  %110 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %111 = call i32 @ef4_mdio_write(%struct.ef4_nic* %110, i32 3, i32 38, i32 3584)
  %112 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %113 = call i32 @ef4_mdio_write(%struct.ef4_nic* %112, i32 3, i32 39, i32 19)
  %114 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %115 = call i32 @ef4_mdio_write(%struct.ef4_nic* %114, i32 3, i32 40, i32 42280)
  %116 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %117 = call i32 @ef4_mdio_write(%struct.ef4_nic* %116, i32 1, i32 53254, i32 10)
  %118 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %119 = call i32 @ef4_mdio_write(%struct.ef4_nic* %118, i32 1, i32 53255, i32 9)
  %120 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %121 = call i32 @ef4_mdio_write(%struct.ef4_nic* %120, i32 1, i32 53256, i32 4)
  %122 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %123 = call i32 @ef4_mdio_write(%struct.ef4_nic* %122, i32 1, i32 49943, i32 255)
  %124 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %125 = load i32, i32* @PMA_PMD_MODE_REG, align 4
  %126 = load i32, i32* @PMA_PMD_RXIN_SEL_LBN, align 4
  %127 = shl i32 1, %126
  %128 = call i32 @ef4_mdio_set_flag(%struct.ef4_nic* %124, i32 1, i32 %125, i32 %127, i32 0)
  %129 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %130 = call i32 @ef4_mdio_write(%struct.ef4_nic* %129, i32 1, i32 49920, i32 2)
  %131 = call i32 @msleep(i32 20)
  %132 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %133 = call i32 @qt2025c_restart_firmware(%struct.ef4_nic* %132)
  %134 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %135 = call i32 @qt2025c_wait_reset(%struct.ef4_nic* %134)
  store i32 %135, i32* %7, align 4
  %136 = load i32, i32* %7, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %96
  %139 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %140 = load i32, i32* @hw, align 4
  %141 = load %struct.ef4_nic*, %struct.ef4_nic** %3, align 8
  %142 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @netif_err(%struct.ef4_nic* %139, i32 %140, i32 %143, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  %145 = load i32, i32* %7, align 4
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %96
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %138, %34, %19
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local %struct.falcon_board* @falcon_board(%struct.ef4_nic*) #1

declare dso_local i32 @ef4_mdio_read(%struct.ef4_nic*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.ef4_nic*, i32, i32, i8*, i32) #1

declare dso_local i32 @ef4_mdio_write(%struct.ef4_nic*, i32, i32, i32) #1

declare dso_local i32 @ef4_mdio_set_flag(%struct.ef4_nic*, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @qt2025c_restart_firmware(%struct.ef4_nic*) #1

declare dso_local i32 @qt2025c_wait_reset(%struct.ef4_nic*) #1

declare dso_local i32 @netif_err(%struct.ef4_nic*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
