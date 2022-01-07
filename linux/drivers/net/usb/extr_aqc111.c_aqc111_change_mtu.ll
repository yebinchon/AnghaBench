; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_aqc111.c_aqc111_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%struct.usbnet = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@AQ_ACCESS_MAC = common dso_local global i32 0, align 4
@SFR_MEDIUM_STATUS_MODE = common dso_local global i32 0, align 4
@SFR_MEDIUM_JUMBO_EN = common dso_local global i32 0, align 4
@AQC111_BULKIN_SIZE = common dso_local global i32* null, align 8
@SFR_RX_BULKIN_QCTRL = common dso_local global i32 0, align 4
@SFR_PAUSE_WATERLVL_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @aqc111_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aqc111_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [5 x i32], align 16
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.usbnet* @netdev_priv(%struct.net_device* %8)
  store %struct.usbnet* %9, %struct.usbnet** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %22 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %21, i32 0, i32 1
  store i64 %20, i64* %22, align 8
  %23 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %24 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %25 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %26 = call i32 @aqc111_read16_cmd(%struct.usbnet* %23, i32 %24, i32 %25, i32 2, i32* %6)
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp sgt i32 %29, 1500
  br i1 %30, label %31, label %35

31:                                               ; preds = %2
  %32 = load i32, i32* @SFR_MEDIUM_JUMBO_EN, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %2
  %36 = load i32, i32* @SFR_MEDIUM_JUMBO_EN, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %6, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %35, %31
  %41 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %42 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %43 = load i32, i32* @SFR_MEDIUM_STATUS_MODE, align 4
  %44 = call i32 @aqc111_write16_cmd(%struct.usbnet* %41, i32 %42, i32 %43, i32 2, i32* %6)
  %45 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 12500
  br i1 %50, label %51, label %61

51:                                               ; preds = %40
  %52 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %53 = load i32*, i32** @AQC111_BULKIN_SIZE, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = call i32 @memcpy(i32* %52, i32* %54, i32 5)
  %56 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %57 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %58 = load i32, i32* @SFR_RX_BULKIN_QCTRL, align 4
  %59 = getelementptr inbounds [5 x i32], [5 x i32]* %7, i64 0, i64 0
  %60 = call i32 @aqc111_write_cmd(%struct.usbnet* %56, i32 %57, i32 %58, i32 5, i32 5, i32* %59)
  br label %61

61:                                               ; preds = %51, %40
  %62 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp sle i32 %66, 4500
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i32 2064, i32* %6, align 4
  br label %88

69:                                               ; preds = %61
  %70 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %71 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %70, i32 0, i32 0
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp sle i32 %74, 9500
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  store i32 4128, i32* %6, align 4
  br label %87

77:                                               ; preds = %69
  %78 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp sle i32 %82, 12500
  br i1 %83, label %84, label %85

84:                                               ; preds = %77
  store i32 5152, i32* %6, align 4
  br label %86

85:                                               ; preds = %77
  store i32 6688, i32* %6, align 4
  br label %86

86:                                               ; preds = %85, %84
  br label %87

87:                                               ; preds = %86, %76
  br label %88

88:                                               ; preds = %87, %68
  %89 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %90 = load i32, i32* @AQ_ACCESS_MAC, align 4
  %91 = load i32, i32* @SFR_PAUSE_WATERLVL_LOW, align 4
  %92 = call i32 @aqc111_write16_cmd(%struct.usbnet* %89, i32 %90, i32 %91, i32 2, i32* %6)
  ret i32 0
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @aqc111_read16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @aqc111_write16_cmd(%struct.usbnet*, i32, i32, i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @aqc111_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
