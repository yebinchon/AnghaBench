; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88172a.c_ax88172a_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64, i64, i64 }
%struct.usbnet = type { %struct.ax88172a_private* }
%struct.ax88172a_private = type { i32 }

@AX88772_MEDIUM_DEFAULT = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i64 0, align 8
@AX_MEDIUM_FD = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@AX_MEDIUM_PS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"speed %u duplex %d, setting mode to 0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ax88172a_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ax88172a_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.ax88172a_private*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.usbnet* @netdev_priv(%struct.net_device* %10)
  store %struct.usbnet* %11, %struct.usbnet** %4, align 8
  %12 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %13 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %12, i32 0, i32 0
  %14 = load %struct.ax88172a_private*, %struct.ax88172a_private** %13, align 8
  store %struct.ax88172a_private* %14, %struct.ax88172a_private** %5, align 8
  store i32 0, i32* %6, align 4
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = load i32, i32* @AX88772_MEDIUM_DEFAULT, align 4
  store i32 %20, i32* %6, align 4
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DUPLEX_HALF, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load i32, i32* @AX_MEDIUM_FD, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %33 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @SPEED_100, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load i32, i32* @AX_MEDIUM_PS, align 4
  %39 = xor i32 %38, -1
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %31
  br label %43

43:                                               ; preds = %42, %1
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %46 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %43
  %50 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @asix_write_medium_mode(%struct.usbnet* %50, i32 %51, i32 0)
  %53 = load i32, i32* %6, align 4
  %54 = load %struct.ax88172a_private*, %struct.ax88172a_private** %5, align 8
  %55 = getelementptr inbounds %struct.ax88172a_private, %struct.ax88172a_private* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %61 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @netdev_dbg(%struct.net_device* %56, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %59, i64 %62, i32 %63)
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = call i32 @phy_print_status(%struct.phy_device* %65)
  br label %67

67:                                               ; preds = %49, %43
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @asix_write_medium_mode(%struct.usbnet*, i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64, i64, i32) #1

declare dso_local i32 @phy_print_status(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
