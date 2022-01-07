; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_update_flowcontrol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_update_flowcontrol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc911x_data = type { i32, %struct.net_device* }
%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64 }

@AFC_CFG = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@FLOW_CTRL_RX = common dso_local global i32 0, align 4
@FLOW_CTRL_TX = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"rx pause %s, tx pause %s\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"half duplex\00", align 1
@FLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.smsc911x_data*)* @smsc911x_phy_update_flowcontrol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_phy_update_flowcontrol(%struct.smsc911x_data* %0) #0 {
  %2 = alloca %struct.smsc911x_data*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.smsc911x_data* %0, %struct.smsc911x_data** %2, align 8
  %11 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %12 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %3, align 8
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load %struct.phy_device*, %struct.phy_device** %15, align 8
  store %struct.phy_device* %16, %struct.phy_device** %4, align 8
  %17 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %18 = load i32, i32* @AFC_CFG, align 4
  %19 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DUPLEX_FULL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %68

25:                                               ; preds = %1
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = load i32, i32* @MII_ADVERTISE, align 4
  %28 = call i32 @phy_read(%struct.phy_device* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %30 = load i32, i32* @MII_LPA, align 4
  %31 = call i32 @phy_read(%struct.phy_device* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @mii_resolve_flowctrl_fdx(i32 %32, i32 %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @FLOW_CTRL_RX, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %25
  store i32 -65534, i32* %6, align 4
  br label %41

40:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %39
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @FLOW_CTRL_TX, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, 15
  store i32 %48, i32* %5, align 4
  br label %52

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, -16
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %49, %46
  %53 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %54 = load i32, i32* @hw, align 4
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @FLOW_CTRL_RX, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @FLOW_CTRL_TX, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  %65 = zext i1 %64 to i64
  %66 = select i1 %64, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %67 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %53, i32 %54, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* %60, i8* %66)
  br label %74

68:                                               ; preds = %1
  %69 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %70 = load i32, i32* @hw, align 4
  %71 = call i32 (%struct.smsc911x_data*, i32, i8*, ...) @SMSC_TRACE(%struct.smsc911x_data* %69, i32 %70, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, 15
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %68, %52
  %75 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %76 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %75, i32 0, i32 0
  %77 = load i64, i64* %7, align 8
  %78 = call i32 @spin_lock_irqsave(i32* %76, i64 %77)
  %79 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %80 = load i32, i32* @FLOW, align 4
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %79, i32 %80, i32 %81)
  %83 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %84 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %83, i32 0, i32 0
  %85 = load i64, i64* %7, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load %struct.smsc911x_data*, %struct.smsc911x_data** %2, align 8
  %88 = load i32, i32* @AFC_CFG, align 4
  %89 = load i32, i32* %5, align 4
  %90 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %87, i32 %88, i32 %89)
  ret void
}

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @mii_resolve_flowctrl_fdx(i32, i32) #1

declare dso_local i32 @SMSC_TRACE(%struct.smsc911x_data*, i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
