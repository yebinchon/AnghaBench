; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i32, i32, i32 }
%struct.usbnet = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AX_EEPROM_MAGIC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AX_CMD_READ_EEPROM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asix_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.usbnet* @netdev_priv(%struct.net_device* %13)
  store %struct.usbnet* %14, %struct.usbnet** %8, align 8
  %15 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %92

22:                                               ; preds = %3
  %23 = load i32, i32* @AX_EEPROM_MAGIC, align 4
  %24 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %25 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  %26 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %27 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %10, align 4
  %30 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %31 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %34 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %32, %35
  %37 = sub nsw i32 %36, 1
  %38 = ashr i32 %37, 1
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %10, align 4
  %41 = sub nsw i32 %39, %40
  %42 = add nsw i32 %41, 1
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32* @kmalloc_array(i32 %42, i32 4, i32 %43)
  store i32* %44, i32** %9, align 8
  %45 = load i32*, i32** %9, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %22
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %92

50:                                               ; preds = %22
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %74, %50
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp sle i32 %53, %54
  br i1 %55, label %56, label %77

56:                                               ; preds = %52
  %57 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %58 = load i32, i32* @AX_CMD_READ_EEPROM, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  %66 = call i64 @asix_read_cmd(%struct.usbnet* %57, i32 %58, i32 %59, i32 0, i32 2, i32* %65, i32 0)
  %67 = icmp slt i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %56
  %69 = load i32*, i32** %9, align 8
  %70 = call i32 @kfree(i32* %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %4, align 4
  br label %92

73:                                               ; preds = %56
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %52

77:                                               ; preds = %52
  %78 = load i32*, i32** %7, align 8
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %81 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %79, i64 %84
  %86 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %87 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @memcpy(i32* %78, i32* %85, i32 %88)
  %90 = load i32*, i32** %9, align 8
  %91 = call i32 @kfree(i32* %90)
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %77, %68, %47, %19
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32* @kmalloc_array(i32, i32, i32) #1

declare dso_local i64 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
