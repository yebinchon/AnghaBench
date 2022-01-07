; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_spear_smi.c_spear_smi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.spear_smi = type { i32, i32, %struct.spear_snor_flash** }
%struct.spear_snor_flash = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"dev is null\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"error removing mtd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @spear_smi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spear_smi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.spear_smi*, align 8
  %5 = alloca %struct.spear_snor_flash*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.spear_smi* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.spear_smi* %9, %struct.spear_smi** %4, align 8
  %10 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %11 = icmp ne %struct.spear_smi* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call i32 @dev_err(i32* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %55

18:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %47, %18
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %22 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %19
  %26 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %27 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %26, i32 0, i32 2
  %28 = load %struct.spear_snor_flash**, %struct.spear_snor_flash*** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.spear_snor_flash*, %struct.spear_snor_flash** %28, i64 %30
  %32 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %31, align 8
  store %struct.spear_snor_flash* %32, %struct.spear_snor_flash** %5, align 8
  %33 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %5, align 8
  %34 = icmp ne %struct.spear_snor_flash* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %47

36:                                               ; preds = %25
  %37 = load %struct.spear_snor_flash*, %struct.spear_snor_flash** %5, align 8
  %38 = getelementptr inbounds %struct.spear_snor_flash, %struct.spear_snor_flash* %37, i32 0, i32 0
  %39 = call i32 @mtd_device_unregister(i32* %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %44 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %43, i32 0, i32 0
  %45 = call i32 @dev_err(i32* %44, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %46

46:                                               ; preds = %42, %36
  br label %47

47:                                               ; preds = %46, %35
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %19

50:                                               ; preds = %19
  %51 = load %struct.spear_smi*, %struct.spear_smi** %4, align 8
  %52 = getelementptr inbounds %struct.spear_smi, %struct.spear_smi* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %50, %12
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.spear_smi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @mtd_device_unregister(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
