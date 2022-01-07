; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_eeprom_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_sfp_eeprom_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_sfp_eeprom = type { i32*, i32* }
%struct.xgbe_sfp_ascii = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"SFP detected:\0A\00", align 1
@XGBE_SFP_BASE_VENDOR_NAME = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_VENDOR_NAME_LEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"  vendor:         %s\0A\00", align 1
@XGBE_SFP_BASE_VENDOR_PN = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_VENDOR_PN_LEN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"  part number:    %s\0A\00", align 1
@XGBE_SFP_BASE_VENDOR_REV = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_VENDOR_REV_LEN = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"  revision level: %s\0A\00", align 1
@XGBE_SFP_BASE_VENDOR_SN = common dso_local global i64 0, align 8
@XGBE_SFP_BASE_VENDOR_SN_LEN = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [22 x i8] c"  serial number:  %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*, %struct.xgbe_sfp_eeprom*)* @xgbe_phy_sfp_eeprom_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_phy_sfp_eeprom_info(%struct.xgbe_prv_data* %0, %struct.xgbe_sfp_eeprom* %1) #0 {
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_sfp_eeprom*, align 8
  %5 = alloca %struct.xgbe_sfp_ascii, align 4
  %6 = alloca i8*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  store %struct.xgbe_sfp_eeprom* %1, %struct.xgbe_sfp_eeprom** %4, align 8
  %7 = bitcast %struct.xgbe_sfp_ascii* %5 to i8*
  store i8* %7, i8** %6, align 8
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = load i32, i32* @drv, align 4
  %10 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %11 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** %6, align 8
  %15 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %16 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @XGBE_SFP_BASE_VENDOR_NAME, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i64, i64* @XGBE_SFP_BASE_VENDOR_NAME_LEN, align 8
  %21 = call i32 @memcpy(i8* %14, i32* %19, i64 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i64, i64* @XGBE_SFP_BASE_VENDOR_NAME_LEN, align 8
  %24 = getelementptr inbounds i8, i8* %22, i64 %23
  store i8 0, i8* %24, align 1
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %28 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8* %30)
  %32 = load i8*, i8** %6, align 8
  %33 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %34 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @XGBE_SFP_BASE_VENDOR_PN, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i64, i64* @XGBE_SFP_BASE_VENDOR_PN_LEN, align 8
  %39 = call i32 @memcpy(i8* %32, i32* %37, i64 %38)
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* @XGBE_SFP_BASE_VENDOR_PN_LEN, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8 0, i8* %42, align 1
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = load i32, i32* @drv, align 4
  %45 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %46 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %43, i32 %44, i32 %47, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8* %48)
  %50 = load i8*, i8** %6, align 8
  %51 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %52 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @XGBE_SFP_BASE_VENDOR_REV, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i64, i64* @XGBE_SFP_BASE_VENDOR_REV_LEN, align 8
  %57 = call i32 @memcpy(i8* %50, i32* %55, i64 %56)
  %58 = load i8*, i8** %6, align 8
  %59 = load i64, i64* @XGBE_SFP_BASE_VENDOR_REV_LEN, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  store i8 0, i8* %60, align 1
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %62 = load i32, i32* @drv, align 4
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %61, i32 %62, i32 %65, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %66)
  %68 = load i8*, i8** %6, align 8
  %69 = load %struct.xgbe_sfp_eeprom*, %struct.xgbe_sfp_eeprom** %4, align 8
  %70 = getelementptr inbounds %struct.xgbe_sfp_eeprom, %struct.xgbe_sfp_eeprom* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @XGBE_SFP_BASE_VENDOR_SN, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  %74 = load i64, i64* @XGBE_SFP_BASE_VENDOR_SN_LEN, align 8
  %75 = call i32 @memcpy(i8* %68, i32* %73, i64 %74)
  %76 = load i8*, i8** %6, align 8
  %77 = load i64, i64* @XGBE_SFP_BASE_VENDOR_SN_LEN, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %80 = load i32, i32* @drv, align 4
  %81 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %82 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = call i32 (%struct.xgbe_prv_data*, i32, i32, i8*, ...) @netif_dbg(%struct.xgbe_prv_data* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i8* %84)
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
