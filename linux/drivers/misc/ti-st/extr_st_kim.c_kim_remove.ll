; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_kim.c_kim_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ti_st_plat_data* }
%struct.ti_st_plat_data = type { i32 }
%struct.kim_data_s = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"nshutdown GPIO Freed\00", align 1
@kim_debugfs_dir = common dso_local global i32 0, align 4
@uim_attr_grp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"sysfs entries removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @kim_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kim_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ti_st_plat_data*, align 8
  %4 = alloca %struct.kim_data_s*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %7, align 8
  store %struct.ti_st_plat_data* %8, %struct.ti_st_plat_data** %3, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = call %struct.kim_data_s* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.kim_data_s* %10, %struct.kim_data_s** %4, align 8
  %11 = load %struct.ti_st_plat_data*, %struct.ti_st_plat_data** %3, align 8
  %12 = getelementptr inbounds %struct.ti_st_plat_data, %struct.ti_st_plat_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @gpio_free(i32 %13)
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @kim_debugfs_dir, align 4
  %17 = call i32 @debugfs_remove_recursive(i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @sysfs_remove_group(i32* %20, i32* @uim_attr_grp)
  %22 = call i32 @pr_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %24 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %23, i32 0, i32 1
  store i32* null, i32** %24, align 8
  %25 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %26 = getelementptr inbounds %struct.kim_data_s, %struct.kim_data_s* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @st_core_exit(i32 %27)
  %29 = load %struct.kim_data_s*, %struct.kim_data_s** %4, align 8
  %30 = call i32 @kfree(%struct.kim_data_s* %29)
  store %struct.kim_data_s* null, %struct.kim_data_s** %4, align 8
  ret i32 0
}

declare dso_local %struct.kim_data_s* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gpio_free(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @debugfs_remove_recursive(i32) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @st_core_exit(i32) #1

declare dso_local i32 @kfree(%struct.kim_data_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
