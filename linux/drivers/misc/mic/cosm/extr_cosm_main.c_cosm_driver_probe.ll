; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_driver_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_main.c_cosm_driver_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32, i32, %struct.TYPE_8__, i32, %struct.TYPE_7__*, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@g_num_dev = common dso_local global i32 0, align 4
@cosm_reset_trigger_work = common dso_local global i32 0, align 4
@cosm_scif_work = common dso_local global i32 0, align 4
@g_cosm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"mic%d\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"device_create_with_groups failed rc %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"state\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"sysfs_get_dirent failed rc %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosm_device*)* @cosm_driver_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cosm_driver_probe(%struct.cosm_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i32, align 4
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  %5 = call i32 @atomic_add_return(i32 1, i32* @g_num_dev)
  %6 = icmp eq i32 %5, 1
  br i1 %6, label %7, label %13

7:                                                ; preds = %1
  %8 = call i32 (...) @cosm_scif_init()
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %93

12:                                               ; preds = %7
  br label %13

13:                                               ; preds = %12, %1
  %14 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %15 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %14, i32 0, i32 8
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %18 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %17, i32 0, i32 7
  %19 = load i32, i32* @cosm_reset_trigger_work, align 4
  %20 = call i32 @INIT_WORK(i32* %18, i32 %19)
  %21 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %22 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %21, i32 0, i32 6
  %23 = load i32, i32* @cosm_scif_work, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %26 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %28 = call i32 @cosm_sysfs_init(%struct.cosm_device* %27)
  %29 = load i32, i32* @g_cosm_class, align 4
  %30 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %31 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %35 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @MKDEV(i32 0, i32 %36)
  %38 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %39 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %40 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %43 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_7__* @device_create_with_groups(i32 %29, i32 %33, i32 %37, %struct.cosm_device* %38, i32 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %44)
  %46 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %47 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %46, i32 0, i32 4
  store %struct.TYPE_7__* %45, %struct.TYPE_7__** %47, align 8
  %48 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %49 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %48, i32 0, i32 4
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = call i64 @IS_ERR(%struct.TYPE_7__* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %62

53:                                               ; preds = %13
  %54 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %55 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %54, i32 0, i32 4
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = call i32 @PTR_ERR(%struct.TYPE_7__* %56)
  store i32 %57, i32* %4, align 4
  %58 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %59 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %58, i32 0, i32 2
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @dev_err(%struct.TYPE_8__* %59, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  br label %93

62:                                               ; preds = %13
  %63 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %64 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %63, i32 0, i32 4
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @sysfs_get_dirent(i32 %68, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %70 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %71 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %73 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %62
  %77 = load i32, i32* @ENODEV, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  %79 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %80 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %79, i32 0, i32 2
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @dev_err(%struct.TYPE_8__* %80, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  br label %86

83:                                               ; preds = %62
  %84 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %85 = call i32 @cosm_create_debug_dir(%struct.cosm_device* %84)
  store i32 0, i32* %2, align 4
  br label %100

86:                                               ; preds = %76
  %87 = load i32, i32* @g_cosm_class, align 4
  %88 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %89 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @MKDEV(i32 0, i32 %90)
  %92 = call i32 @device_destroy(i32 %87, i32 %91)
  br label %93

93:                                               ; preds = %86, %53, %11
  %94 = call i64 @atomic_dec_and_test(i32* @g_num_dev)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %93
  %97 = call i32 (...) @cosm_scif_exit()
  br label %98

98:                                               ; preds = %96, %93
  %99 = load i32, i32* %4, align 4
  store i32 %99, i32* %2, align 4
  br label %100

100:                                              ; preds = %98, %83
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @cosm_scif_init(...) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @cosm_sysfs_init(%struct.cosm_device*) #1

declare dso_local %struct.TYPE_7__* @device_create_with_groups(i32, i32, i32, %struct.cosm_device*, i32, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @dev_err(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @sysfs_get_dirent(i32, i8*) #1

declare dso_local i32 @cosm_create_debug_dir(%struct.cosm_device*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @cosm_scif_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
