; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_mdio_read_nopm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_mdio_read_nopm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AX_CMD_STATMNGSTS_REG = common dso_local global i32 0, align 4
@AX_HOST_EN = common dso_local global i32 0, align 4
@AX_CMD_READ_MII_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [65 x i8] c"asix_mdio_read_nopm() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asix_mdio_read_nopm(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.usbnet* @netdev_priv(%struct.net_device* %13)
  store %struct.usbnet* %14, %struct.usbnet** %8, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  br label %18

18:                                               ; preds = %50, %3
  %19 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %20 = call i32 @asix_set_sw_mii(%struct.usbnet* %19, i32 1)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  %24 = icmp eq i32 %21, %23
  br i1 %24, label %30, label %25

25:                                               ; preds = %18
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %25, %18
  br label %52

31:                                               ; preds = %25
  %32 = call i32 @usleep_range(i32 1000, i32 1100)
  %33 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %34 = load i32, i32* @AX_CMD_STATMNGSTS_REG, align 4
  %35 = call i32 @asix_read_cmd(%struct.usbnet* %33, i32 %34, i32 0, i32 0, i32 1, i32* %10, i32 1)
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %31
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @AX_HOST_EN, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %50, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* %11, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %11, align 4
  %44 = icmp slt i32 %42, 30
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @ENODEV, align 4
  %48 = sub nsw i32 0, %47
  %49 = icmp ne i32 %46, %48
  br label %50

50:                                               ; preds = %45, %41, %36
  %51 = phi i1 [ false, %41 ], [ false, %36 ], [ %49, %45 ]
  br i1 %51, label %18, label %52

52:                                               ; preds = %50, %30
  %53 = load i32, i32* %12, align 4
  %54 = load i32, i32* @ENODEV, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load i32, i32* %12, align 4
  %59 = load i32, i32* @ETIMEDOUT, align 4
  %60 = sub nsw i32 0, %59
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %67

62:                                               ; preds = %57, %52
  %63 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %64 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %63, i32 0, i32 1
  %65 = call i32 @mutex_unlock(i32* %64)
  %66 = load i32, i32* %12, align 4
  store i32 %66, i32* %4, align 4
  br label %88

67:                                               ; preds = %57
  %68 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %69 = load i32, i32* @AX_CMD_READ_MII_REG, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @asix_read_cmd(%struct.usbnet* %68, i32 %69, i32 %70, i32 %71, i32 2, i32* %9, i32 1)
  %73 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %74 = call i32 @asix_set_hw_mii(%struct.usbnet* %73, i32 1)
  %75 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %76 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %79 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @le16_to_cpu(i32 %83)
  %85 = call i32 @netdev_dbg(i32 %80, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82, i32 %84)
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @le16_to_cpu(i32 %86)
  store i32 %87, i32* %4, align 4
  br label %88

88:                                               ; preds = %67, %62
  %89 = load i32, i32* %4, align 4
  ret i32 %89
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @asix_set_sw_mii(%struct.usbnet*, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @asix_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @asix_set_hw_mii(%struct.usbnet*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
