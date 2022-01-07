; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.pcf50633 = type { i32*, i32, i32, i32, i32, i32 }

@pcf_attr_group = common dso_local global i32 0, align 4
@PCF50633_NUM_REGULATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @pcf50633_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf50633_remove(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.pcf50633*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.pcf50633* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.pcf50633* %6, %struct.pcf50633** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @sysfs_remove_group(i32* %9, i32* @pcf_attr_group)
  %11 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %12 = call i32 @pcf50633_irq_free(%struct.pcf50633* %11)
  %13 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %14 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @platform_device_unregister(i32 %15)
  %17 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %18 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @platform_device_unregister(i32 %19)
  %21 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %22 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @platform_device_unregister(i32 %23)
  %25 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %26 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @platform_device_unregister(i32 %27)
  %29 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %30 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @platform_device_unregister(i32 %31)
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %46, %1
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @PCF50633_NUM_REGULATORS, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load %struct.pcf50633*, %struct.pcf50633** %3, align 8
  %39 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @platform_device_unregister(i32 %44)
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %4, align 4
  br label %33

49:                                               ; preds = %33
  ret i32 0
}

declare dso_local %struct.pcf50633* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @pcf50633_irq_free(%struct.pcf50633*) #1

declare dso_local i32 @platform_device_unregister(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
