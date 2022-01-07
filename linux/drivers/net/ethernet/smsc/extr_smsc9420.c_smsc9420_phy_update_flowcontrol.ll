; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_phy_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_phy_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64 }

@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx pause %s, tx pause %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"half duplex\0A\00", align 1
@FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc9420_pdata*)* @smsc9420_phy_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_phy_update_flowcontrol(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca %struct.smsc9420_pdata*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %2, align 8
  %9 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %10 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %3, align 8
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load %struct.phy_device*, %struct.phy_device** %13, align 8
  store %struct.phy_device* %14, %struct.phy_device** %4, align 8
  %15 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DUPLEX_FULL, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %55

20:                                               ; preds = %1
  %21 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %22 = load i32, i32* @MII_ADVERTISE, align 4
  %23 = call i32 @phy_read(%struct.phy_device* %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %25 = load i32, i32* @MII_LPA, align 4
  %26 = call i32 @phy_read(%struct.phy_device* %24, i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @mii_resolve_flowctrl_fdx(i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* @FLOW_CTRL_RX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  store i32 -65534, i32* %5, align 4
  br label %36

35:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %34
  %37 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %38 = load i32, i32* @link, align 4
  %39 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %40 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %39, i32 0, i32 0
  %41 = load %struct.net_device*, %struct.net_device** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @FLOW_CTRL_RX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @FLOW_CTRL_TX, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = zext i1 %51 to i64
  %53 = select i1 %51, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %54 = call i32 (%struct.smsc9420_pdata*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.smsc9420_pdata* %37, i32 %38, %struct.net_device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %47, i8* %53)
  br label %62

55:                                               ; preds = %1
  %56 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %57 = load i32, i32* @link, align 4
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %59 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %58, i32 0, i32 0
  %60 = load %struct.net_device*, %struct.net_device** %59, align 8
  %61 = call i32 (%struct.smsc9420_pdata*, i32, %struct.net_device*, i8*, ...) @netif_info(%struct.smsc9420_pdata* %56, i32 %57, %struct.net_device* %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %55, %36
  %63 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %2, align 8
  %64 = load i32, i32* @FLOW, align 4
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %63, i32 %64, i32 %65)
  ret void
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @netif_info(%struct.smsc9420_pdata*, i32, %struct.net_device*, i8*, ...) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
