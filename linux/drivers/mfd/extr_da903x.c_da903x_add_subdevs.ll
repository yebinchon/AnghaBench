; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da903x_add_subdevs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_da903x.c_da903x_add_subdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.da903x_chip = type { i32 }
%struct.da903x_platform_data = type { i32, %struct.da903x_subdev_info* }
%struct.da903x_subdev_info = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.da903x_chip*, %struct.da903x_platform_data*)* @da903x_add_subdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da903x_add_subdevs(%struct.da903x_chip* %0, %struct.da903x_platform_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.da903x_chip*, align 8
  %5 = alloca %struct.da903x_platform_data*, align 8
  %6 = alloca %struct.da903x_subdev_info*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.da903x_chip* %0, %struct.da903x_chip** %4, align 8
  store %struct.da903x_platform_data* %1, %struct.da903x_platform_data** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %56, %2
  %11 = load i32, i32* %8, align 4
  %12 = load %struct.da903x_platform_data*, %struct.da903x_platform_data** %5, align 8
  %13 = getelementptr inbounds %struct.da903x_platform_data, %struct.da903x_platform_data* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %59

16:                                               ; preds = %10
  %17 = load %struct.da903x_platform_data*, %struct.da903x_platform_data** %5, align 8
  %18 = getelementptr inbounds %struct.da903x_platform_data, %struct.da903x_platform_data* %17, i32 0, i32 1
  %19 = load %struct.da903x_subdev_info*, %struct.da903x_subdev_info** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.da903x_subdev_info, %struct.da903x_subdev_info* %19, i64 %21
  store %struct.da903x_subdev_info* %22, %struct.da903x_subdev_info** %6, align 8
  %23 = load %struct.da903x_subdev_info*, %struct.da903x_subdev_info** %6, align 8
  %24 = getelementptr inbounds %struct.da903x_subdev_info, %struct.da903x_subdev_info* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.da903x_subdev_info*, %struct.da903x_subdev_info** %6, align 8
  %27 = getelementptr inbounds %struct.da903x_subdev_info, %struct.da903x_subdev_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call %struct.platform_device* @platform_device_alloc(i32 %25, i32 %28)
  store %struct.platform_device* %29, %struct.platform_device** %7, align 8
  %30 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %31 = icmp ne %struct.platform_device* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %16
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %9, align 4
  br label %60

35:                                               ; preds = %16
  %36 = load %struct.da903x_chip*, %struct.da903x_chip** %4, align 8
  %37 = getelementptr inbounds %struct.da903x_chip, %struct.da903x_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %40 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.da903x_subdev_info*, %struct.da903x_subdev_info** %6, align 8
  %43 = getelementptr inbounds %struct.da903x_subdev_info, %struct.da903x_subdev_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %46 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  store i32 %44, i32* %47, align 4
  %48 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %49 = call i32 @platform_device_add(%struct.platform_device* %48)
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %35
  %53 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %54 = call i32 @platform_device_put(%struct.platform_device* %53)
  br label %60

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %8, align 4
  br label %10

59:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %64

60:                                               ; preds = %52, %32
  %61 = load %struct.da903x_chip*, %struct.da903x_chip** %4, align 8
  %62 = call i32 @da903x_remove_subdevs(%struct.da903x_chip* %61)
  %63 = load i32, i32* %9, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %60, %59
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

declare dso_local i32 @da903x_remove_subdevs(%struct.da903x_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
