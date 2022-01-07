; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_read_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_read_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32, i32 }
%struct.xgbe_sfp_eeprom = type { i32*, i32* }

@.str = private unnamed_addr constant [31 x i8] c"%s: I2C error setting SFP MUX\0A\00", align 1
@XGBE_SFP_SERIAL_ID_ADDRESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"%s: I2C error reading SFP EEPROM\0A\00", align 1
@XGBE_SFP_BASE_CC = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XGBE_SFP_EXTD_CC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_sfp_read_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_sfp_read_eeprom(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca %struct.xgbe_sfp_eeprom, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 2
  %10 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %9, align 8
  store %struct.xgbe_phy_data* %10, %struct.xgbe_phy_data** %4, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = call i32 @xgbe_phy_sfp_get_mux(%struct.xgbe_prv_data* %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %1
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %20 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @netdev_name(i32 %21)
  %23 = call i32 @dev_err_once(i32 %18, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %2, align 4
  br label %94

25:                                               ; preds = %1
  store i64 0, i64* %6, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = load i32, i32* @XGBE_SFP_SERIAL_ID_ADDRESS, align 4
  %28 = call i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %26, i32 %27, i64* %6, i32 8, %struct.xgbe_sfp_eeprom* %5, i32 16)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @netdev_name(i32 %37)
  %39 = call i32 @dev_err_once(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  br label %90

40:                                               ; preds = %25
  %41 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %5, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @XGBE_SFP_BASE_CC, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %5, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @xgbe_phy_sfp_verify_eeprom(i32 %45, i32* %47, i32 7)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %7, align 4
  br label %90

53:                                               ; preds = %40
  %54 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %5, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i64, i64* @XGBE_SFP_EXTD_CC, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %5, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @xgbe_phy_sfp_verify_eeprom(i32 %58, i32* %60, i32 7)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %53
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %90

66:                                               ; preds = %53
  %67 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %68 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %67, i32 0, i32 1
  %69 = call i64 @memcmp(i32* %68, %struct.xgbe_sfp_eeprom* %5, i32 16)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %66
  %72 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %73 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %72, i32 0, i32 0
  store i32 1, i32* %73, align 4
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %75 = call i64 @netif_msg_drv(%struct.xgbe_prv_data* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %71
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %79 = call i32 @xgbe_phy_sfp_eeprom_info(%struct.xgbe_prv_data* %78, %struct.xgbe_sfp_eeprom* %5)
  br label %80

80:                                               ; preds = %77, %71
  %81 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %82 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %81, i32 0, i32 1
  %83 = call i32 @memcpy(i32* %82, %struct.xgbe_sfp_eeprom* %5, i32 16)
  %84 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %85 = call i32 @xgbe_phy_free_phy_device(%struct.xgbe_prv_data* %84)
  br label %89

86:                                               ; preds = %66
  %87 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %88 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %87, i32 0, i32 0
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %80
  br label %90

90:                                               ; preds = %89, %63, %50, %31
  %91 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %92 = call i32 @xgbe_phy_sfp_put_mux(%struct.xgbe_prv_data* %91)
  %93 = load i32, i32* %7, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %90, %15
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @xgbe_phy_sfp_get_mux(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_err_once(i32, i8*, i32) #1

declare dso_local i32 @netdev_name(i32) #1

declare dso_local i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data*, i32, i64*, i32, %struct.xgbe_sfp_eeprom*, i32) #1

declare dso_local i32 @xgbe_phy_sfp_verify_eeprom(i32, i32*, i32) #1

declare dso_local i64 @memcmp(i32*, %struct.xgbe_sfp_eeprom*, i32) #1

declare dso_local i64 @netif_msg_drv(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_eeprom_info(%struct.xgbe_prv_data*, %struct.xgbe_sfp_eeprom*) #1

declare dso_local i32 @memcpy(i32*, %struct.xgbe_sfp_eeprom*, i32) #1

declare dso_local i32 @xgbe_phy_free_phy_device(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_sfp_put_mux(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
