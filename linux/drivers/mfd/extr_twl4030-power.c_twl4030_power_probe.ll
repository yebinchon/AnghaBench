; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-power.c_twl4030_power_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.twl4030_power_data = type { i32 }
%struct.of_device_id = type { %struct.twl4030_power_data* }

@.str = private unnamed_addr constant [26 x i8] c"Platform data is missing\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TWL_MODULE_PM_MASTER = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_KEY_CFG1 = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_PROTECT_KEY = common dso_local global i32 0, align 4
@TWL4030_PM_MASTER_KEY_CFG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"TWL4030 Unable to unlock registers\0A\00", align 1
@twl4030_power_of_match = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"TWL4030 failed to load scripts\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"TWL4030 failed to configure resource\0A\00", align 1
@pm_power_off = common dso_local global i64 0, align 8
@TWL4030_PM_MASTER_CFG_P123_TRANSITION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [34 x i8] c"TWL4030 Unable to read registers\0A\00", align 1
@SEQ_OFFSYNC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"TWL4030 Unable to setup SEQ_OFFSYNC\0A\00", align 1
@twl4030_power_off = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"TWL4030 Unable to relock registers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @twl4030_power_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_power_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.twl4030_power_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.of_device_id*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = call %struct.twl4030_power_data* @dev_get_platdata(%struct.TYPE_4__* %11)
  store %struct.twl4030_power_data* %12, %struct.twl4030_power_data** %4, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  store %struct.device_node* %16, %struct.device_node** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %17 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %18 = icmp ne %struct.twl4030_power_data* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %19
  %23 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = call i32 @dev_err(%struct.TYPE_4__* %24, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %128

28:                                               ; preds = %19, %1
  %29 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %30 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG1, align 4
  %31 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %32 = call i32 @twl_i2c_write_u8(i32 %29, i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %34 = load i32, i32* @TWL4030_PM_MASTER_KEY_CFG2, align 4
  %35 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %36 = call i32 @twl_i2c_write_u8(i32 %33, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %28
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %2, align 4
  br label %128

44:                                               ; preds = %28
  %45 = load i32, i32* @twl4030_power_of_match, align 4
  %46 = call i32 @of_match_ptr(i32 %45)
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call %struct.of_device_id* @of_match_device(i32 %46, %struct.TYPE_4__* %48)
  store %struct.of_device_id* %49, %struct.of_device_id** %6, align 8
  %50 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %51 = icmp ne %struct.of_device_id* %50, null
  br i1 %51, label %52, label %61

52:                                               ; preds = %44
  %53 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %54 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %53, i32 0, i32 0
  %55 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %54, align 8
  %56 = icmp ne %struct.twl4030_power_data* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.of_device_id*, %struct.of_device_id** %6, align 8
  %59 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %58, i32 0, i32 0
  %60 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %59, align 8
  store %struct.twl4030_power_data* %60, %struct.twl4030_power_data** %4, align 8
  br label %61

61:                                               ; preds = %57, %52, %44
  %62 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %63 = icmp ne %struct.twl4030_power_data* %62, null
  br i1 %63, label %64, label %79

64:                                               ; preds = %61
  %65 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %66 = call i32 @twl4030_power_configure_scripts(%struct.twl4030_power_data* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %117

71:                                               ; preds = %64
  %72 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %73 = call i32 @twl4030_power_configure_resources(%struct.twl4030_power_data* %72)
  store i32 %73, i32* %7, align 4
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %71
  %77 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %117

78:                                               ; preds = %71
  br label %79

79:                                               ; preds = %78, %61
  %80 = load %struct.twl4030_power_data*, %struct.twl4030_power_data** %4, align 8
  %81 = load %struct.device_node*, %struct.device_node** %5, align 8
  %82 = call i64 @twl4030_power_use_poweroff(%struct.twl4030_power_data* %80, %struct.device_node* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %116

84:                                               ; preds = %79
  %85 = load i64, i64* @pm_power_off, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %116, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %89 = load i32, i32* @TWL4030_PM_MASTER_CFG_P123_TRANSITION, align 4
  %90 = call i32 @twl_i2c_read_u8(i32 %88, i32* %9, i32 %89)
  store i32 %90, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = call i32 @pr_warn(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %114

95:                                               ; preds = %87
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @SEQ_OFFSYNC, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %95
  %101 = load i32, i32* @SEQ_OFFSYNC, align 4
  %102 = load i32, i32* %9, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %9, align 4
  %104 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load i32, i32* @TWL4030_PM_MASTER_CFG_P123_TRANSITION, align 4
  %107 = call i32 @twl_i2c_write_u8(i32 %104, i32 %105, i32 %106)
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* %7, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  br label %117

112:                                              ; preds = %100
  br label %113

113:                                              ; preds = %112, %95
  br label %114

114:                                              ; preds = %113, %93
  %115 = load i64, i64* @twl4030_power_off, align 8
  store i64 %115, i64* @pm_power_off, align 8
  br label %116

116:                                              ; preds = %114, %84, %79
  br label %117

117:                                              ; preds = %116, %110, %76, %69
  %118 = load i32, i32* @TWL_MODULE_PM_MASTER, align 4
  %119 = load i32, i32* @TWL4030_PM_MASTER_PROTECT_KEY, align 4
  %120 = call i32 @twl_i2c_write_u8(i32 %118, i32 0, i32 %119)
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* %8, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %126

123:                                              ; preds = %117
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %125 = load i32, i32* %8, align 4
  store i32 %125, i32* %2, align 4
  br label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %2, align 4
  br label %128

128:                                              ; preds = %126, %123, %41, %22
  %129 = load i32, i32* %2, align 4
  ret i32 %129
}

declare dso_local %struct.twl4030_power_data* @dev_get_platdata(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_4__*, i8*) #1

declare dso_local i32 @twl_i2c_write_u8(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.of_device_id* @of_match_device(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @of_match_ptr(i32) #1

declare dso_local i32 @twl4030_power_configure_scripts(%struct.twl4030_power_data*) #1

declare dso_local i32 @twl4030_power_configure_resources(%struct.twl4030_power_data*) #1

declare dso_local i64 @twl4030_power_use_poweroff(%struct.twl4030_power_data*, %struct.device_node*) #1

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
