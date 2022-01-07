; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_create_platform_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_kempld-core.c_kempld_create_platform_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_system_id = type { %struct.kempld_platform_data* }
%struct.kempld_platform_data = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"kempld\00", align 1
@kempld_pdev = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dmi_system_id*)* @kempld_create_platform_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kempld_create_platform_device(%struct.dmi_system_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dmi_system_id*, align 8
  %4 = alloca %struct.kempld_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.dmi_system_id* %0, %struct.dmi_system_id** %3, align 8
  %6 = load %struct.dmi_system_id*, %struct.dmi_system_id** %3, align 8
  %7 = getelementptr inbounds %struct.dmi_system_id, %struct.dmi_system_id* %6, i32 0, i32 0
  %8 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %7, align 8
  store %struct.kempld_platform_data* %8, %struct.kempld_platform_data** %4, align 8
  %9 = call i32 @platform_device_alloc(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 -1)
  store i32 %9, i32* @kempld_pdev, align 4
  %10 = load i32, i32* @kempld_pdev, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* @kempld_pdev, align 4
  %17 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %4, align 8
  %18 = call i32 @platform_device_add_data(i32 %16, %struct.kempld_platform_data* %17, i32 4)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %38

22:                                               ; preds = %15
  %23 = load i32, i32* @kempld_pdev, align 4
  %24 = load %struct.kempld_platform_data*, %struct.kempld_platform_data** %4, align 8
  %25 = getelementptr inbounds %struct.kempld_platform_data, %struct.kempld_platform_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @platform_device_add_resources(i32 %23, i32 %26, i32 1)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %38

31:                                               ; preds = %22
  %32 = load i32, i32* @kempld_pdev, align 4
  %33 = call i32 @platform_device_add(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %38

37:                                               ; preds = %31
  store i32 0, i32* %2, align 4
  br label %42

38:                                               ; preds = %36, %30, %21
  %39 = load i32, i32* @kempld_pdev, align 4
  %40 = call i32 @platform_device_put(i32 %39)
  %41 = load i32, i32* %5, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %38, %37, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(i32, %struct.kempld_platform_data*, i32) #1

declare dso_local i32 @platform_device_add_resources(i32, i32, i32) #1

declare dso_local i32 @platform_device_add(i32) #1

declare dso_local i32 @platform_device_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
