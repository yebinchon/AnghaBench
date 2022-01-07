; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_detect_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_detect_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kempld_device_data = type { %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@KEMPLD_MUTEX_KEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Found Kontron PLD - %s (%s), spec %d.%d\0A\00", align 1
@pld_attr_group = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kempld_device_data*)* @kempld_detect_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_detect_device(%struct.kempld_device_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kempld_device_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.kempld_device_data* %0, %struct.kempld_device_data** %3, align 8
  %6 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %7 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %6, i32 0, i32 2
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %10 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @ioread8(i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 255
  br i1 %14, label %15, label %27

15:                                               ; preds = %1
  %16 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %17 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @ioread8(i32 %18)
  %20 = icmp eq i32 %19, 255
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %23 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %22, i32 0, i32 2
  %24 = call i32 @mutex_unlock(i32* %23)
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %94

27:                                               ; preds = %15, %1
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @KEMPLD_MUTEX_KEY, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @KEMPLD_MUTEX_KEY, align 4
  %34 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %35 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @iowrite8(i32 %33, i32 %36)
  %38 = load i32, i32* @KEMPLD_MUTEX_KEY, align 4
  %39 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %40 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @iowrite8(i32 %38, i32 %41)
  br label %43

43:                                               ; preds = %32, %27
  %44 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %45 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %44, i32 0, i32 2
  %46 = call i32 @mutex_unlock(i32* %45)
  %47 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %48 = call i32 @kempld_get_info(%struct.kempld_device_data* %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %5, align 4
  store i32 %52, i32* %2, align 4
  br label %94

53:                                               ; preds = %43
  %54 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %55 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %58 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %62 = call i32 @kempld_get_type_string(%struct.kempld_device_data* %61)
  %63 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %64 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %68 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dev_info(%struct.TYPE_4__* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %62, i32 %66, i32 %70)
  %72 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %73 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %72, i32 0, i32 0
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = call i32 @sysfs_create_group(i32* %75, i32* @pld_attr_group)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %53
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %94

81:                                               ; preds = %53
  %82 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %83 = call i32 @kempld_register_cells(%struct.kempld_device_data* %82)
  store i32 %83, i32* %5, align 4
  %84 = load i32, i32* %5, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %81
  %87 = load %struct.kempld_device_data*, %struct.kempld_device_data** %3, align 8
  %88 = getelementptr inbounds %struct.kempld_device_data, %struct.kempld_device_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = call i32 @sysfs_remove_group(i32* %90, i32* @pld_attr_group)
  br label %92

92:                                               ; preds = %86, %81
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %79, %51, %21
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ioread8(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iowrite8(i32, i32) #1

declare dso_local i32 @kempld_get_info(%struct.kempld_device_data*) #1

declare dso_local i32 @dev_info(%struct.TYPE_4__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kempld_get_type_string(%struct.kempld_device_data*) #1

declare dso_local i32 @sysfs_create_group(i32*, i32*) #1

declare dso_local i32 @kempld_register_cells(%struct.kempld_device_data*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
