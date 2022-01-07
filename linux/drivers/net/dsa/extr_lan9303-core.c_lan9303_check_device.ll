; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_check_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lan9303-core.c_lan9303_check_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan9303 = type { i32, i32, i32 }

@LAN9303_CHIP_REV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to read chip revision register: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"hint: maybe failed due to missing reset GPIO\0A\00", align 1
@LAN9303_CHIP_ID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"expecting LAN9303 chip, but found: %X\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to disable switching %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"Found LAN9303 rev. %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"failed to discover phy bootstrap setup: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan9303*)* @lan9303_check_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan9303_check_device(%struct.lan9303* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan9303*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lan9303* %0, %struct.lan9303** %3, align 8
  %6 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %7 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @LAN9303_CHIP_REV, align 4
  %10 = call i32 @lan9303_read(i32 %8, i32 %9, i32* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %15 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dev_err(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %20 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %13
  %24 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %25 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %28

28:                                               ; preds = %23, %13
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %74

30:                                               ; preds = %1
  %31 = load i32, i32* %5, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* @LAN9303_CHIP_ID, align 4
  %34 = icmp ne i32 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %30
  %36 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %37 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = ashr i32 %39, 16
  %41 = call i32 @dev_err(i32 %38, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @ENODEV, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %2, align 4
  br label %74

44:                                               ; preds = %30
  %45 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %46 = call i32 @lan9303_disable_processing(%struct.lan9303* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %51 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @dev_warn(i32 %52, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %53)
  br label %55

55:                                               ; preds = %49, %44
  %56 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %57 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %5, align 4
  %60 = and i32 %59, 65535
  %61 = call i32 @dev_info(i32 %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %63 = call i32 @lan9303_detect_phy_setup(%struct.lan9303* %62)
  store i32 %63, i32* %4, align 4
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %55
  %67 = load %struct.lan9303*, %struct.lan9303** %3, align 8
  %68 = getelementptr inbounds %struct.lan9303, %struct.lan9303* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %70)
  %72 = load i32, i32* %4, align 4
  store i32 %72, i32* %2, align 4
  br label %74

73:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %66, %35, %28
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @lan9303_read(i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @lan9303_disable_processing(%struct.lan9303*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @lan9303_detect_phy_setup(%struct.lan9303*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
