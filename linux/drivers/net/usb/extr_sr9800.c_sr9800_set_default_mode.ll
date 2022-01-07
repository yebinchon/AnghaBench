; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr9800_set_default_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9800.c_sr9800_set_default_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@SR9800_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@SR_CMD_WRITE_IPG012 = common dso_local global i32 0, align 4
@SR9800_IPG0_DEFAULT = common dso_local global i32 0, align 4
@SR9800_IPG1_DEFAULT = common dso_local global i32 0, align 4
@SR9800_IPG2_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Write IPG,IPG1,IPG2 failed: %d\0A\00", align 1
@SR_DEFAULT_RX_CTL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"RX_CTL is 0x%04x after all initializations\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"Medium Status:0x%04x after all initializations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @sr9800_set_default_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr9800_set_default_mode(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  %6 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %7 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %10 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MII_BMCR, align 4
  %14 = load i32, i32* @BMCR_RESET, align 4
  %15 = call i32 @sr_mdio_write(i32 %8, i32 %12, i32 %13, i32 %14)
  %16 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %17 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %20 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MII_ADVERTISE, align 4
  %24 = load i32, i32* @ADVERTISE_ALL, align 4
  %25 = load i32, i32* @ADVERTISE_CSMA, align 4
  %26 = or i32 %24, %25
  %27 = call i32 @sr_mdio_write(i32 %18, i32 %22, i32 %23, i32 %26)
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %28, i32 0, i32 1
  %30 = call i32 @mii_nway_restart(%struct.TYPE_2__* %29)
  %31 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %32 = load i32, i32* @SR9800_MEDIUM_DEFAULT, align 4
  %33 = call i32 @sr_write_medium_mode(%struct.usbnet* %31, i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  br label %75

37:                                               ; preds = %1
  %38 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %39 = load i32, i32* @SR_CMD_WRITE_IPG012, align 4
  %40 = load i32, i32* @SR9800_IPG0_DEFAULT, align 4
  %41 = load i32, i32* @SR9800_IPG1_DEFAULT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @SR9800_IPG2_DEFAULT, align 4
  %44 = call i32 @sr_write_cmd(%struct.usbnet* %38, i32 %39, i32 %42, i32 %43, i32 0, i32* null)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %37
  %48 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %49 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @netdev_dbg(i32 %50, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %51)
  br label %75

53:                                               ; preds = %37
  %54 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %55 = load i32, i32* @SR_DEFAULT_RX_CTL, align 4
  %56 = call i32 @sr_write_rx_ctl(%struct.usbnet* %54, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %75

60:                                               ; preds = %53
  %61 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %62 = call i32 @sr_read_rx_ctl(%struct.usbnet* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @netdev_dbg(i32 %65, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %66)
  %68 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %69 = call i32 @sr_read_medium_status(%struct.usbnet* %68)
  store i32 %69, i32* %4, align 4
  %70 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %71 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @netdev_dbg(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  store i32 0, i32* %2, align 4
  br label %77

75:                                               ; preds = %59, %47, %36
  %76 = load i32, i32* %5, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %75, %60
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @sr_mdio_write(i32, i32, i32, i32) #1

declare dso_local i32 @mii_nway_restart(%struct.TYPE_2__*) #1

declare dso_local i32 @sr_write_medium_mode(%struct.usbnet*, i32) #1

declare dso_local i32 @sr_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

declare dso_local i32 @sr_write_rx_ctl(%struct.usbnet*, i32) #1

declare dso_local i32 @sr_read_rx_ctl(%struct.usbnet*) #1

declare dso_local i32 @sr_read_medium_status(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
