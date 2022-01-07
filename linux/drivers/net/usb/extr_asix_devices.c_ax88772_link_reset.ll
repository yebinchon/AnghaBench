; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_link_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_devices.c_ax88772_link_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, i32 }
%struct.ethtool_cmd = type { i64, i32 }

@ETHTOOL_GSET = common dso_local global i32 0, align 4
@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i64 0, align 8
@AX_MEDIUM_FD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"ax88772_link_reset() speed: %u duplex: %d setting mode to 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88772_link_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88772_link_reset(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ethtool_cmd, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  store i64 0, i64* %5, align 8
  %6 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 1
  %7 = load i32, i32* @ETHTOOL_GSET, align 4
  store i32 %7, i32* %6, align 8
  %8 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %9 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %8, i32 0, i32 1
  %10 = call i32 @mii_check_media(i32* %9, i32 1, i32 1)
  %11 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %12 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %11, i32 0, i32 1
  %13 = call i32 @mii_ethtool_gset(i32* %12, %struct.ethtool_cmd* %4)
  %14 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  store i32 %14, i32* %3, align 4
  %15 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %4)
  %16 = load i64, i64* @SPEED_100, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @AX_MEDIUM_PS, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @DUPLEX_FULL, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load i32, i32* @AX_MEDIUM_FD, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %35 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @ethtool_cmd_speed(%struct.ethtool_cmd* %4)
  %38 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %4, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @netdev_dbg(i32 %36, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i64 %37, i64 %39, i32 %40)
  %42 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @asix_write_medium_mode(%struct.usbnet* %42, i32 %43, i32 0)
  ret i32 0
}

declare dso_local i32 @mii_check_media(i32*, i32, i32) #1

declare dso_local i32 @mii_ethtool_gset(i32*, %struct.ethtool_cmd*) #1

declare dso_local i64 @ethtool_cmd_speed(%struct.ethtool_cmd*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64, i32) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
