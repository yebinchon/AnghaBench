; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_sysfs_ident_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/smiapp/extr_smiapp-core.c_smiapp_sysfs_ident_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.v4l2_subdev = type { i32 }
%struct.smiapp_sensor = type { %struct.smiapp_module_info }
%struct.smiapp_module_info = type { i32, i32, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"%2.2x%4.4x%2.2x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*)* @smiapp_sysfs_ident_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @smiapp_sysfs_ident_read(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.smiapp_sensor*, align 8
  %9 = alloca %struct.smiapp_module_info*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call i32 @to_i2c_client(%struct.device* %10)
  %12 = call %struct.v4l2_subdev* @i2c_get_clientdata(i32 %11)
  store %struct.v4l2_subdev* %12, %struct.v4l2_subdev** %7, align 8
  %13 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %14 = call %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev* %13)
  store %struct.smiapp_sensor* %14, %struct.smiapp_sensor** %8, align 8
  %15 = load %struct.smiapp_sensor*, %struct.smiapp_sensor** %8, align 8
  %16 = getelementptr inbounds %struct.smiapp_sensor, %struct.smiapp_sensor* %15, i32 0, i32 0
  store %struct.smiapp_module_info* %16, %struct.smiapp_module_info** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %9, align 8
  %20 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %9, align 8
  %23 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.smiapp_module_info*, %struct.smiapp_module_info** %9, align 8
  %26 = getelementptr inbounds %struct.smiapp_module_info, %struct.smiapp_module_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @snprintf(i8* %17, i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  %29 = add nsw i64 %28, 1
  ret i64 %29
}

declare dso_local %struct.v4l2_subdev* @i2c_get_clientdata(i32) #1

declare dso_local i32 @to_i2c_client(%struct.device*) #1

declare dso_local %struct.smiapp_sensor* @to_smiapp_sensor(%struct.v4l2_subdev*) #1

declare dso_local i64 @snprintf(i8*, i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
