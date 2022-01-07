; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_link_change_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_aquantia_main.c_aqr107_link_change_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64 }

@PHY_RUNNING = common dso_local global i64 0, align 8
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT1 = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT1_AQ_PHY = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT1_SHORT_REACH = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT1_AQRATE_DOWNSHIFT = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT4 = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT4_FW_MAJOR = common dso_local global i32 0, align 4
@MDIO_AN_RX_LP_STAT4_FW_MINOR = common dso_local global i32 0, align 4
@MDIO_AN_RX_VEND_STAT3 = common dso_local global i32 0, align 4
@MDIO_AN_RX_VEND_STAT3_AFR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Link partner is Aquantia PHY, FW %u.%u%s%s%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c", short reach mode\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [36 x i8] c", fast-retrain downshift advertised\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c", fast reframe advertised\00", align 1
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@VEND1_GLOBAL_RSVD_STAT9 = common dso_local global i32 0, align 4
@VEND1_GLOBAL_RSVD_STAT9_MODE = common dso_local global i32 0, align 4
@VEND1_GLOBAL_RSVD_STAT9_1000BT2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [34 x i8] c"Aquantia 1000Base-T2 mode active\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @aqr107_link_change_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aqr107_link_change_notify(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PHY_RUNNING, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @AUTONEG_DISABLE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  br label %101

22:                                               ; preds = %15
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = load i32, i32* @MDIO_MMD_AN, align 4
  %25 = load i32, i32* @MDIO_AN_RX_LP_STAT1, align 4
  %26 = call i32 @phy_read_mmd(%struct.phy_device* %23, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MDIO_AN_RX_LP_STAT1_AQ_PHY, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %22
  br label %101

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @MDIO_AN_RX_LP_STAT1_SHORT_REACH, align 4
  %38 = and i32 %36, %37
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @MDIO_AN_RX_LP_STAT1_AQRATE_DOWNSHIFT, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %5, align 4
  %42 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %43 = load i32, i32* @MDIO_MMD_AN, align 4
  %44 = load i32, i32* @MDIO_AN_RX_LP_STAT4, align 4
  %45 = call i32 @phy_read_mmd(%struct.phy_device* %42, i32 %43, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %35
  br label %101

49:                                               ; preds = %35
  %50 = load i32, i32* @MDIO_AN_RX_LP_STAT4_FW_MAJOR, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @FIELD_GET(i32 %50, i32 %51)
  store i8* %52, i8** %3, align 8
  %53 = load i32, i32* @MDIO_AN_RX_LP_STAT4_FW_MINOR, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i8* @FIELD_GET(i32 %53, i32 %54)
  store i8* %55, i8** %4, align 8
  %56 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %57 = load i32, i32* @MDIO_MMD_AN, align 4
  %58 = load i32, i32* @MDIO_AN_RX_VEND_STAT3, align 4
  %59 = call i32 @phy_read_mmd(%struct.phy_device* %56, i32 %57, i32 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %49
  br label %101

63:                                               ; preds = %49
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @MDIO_AN_RX_VEND_STAT3_AFR, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %7, align 4
  %67 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %68 = load i8*, i8** %3, align 8
  %69 = load i8*, i8** %4, align 8
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @phydev_dbg(%struct.phy_device* %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %68, i8* %69, i8* %73, i8* %77, i8* %81)
  %83 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %84 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %85 = load i32, i32* @VEND1_GLOBAL_RSVD_STAT9, align 4
  %86 = call i32 @phy_read_mmd(%struct.phy_device* %83, i32 %84, i32 %85)
  store i32 %86, i32* %9, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %63
  br label %101

90:                                               ; preds = %63
  %91 = load i32, i32* @VEND1_GLOBAL_RSVD_STAT9_MODE, align 4
  %92 = load i32, i32* %9, align 4
  %93 = call i8* @FIELD_GET(i32 %91, i32 %92)
  %94 = ptrtoint i8* %93 to i32
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = load i32, i32* @VEND1_GLOBAL_RSVD_STAT9_1000BT2, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %100 = call i32 @phydev_info(%struct.phy_device* %99, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.5, i64 0, i64 0))
  br label %101

101:                                              ; preds = %21, %34, %48, %62, %89, %98, %90
  ret void
}

declare dso_local i32 @phy_read_mmd(%struct.phy_device*, i32, i32) #1

declare dso_local i8* @FIELD_GET(i32, i32) #1

declare dso_local i32 @phydev_dbg(%struct.phy_device*, i8*, i8*, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @phydev_info(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
