; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_sysfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_sysfs.c_hl_sysfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32 (%struct.hl_device*, i32*)* }
%struct.TYPE_3__ = type { i32 }

@PM_AUTO = common dso_local global i32 0, align 4
@hl_dev_clks_attr_group = common dso_local global i32 0, align 4
@hl_dev_attr_groups = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to add groups to device, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_sysfs_init(%struct.hl_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  %5 = load i32, i32* @PM_AUTO, align 4
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %9 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 3
  store i32 %11, i32* %13, align 4
  %14 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %15 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32 (%struct.hl_device*, i32*)*, i32 (%struct.hl_device*, i32*)** %17, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = call i32 %18(%struct.hl_device* %19, i32* @hl_dev_clks_attr_group)
  %21 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %22 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @hl_dev_attr_groups, align 4
  %25 = call i32 @device_add_groups(i32 %23, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %1
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %36

35:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %28
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @device_add_groups(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
