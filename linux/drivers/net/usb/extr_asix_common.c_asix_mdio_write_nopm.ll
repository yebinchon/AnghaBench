; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_mdio_write_nopm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_mdio_write_nopm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32, i32 }

@.str = private unnamed_addr constant [57 x i8] c"asix_mdio_write() phy_id=0x%02x, loc=0x%02x, val=0x%04x\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@AX_CMD_STATMNGSTS_REG = common dso_local global i32 0, align 4
@AX_HOST_EN = common dso_local global i32 0, align 4
@AX_CMD_WRITE_MII_REG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @asix_mdio_write_nopm(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usbnet*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.usbnet* @netdev_priv(%struct.net_device* %14)
  store %struct.usbnet* %15, %struct.usbnet** %9, align 8
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  store i32 %17, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @netdev_dbg(i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %22, i32 %23)
  %25 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  br label %28

28:                                               ; preds = %55, %4
  %29 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %30 = call i32 @asix_set_sw_mii(%struct.usbnet* %29, i32 1)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @ENODEV, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %57

36:                                               ; preds = %28
  %37 = call i32 @usleep_range(i32 1000, i32 1100)
  %38 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %39 = load i32, i32* @AX_CMD_STATMNGSTS_REG, align 4
  %40 = call i32 @asix_read_cmd(%struct.usbnet* %38, i32 %39, i32 0, i32 0, i32 1, i32* %11, i32 1)
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @AX_HOST_EN, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %55, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = icmp slt i32 %47, 30
  br i1 %49, label %50, label %55

50:                                               ; preds = %46
  %51 = load i32, i32* %13, align 4
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  %54 = icmp ne i32 %51, %53
  br label %55

55:                                               ; preds = %50, %46, %41
  %56 = phi i1 [ false, %46 ], [ false, %41 ], [ %54, %50 ]
  br i1 %56, label %28, label %57

57:                                               ; preds = %55, %35
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @ENODEV, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 0
  %65 = call i32 @mutex_unlock(i32* %64)
  br label %77

66:                                               ; preds = %57
  %67 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %68 = load i32, i32* @AX_CMD_WRITE_MII_REG, align 4
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @asix_write_cmd(%struct.usbnet* %67, i32 %68, i32 %69, i32 %70, i32 2, i32* %10, i32 1)
  %72 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %73 = call i32 @asix_set_hw_mii(%struct.usbnet* %72, i32 1)
  %74 = load %struct.usbnet*, %struct.usbnet** %9, align 8
  %75 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %74, i32 0, i32 0
  %76 = call i32 @mutex_unlock(i32* %75)
  br label %77

77:                                               ; preds = %66, %62
  ret void
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @asix_set_sw_mii(%struct.usbnet*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @asix_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @asix_set_hw_mii(%struct.usbnet*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
