; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_detach_mtd_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_ubi_detach_mtd_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@UBI_MAX_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ubi_devices_lock = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s reference count %d, destroy anyway\00", align 1
@ubi_devices = common dso_local global i32** null, align 8
@UBI_VOLUME_REMOVED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"detaching mtd%d\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"mtd%d is detached\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_detach_mtd_dev(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @UBI_MAX_DEVICES, align 4
  %12 = icmp sge i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %120

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = call %struct.ubi_device* @ubi_get_device(i32 %17)
  store %struct.ubi_device* %18, %struct.ubi_device** %6, align 8
  %19 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %20 = icmp ne %struct.ubi_device* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %120

24:                                               ; preds = %16
  %25 = call i32 @spin_lock(i32* @ubi_devices_lock)
  %26 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 1
  %28 = call i32 @put_device(i32* %27)
  %29 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %30 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %29, i32 0, i32 8
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %31, 1
  store i64 %32, i64* %30, align 8
  %33 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %34 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %33, i32 0, i32 8
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %53

37:                                               ; preds = %24
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %120

44:                                               ; preds = %37
  %45 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %46 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %47 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %46, i32 0, i32 9
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %50 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %49, i32 0, i32 8
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @ubi_err(%struct.ubi_device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51)
  br label %53

53:                                               ; preds = %44, %24
  %54 = load i32**, i32*** @ubi_devices, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  store i32* null, i32** %57, align 8
  %58 = call i32 @spin_unlock(i32* @ubi_devices_lock)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %61 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp eq i32 %59, %62
  %64 = zext i1 %63 to i32
  %65 = call i32 @ubi_assert(i32 %64)
  %66 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %67 = load i32, i32* @UBI_VOLUME_REMOVED, align 4
  %68 = call i32 @ubi_notify_all(%struct.ubi_device* %66, i32 %67, i32* null)
  %69 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %70 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %71 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ubi_msg(%struct.ubi_device* %69, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %74)
  %76 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %77 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %53
  %81 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %82 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %81, i32 0, i32 7
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @kthread_stop(i64 %83)
  br label %85

85:                                               ; preds = %80, %53
  %86 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %87 = call i32 @ubi_debugfs_exit_dev(%struct.ubi_device* %86)
  %88 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %89 = call i32 @uif_close(%struct.ubi_device* %88)
  %90 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %91 = call i32 @ubi_wl_close(%struct.ubi_device* %90)
  %92 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %93 = call i32 @ubi_free_internal_volumes(%struct.ubi_device* %92)
  %94 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %95 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @vfree(i32 %96)
  %98 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %99 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @vfree(i32 %100)
  %102 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %103 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @vfree(i32 %104)
  %106 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %107 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %108 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %107, i32 0, i32 2
  %109 = load %struct.TYPE_2__*, %struct.TYPE_2__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @ubi_msg(%struct.ubi_device* %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %111)
  %113 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %114 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %113, i32 0, i32 2
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = call i32 @put_mtd_device(%struct.TYPE_2__* %115)
  %117 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %118 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %117, i32 0, i32 1
  %119 = call i32 @put_device(i32* %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %85, %40, %21, %13
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local %struct.ubi_device* @ubi_get_device(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i64) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_notify_all(%struct.ubi_device*, i32, i32*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32) #1

declare dso_local i32 @kthread_stop(i64) #1

declare dso_local i32 @ubi_debugfs_exit_dev(%struct.ubi_device*) #1

declare dso_local i32 @uif_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_wl_close(%struct.ubi_device*) #1

declare dso_local i32 @ubi_free_internal_volumes(%struct.ubi_device*) #1

declare dso_local i32 @vfree(i32) #1

declare dso_local i32 @put_mtd_device(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
