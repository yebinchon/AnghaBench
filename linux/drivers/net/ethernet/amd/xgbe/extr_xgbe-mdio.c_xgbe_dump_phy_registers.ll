; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_dump_phy_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-mdio.c_xgbe_dump_phy_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"\0A************* PHY Reg dump **********************\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"PCS Control Reg (%#06x) = %#06x\0A\00", align 1
@MDIO_CTRL1 = common dso_local global i64 0, align 8
@MDIO_MMD_PCS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"PCS Status Reg (%#06x) = %#06x\0A\00", align 1
@MDIO_STAT1 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [33 x i8] c"Phy Id (PHYS ID 1 %#06x)= %#06x\0A\00", align 1
@MDIO_DEVID1 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [33 x i8] c"Phy Id (PHYS ID 2 %#06x)= %#06x\0A\00", align 1
@MDIO_DEVID2 = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [35 x i8] c"Devices in Package (%#06x)= %#06x\0A\00", align 1
@MDIO_DEVS1 = common dso_local global i64 0, align 8
@MDIO_DEVS2 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [38 x i8] c"Auto-Neg Control Reg (%#06x) = %#06x\0A\00", align 1
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"Auto-Neg Status Reg (%#06x) = %#06x\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"Auto-Neg Ad Reg 1 (%#06x) = %#06x\0A\00", align 1
@MDIO_AN_ADVERTISE = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [35 x i8] c"Auto-Neg Ad Reg 2 (%#06x) = %#06x\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c"Auto-Neg Ad Reg 3 (%#06x) = %#06x\0A\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"Auto-Neg Completion Reg (%#06x) = %#06x\0A\00", align 1
@MDIO_AN_COMP_STAT = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [52 x i8] c"\0A*************************************************\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_dump_phy_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_dump_phy_registers(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  %6 = load %struct.device*, %struct.device** %5, align 8
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %7, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = load i64, i64* @MDIO_CTRL1, align 8
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = load i32, i32* @MDIO_MMD_PCS, align 4
  %13 = load i64, i64* @MDIO_CTRL1, align 8
  %14 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %11, i32 %12, i64 %13)
  %15 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %9, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %10, i32 %14)
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = load i64, i64* @MDIO_STAT1, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = load i32, i32* @MDIO_MMD_PCS, align 4
  %20 = load i64, i64* @MDIO_STAT1, align 8
  %21 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %18, i32 %19, i64 %20)
  %22 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i64 %17, i32 %21)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = load i64, i64* @MDIO_DEVID1, align 8
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = load i32, i32* @MDIO_MMD_PCS, align 4
  %27 = load i64, i64* @MDIO_DEVID1, align 8
  %28 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %25, i32 %26, i64 %27)
  %29 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %23, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %24, i32 %28)
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i64, i64* @MDIO_DEVID2, align 8
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %33 = load i32, i32* @MDIO_MMD_PCS, align 4
  %34 = load i64, i64* @MDIO_DEVID2, align 8
  %35 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %32, i32 %33, i64 %34)
  %36 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i64 %31, i32 %35)
  %37 = load %struct.device*, %struct.device** %3, align 8
  %38 = load i64, i64* @MDIO_DEVS1, align 8
  %39 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %40 = load i32, i32* @MDIO_MMD_PCS, align 4
  %41 = load i64, i64* @MDIO_DEVS1, align 8
  %42 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %39, i32 %40, i64 %41)
  %43 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %38, i32 %42)
  %44 = load %struct.device*, %struct.device** %3, align 8
  %45 = load i64, i64* @MDIO_DEVS2, align 8
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = load i32, i32* @MDIO_MMD_PCS, align 4
  %48 = load i64, i64* @MDIO_DEVS2, align 8
  %49 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %46, i32 %47, i64 %48)
  %50 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %45, i32 %49)
  %51 = load %struct.device*, %struct.device** %3, align 8
  %52 = load i64, i64* @MDIO_CTRL1, align 8
  %53 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %54 = load i32, i32* @MDIO_MMD_AN, align 4
  %55 = load i64, i64* @MDIO_CTRL1, align 8
  %56 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %53, i32 %54, i64 %55)
  %57 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0), i64 %52, i32 %56)
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = load i64, i64* @MDIO_STAT1, align 8
  %60 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %61 = load i32, i32* @MDIO_MMD_AN, align 4
  %62 = load i64, i64* @MDIO_STAT1, align 8
  %63 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %60, i32 %61, i64 %62)
  %64 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0), i64 %59, i32 %63)
  %65 = load %struct.device*, %struct.device** %3, align 8
  %66 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %67 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %68 = load i32, i32* @MDIO_MMD_AN, align 4
  %69 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %70 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %67, i32 %68, i64 %69)
  %71 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0), i64 %66, i32 %70)
  %72 = load %struct.device*, %struct.device** %3, align 8
  %73 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %74 = add nsw i64 %73, 1
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = load i32, i32* @MDIO_MMD_AN, align 4
  %77 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %78 = add nsw i64 %77, 1
  %79 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %75, i32 %76, i64 %78)
  %80 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %72, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i64 %74, i32 %79)
  %81 = load %struct.device*, %struct.device** %3, align 8
  %82 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %83 = add nsw i64 %82, 2
  %84 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %85 = load i32, i32* @MDIO_MMD_AN, align 4
  %86 = load i64, i64* @MDIO_AN_ADVERTISE, align 8
  %87 = add nsw i64 %86, 2
  %88 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %84, i32 %85, i64 %87)
  %89 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %81, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0), i64 %83, i32 %88)
  %90 = load %struct.device*, %struct.device** %3, align 8
  %91 = load i64, i64* @MDIO_AN_COMP_STAT, align 8
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %93 = load i32, i32* @MDIO_MMD_AN, align 4
  %94 = load i64, i64* @MDIO_AN_COMP_STAT, align 8
  %95 = call i32 @XMDIO_READ(%struct.xgbe_prv_data* %92, i32 %93, i64 %94)
  %96 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %90, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i64 0, i64 0), i64 %91, i32 %95)
  %97 = load %struct.device*, %struct.device** %3, align 8
  %98 = call i32 (%struct.device*, i8*, ...) @dev_dbg(%struct.device* %97, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.12, i64 0, i64 0))
  ret void
}

declare dso_local i32 @dev_dbg(%struct.device*, i8*, ...) #1

declare dso_local i32 @XMDIO_READ(%struct.xgbe_prv_data*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
