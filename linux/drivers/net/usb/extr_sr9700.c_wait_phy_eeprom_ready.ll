; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_wait_phy_eeprom_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_sr9700.c_wait_phy_eeprom_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@SR_SHARE_TIMEOUT = common dso_local global i32 0, align 4
@SR_EPCR = common dso_local global i32 0, align 4
@EPCR_ERRE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s write timed out!\0A\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"phy\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"eeprom\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, i32)* @wait_phy_eeprom_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_phy_eeprom_ready(%struct.usbnet* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %29, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SR_SHARE_TIMEOUT, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %32

13:                                               ; preds = %9
  store i32 0, i32* %7, align 4
  %14 = call i32 @udelay(i32 1)
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = load i32, i32* @SR_EPCR, align 4
  %17 = call i32 @sr_read_reg(%struct.usbnet* %15, i32 %16, i32* %7)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %8, align 4
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %13
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @EPCR_ERRE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %43

28:                                               ; preds = %22
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %6, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %9

32:                                               ; preds = %9
  %33 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %34 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)
  %40 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %39)
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %27, %20
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sr_read_reg(%struct.usbnet*, i32, i32*) #1

declare dso_local i32 @netdev_err(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
