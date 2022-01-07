; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_sr_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Only internal phy supported\0A\00", align 1
@MII_BMSR = common dso_local global i32 0, align 4
@SR_NSR = common dso_local global i32 0, align 4
@NSR_LINKST = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [58 x i8] c"sr_mdio_read() phy_id=0x%02x, loc=0x%02x, returns=0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @sr_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usbnet*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.usbnet* @netdev_priv(%struct.net_device* %12)
  store %struct.usbnet* %13, %struct.usbnet** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %17, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %57

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @MII_BMSR, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %25 = load i32, i32* @SR_NSR, align 4
  %26 = call i32 @sr_read_reg(%struct.usbnet* %24, i32 %25, i32* %11)
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* @NSR_LINKST, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %23
  br label %33

33:                                               ; preds = %32, %19
  %34 = load %struct.usbnet*, %struct.usbnet** %8, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @sr_share_read_word(%struct.usbnet* %34, i32 1, i32 %35, i32* %9)
  %37 = load i32, i32* %10, align 4
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load i32, i32* @BMSR_LSTATUS, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %9, align 4
  br label %50

44:                                               ; preds = %33
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  %47 = load i32, i32* @BMSR_LSTATUS, align 4
  %48 = xor i32 %47, -1
  %49 = and i32 %46, %48
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %44, %39
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 (%struct.net_device*, i8*, ...) @netdev_dbg(%struct.net_device* %51, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %50, %16
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @sr_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @sr_share_read_word(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
