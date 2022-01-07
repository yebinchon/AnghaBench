; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sdio_func = type { i32 }
%struct.if_sdio_card = type { %struct.lbs_private* }
%struct.lbs_private = type { i32, i64, i64 }

@.str = private unnamed_addr constant [30 x i8] c"%s: suspend: PM flags = 0x%x\0A\00", align 1
@EHS_REMOVE_WAKEUP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [51 x i8] c"Suspend without wake params -- powering down card\0A\00", align 1
@MMC_PM_KEEP_POWER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [49 x i8] c"%s: cannot remain alive while host is suspended\0A\00", align 1
@ENOSYS = common dso_local global i32 0, align 4
@MMC_PM_WAKE_SDIO_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @if_sdio_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @if_sdio_suspend(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.sdio_func*, align 8
  %5 = alloca %struct.if_sdio_card*, align 8
  %6 = alloca %struct.lbs_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.sdio_func* @dev_to_sdio_func(%struct.device* %9)
  store %struct.sdio_func* %10, %struct.sdio_func** %4, align 8
  %11 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %12 = call %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func* %11)
  store %struct.if_sdio_card* %12, %struct.if_sdio_card** %5, align 8
  %13 = load %struct.if_sdio_card*, %struct.if_sdio_card** %5, align 8
  %14 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %13, i32 0, i32 0
  %15 = load %struct.lbs_private*, %struct.lbs_private** %14, align 8
  store %struct.lbs_private* %15, %struct.lbs_private** %6, align 8
  %16 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %17 = call i32 @sdio_get_host_pm_caps(%struct.sdio_func* %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %19 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %21 = call i32 @lbs_iface_active(%struct.lbs_private* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %34, label %23

23:                                               ; preds = %1
  %24 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %25 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %23
  %29 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %30 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %29, i32 0, i32 0
  store i32 1, i32* %30, align 8
  %31 = load %struct.if_sdio_card*, %struct.if_sdio_card** %5, align 8
  %32 = call i32 @if_sdio_power_off(%struct.if_sdio_card* %31)
  br label %33

33:                                               ; preds = %28, %23
  store i32 0, i32* %2, align 4
  br label %96

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %3, align 8
  %36 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %37 = call i32 @sdio_func_id(%struct.sdio_func* %36)
  %38 = load i32, i32* %8, align 4
  %39 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %37, i32 %38)
  %40 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %41 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @EHS_REMOVE_WAKEUP, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %34
  %46 = load %struct.device*, %struct.device** %3, align 8
  %47 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %46, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %49 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %54 = call i32 @lbs_suspend(%struct.lbs_private* %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %96

59:                                               ; preds = %52
  %60 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %61 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.if_sdio_card*, %struct.if_sdio_card** %5, align 8
  %63 = call i32 @if_sdio_power_off(%struct.if_sdio_card* %62)
  br label %64

64:                                               ; preds = %59, %45
  store i32 0, i32* %2, align 4
  br label %96

65:                                               ; preds = %34
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %77, label %70

70:                                               ; preds = %65
  %71 = load %struct.device*, %struct.device** %3, align 8
  %72 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %73 = call i32 @sdio_func_id(%struct.sdio_func* %72)
  %74 = call i32 @dev_err(%struct.device* %71, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @ENOSYS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %96

77:                                               ; preds = %65
  %78 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %79 = load i32, i32* @MMC_PM_KEEP_POWER, align 4
  %80 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %78, i32 %79)
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %77
  %84 = load i32, i32* %7, align 4
  store i32 %84, i32* %2, align 4
  br label %96

85:                                               ; preds = %77
  %86 = load %struct.lbs_private*, %struct.lbs_private** %6, align 8
  %87 = call i32 @lbs_suspend(%struct.lbs_private* %86)
  store i32 %87, i32* %7, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  store i32 %91, i32* %2, align 4
  br label %96

92:                                               ; preds = %85
  %93 = load %struct.sdio_func*, %struct.sdio_func** %4, align 8
  %94 = load i32, i32* @MMC_PM_WAKE_SDIO_IRQ, align 4
  %95 = call i32 @sdio_set_host_pm_flags(%struct.sdio_func* %93, i32 %94)
  store i32 %95, i32* %2, align 4
  br label %96

96:                                               ; preds = %92, %90, %83, %70, %64, %57, %33
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local %struct.sdio_func* @dev_to_sdio_func(%struct.device*) #1

declare dso_local %struct.if_sdio_card* @sdio_get_drvdata(%struct.sdio_func*) #1

declare dso_local i32 @sdio_get_host_pm_caps(%struct.sdio_func*) #1

declare dso_local i32 @lbs_iface_active(%struct.lbs_private*) #1

declare dso_local i32 @if_sdio_power_off(%struct.if_sdio_card*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

declare dso_local i32 @sdio_func_id(%struct.sdio_func*) #1

declare dso_local i32 @lbs_suspend(%struct.lbs_private*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @sdio_set_host_pm_flags(%struct.sdio_func*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
