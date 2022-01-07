; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_hwmon_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_nxp-tja11xx.c_tja11xx_hwmon_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.phy_device = type { i32 }

@hwmon_in = common dso_local global i32 0, align 4
@hwmon_in_lcrit_alarm = common dso_local global i64 0, align 8
@MII_INTSRC = common dso_local global i32 0, align 4
@MII_INTSRC_TEMP_ERR = common dso_local global i32 0, align 4
@hwmon_temp = common dso_local global i32 0, align 4
@hwmon_temp_crit_alarm = common dso_local global i64 0, align 8
@MII_INTSRC_UV_ERR = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32, i64, i32, i64*)* @tja11xx_hwmon_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tja11xx_hwmon_read(%struct.device* %0, i32 %1, i64 %2, i32 %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64*, align 8
  %12 = alloca %struct.phy_device*, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i64* %4, i64** %11, align 8
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = call %struct.phy_device* @dev_get_drvdata(%struct.device* %14)
  store %struct.phy_device* %15, %struct.phy_device** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i32, i32* @hwmon_in, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %41

19:                                               ; preds = %5
  %20 = load i64, i64* %9, align 8
  %21 = load i64, i64* @hwmon_in_lcrit_alarm, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %19
  %24 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %25 = load i32, i32* @MII_INTSRC, align 4
  %26 = call i32 @phy_read(%struct.phy_device* %24, i32 %25)
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %13, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %13, align 4
  store i32 %30, i32* %6, align 4
  br label %70

31:                                               ; preds = %23
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* @MII_INTSRC_TEMP_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = xor i1 %35, true
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = sext i32 %38 to i64
  %40 = load i64*, i64** %11, align 8
  store i64 %39, i64* %40, align 8
  store i32 0, i32* %6, align 4
  br label %70

41:                                               ; preds = %19, %5
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @hwmon_temp, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %67

45:                                               ; preds = %41
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @hwmon_temp_crit_alarm, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %45
  %50 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  %51 = load i32, i32* @MII_INTSRC, align 4
  %52 = call i32 @phy_read(%struct.phy_device* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* %13, align 4
  store i32 %56, i32* %6, align 4
  br label %70

57:                                               ; preds = %49
  %58 = load i32, i32* %13, align 4
  %59 = load i32, i32* @MII_INTSRC_UV_ERR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = xor i1 %62, true
  %64 = zext i1 %63 to i32
  %65 = sext i32 %64 to i64
  %66 = load i64*, i64** %11, align 8
  store i64 %65, i64* %66, align 8
  store i32 0, i32* %6, align 4
  br label %70

67:                                               ; preds = %45, %41
  %68 = load i32, i32* @EOPNOTSUPP, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %67, %57, %55, %31, %29
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local %struct.phy_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
