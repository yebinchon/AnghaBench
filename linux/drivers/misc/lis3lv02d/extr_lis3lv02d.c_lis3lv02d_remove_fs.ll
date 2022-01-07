; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_remove_fs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d.c_lis3lv02d_remove_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lis3lv02d = type { i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@lis3lv02d_attribute_group = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lis3lv02d_remove_fs(%struct.lis3lv02d* %0) #0 {
  %2 = alloca %struct.lis3lv02d*, align 8
  store %struct.lis3lv02d* %0, %struct.lis3lv02d** %2, align 8
  %3 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %4 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %3, i32 0, i32 2
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = call i32 @sysfs_remove_group(i32* %7, i32* @lis3lv02d_attribute_group)
  %9 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %10 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = call i32 @platform_device_unregister(%struct.TYPE_4__* %11)
  %13 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %14 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %39

17:                                               ; preds = %1
  %18 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %19 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @pm_runtime_barrier(i64 %20)
  %22 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %23 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @pm_runtime_suspended(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %17
  %28 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %29 = call i32 @lis3lv02d_poweroff(%struct.lis3lv02d* %28)
  br label %30

30:                                               ; preds = %27, %17
  %31 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %32 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @pm_runtime_disable(i64 %33)
  %35 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %36 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @pm_runtime_set_suspended(i64 %37)
  br label %39

39:                                               ; preds = %30, %1
  %40 = load %struct.lis3lv02d*, %struct.lis3lv02d** %2, align 8
  %41 = getelementptr inbounds %struct.lis3lv02d, %struct.lis3lv02d* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @kfree(i32 %42)
  ret i32 0
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_4__*) #1

declare dso_local i32 @pm_runtime_barrier(i64) #1

declare dso_local i32 @pm_runtime_suspended(i64) #1

declare dso_local i32 @lis3lv02d_poweroff(%struct.lis3lv02d*) #1

declare dso_local i32 @pm_runtime_disable(i64) #1

declare dso_local i32 @pm_runtime_set_suspended(i64) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
