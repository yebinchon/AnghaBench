; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88178_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32, i32 }
%struct.ethtool_cmd = type { i64, i32 }
%struct.asix_data = type { i64, i64 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"ax88178_link_reset()\0A\00", align 1
@AX88178_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i64 0, align 8
@AX_MEDIUM_GM = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@AX_MEDIUM_ENCK = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@AX_MEDIUM_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [66 x i8] c"ax88178_link_reset() speed: %u duplex: %d setting mode to 0x%04x\0A\00", align 1
@PHY_MODE_MARVELL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88178_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88178_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_cmd, align 8
  %5 = alloca %struct.asix_data*, align 8
  %6 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %7 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i64 0, i64* %7, align 8
  %8 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %9 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %9, i32* %8, align 8
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 2
  %12 = bitcast i32* %11 to %struct.asix_data*
  store %struct.asix_data* %12, %struct.asix_data** %5, align 8
  %13 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %14 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %18 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %17, i32 0, i32 1
  %19 = call i32 @mii_check_media(i32* %18, i32 1, i32 1)
  %20 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %21 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %20, i32 0, i32 1
  %22 = call i32 @mii_ethtool_gset(i32* %21, %struct.ethtool_cmd* %4)
  %23 = load i32, i32* @AX88178_MEDIUM_DEFAULT, align 4
  store i32 %23, i32* %3, align 4
  %24 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %4)
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* @SPEED_1000, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @AX_MEDIUM_GM, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  br label %48

32:                                               ; preds = %1
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @SPEED_100, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* @AX_MEDIUM_PS, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %47

40:                                               ; preds = %32
  %41 = load i32, i32* @AX_MEDIUM_PS, align 4
  %42 = load i32, i32* @AX_MEDIUM_GM, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %40, %36
  br label %48

48:                                               ; preds = %47, %28
  %49 = load i32, i32* @AX_MEDIUM_ENCK, align 4
  %50 = load i32, i32* %3, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %3, align 4
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @DUPLEX_FULL, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load i32, i32* @AX_MEDIUM_FD, align 4
  %58 = load i32, i32* %3, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %3, align 4
  br label %65

60:                                               ; preds = %48
  %61 = load i32, i32* @AX_MEDIUM_FD, align 4
  %62 = xor i32 %61, -1
  %63 = load i32, i32* %3, align 4
  %64 = and i32 %63, %62
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %56
  %66 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %67 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %6, align 8
  %70 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i32, i32* %3, align 4
  %73 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %68, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %69, i64 %71, i32 %72)
  %74 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %75 = load i32, i32* %3, align 4
  %76 = call i32 @asix_write_medium_mode(%struct.usbnet* %74, i32 %75, i32 0)
  %77 = load %struct.asix_data*, %struct.asix_data** %5, align 8
  %78 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PHY_MODE_MARVELL, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %91

82:                                               ; preds = %65
  %83 = load %struct.asix_data*, %struct.asix_data** %5, align 8
  %84 = getelementptr inbounds %struct.asix_data, %struct.asix_data* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %89 = load i64, i64* %6, align 8
  %90 = call i32 @marvell_led_status(%struct.usbnet* %88, i64 %89)
  br label %91

91:                                               ; preds = %87, %82, %65
  ret i32 0
}

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @marvell_led_status(%struct.usbnet*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
