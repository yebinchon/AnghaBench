; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_thermal.c_ath10k_thermal_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_10__*, %struct.TYPE_9__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.thermal_cooling_device* }
%struct.thermal_cooling_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.device = type { %struct.TYPE_6__ }

@WMI_SERVICE_THERM_THROT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ath10k_thermal\00", align 1
@ath10k_thermal_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"failed to setup thermal device result: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"cooling_device\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"failed to create cooling device symlink\0A\00", align 1
@ATH10K_QUIET_PERIOD_DEFAULT = common dso_local global i32 0, align 4
@CONFIG_HWMON = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"ath10k_hwmon\00", align 1
@ath10k_hwmon_groups = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"failed to register hwmon device: %ld\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ath10k_thermal_register(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %7 = load i32, i32* @WMI_SERVICE_THERM_THROT, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @test_bit(i32 %7, i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %17 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.ath10k* %16, i32* @ath10k_thermal_ops)
  store %struct.thermal_cooling_device* %17, %struct.thermal_cooling_device** %4, align 8
  %18 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %19 = call i64 @IS_ERR(%struct.thermal_cooling_device* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %15
  %22 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %23 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %24 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %23)
  %25 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %22, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %95

28:                                               ; preds = %15
  %29 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %34 = getelementptr inbounds %struct.thermal_cooling_device, %struct.thermal_cooling_device* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = call i32 @sysfs_create_link(i32* %32, i32* %35, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %28
  %40 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %41 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %91

42:                                               ; preds = %28
  %43 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %44 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %45 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 1
  store %struct.thermal_cooling_device* %43, %struct.thermal_cooling_device** %46, align 8
  %47 = load i32, i32* @ATH10K_QUIET_PERIOD_DEFAULT, align 4
  %48 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %49 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %95

59:                                               ; preds = %42
  %60 = load i32, i32* @CONFIG_HWMON, align 4
  %61 = call i32 @IS_REACHABLE(i32 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %59
  store i32 0, i32* %2, align 4
  br label %95

64:                                               ; preds = %59
  %65 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %69 = load i32, i32* @ath10k_hwmon_groups, align 4
  %70 = call %struct.thermal_cooling_device* @devm_hwmon_device_register_with_groups(%struct.TYPE_10__* %67, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), %struct.ath10k* %68, i32 %69)
  %71 = bitcast %struct.thermal_cooling_device* %70 to %struct.device*
  store %struct.device* %71, %struct.device** %5, align 8
  %72 = load %struct.device*, %struct.device** %5, align 8
  %73 = bitcast %struct.device* %72 to %struct.thermal_cooling_device*
  %74 = call i64 @IS_ERR(%struct.thermal_cooling_device* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %64
  %77 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %78 = load %struct.device*, %struct.device** %5, align 8
  %79 = bitcast %struct.device* %78 to %struct.thermal_cooling_device*
  %80 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %79)
  %81 = call i32 (%struct.ath10k*, i8*, ...) @ath10k_err(%struct.ath10k* %77, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %6, align 4
  br label %85

84:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %95

85:                                               ; preds = %76
  %86 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %87 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = call i32 @sysfs_remove_link(i32* %89, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  br label %91

91:                                               ; preds = %85, %39
  %92 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  %93 = call i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device* %92)
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %2, align 4
  br label %95

95:                                               ; preds = %91, %84, %63, %58, %21, %14
  %96 = load i32, i32* %2, align 4
  ret i32 %96
}

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, %struct.ath10k*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #1

declare dso_local i32 @sysfs_create_link(i32*, i32*, i8*) #1

declare dso_local i32 @IS_REACHABLE(i32) #1

declare dso_local %struct.thermal_cooling_device* @devm_hwmon_device_register_with_groups(%struct.TYPE_10__*, i8*, %struct.ath10k*, i32) #1

declare dso_local i32 @sysfs_remove_link(i32*, i8*) #1

declare dso_local i32 @thermal_cooling_device_unregister(%struct.thermal_cooling_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
