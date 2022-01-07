; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { %struct.TYPE_5__*, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64, i32, i64 }
%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Destroying class_dev id=%p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*)* @class_dev_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @class_dev_destroy(%struct.pvr2_sysfs* %0) #0 {
  %2 = alloca %struct.pvr2_sysfs*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %2, align 8
  %4 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %5 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %4, i32 0, i32 0
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %7 = icmp ne %struct.TYPE_5__* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %109

9:                                                ; preds = %1
  %10 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %11 = call i32 @pvr2_sysfs_tear_down_controls(%struct.pvr2_sysfs* %10)
  %12 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %13 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %12, i32 0, i32 12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %18 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %21 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %20, i32 0, i32 11
  %22 = call i32 @device_remove_file(%struct.TYPE_5__* %19, i32* %21)
  br label %23

23:                                               ; preds = %16, %9
  %24 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %25 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %24, i32 0, i32 10
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %30 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %33 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %32, i32 0, i32 9
  %34 = call i32 @device_remove_file(%struct.TYPE_5__* %31, i32* %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %37 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %36, i32 0, i32 8
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %42 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %45 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %44, i32 0, i32 7
  %46 = call i32 @device_remove_file(%struct.TYPE_5__* %43, i32* %45)
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %49 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %54 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %57 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %56, i32 0, i32 5
  %58 = call i32 @device_remove_file(%struct.TYPE_5__* %55, i32* %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %61 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %60, i32 0, i32 4
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %66 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %69 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %68, i32 0, i32 3
  %70 = call i32 @device_remove_file(%struct.TYPE_5__* %67, i32* %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %73 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %71
  %77 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %78 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %81 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %80, i32 0, i32 1
  %82 = call i32 @device_remove_file(%struct.TYPE_5__* %79, i32* %81)
  br label %83

83:                                               ; preds = %76, %71
  %84 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %85 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %84, i32 0, i32 0
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %85, align 8
  %87 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.TYPE_5__* %86)
  %88 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %89 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %88, i32 0, i32 0
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @dev_set_drvdata(%struct.TYPE_5__* %90, i32* null)
  %92 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %93 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load %struct.device*, %struct.device** %95, align 8
  store %struct.device* %96, %struct.device** %3, align 8
  %97 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %98 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %97, i32 0, i32 0
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  store %struct.device* null, %struct.device** %100, align 8
  %101 = load %struct.device*, %struct.device** %3, align 8
  %102 = call i32 @put_device(%struct.device* %101)
  %103 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %104 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %103, i32 0, i32 0
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %104, align 8
  %106 = call i32 @device_unregister(%struct.TYPE_5__* %105)
  %107 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %2, align 8
  %108 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %107, i32 0, i32 0
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %108, align 8
  br label %109

109:                                              ; preds = %83, %8
  ret void
}

declare dso_local i32 @pvr2_sysfs_tear_down_controls(%struct.pvr2_sysfs*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_unregister(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
