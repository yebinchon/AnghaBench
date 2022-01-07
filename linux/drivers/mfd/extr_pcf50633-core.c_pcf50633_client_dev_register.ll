; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_client_dev_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_pcf50633-core.c_pcf50633_client_dev_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32 }
%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to allocate %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to register %s: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcf50633*, i8*, %struct.platform_device**)* @pcf50633_client_dev_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcf50633_client_dev_register(%struct.pcf50633* %0, i8* %1, %struct.platform_device** %2) #0 {
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.platform_device**, align 8
  %7 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.platform_device** %2, %struct.platform_device*** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = call %struct.platform_device* @platform_device_alloc(i8* %8, i32 -1)
  %10 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* %9, %struct.platform_device** %10, align 8
  %11 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %11, align 8
  %13 = icmp ne %struct.platform_device* %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %16 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %18)
  br label %44

20:                                               ; preds = %3
  %21 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %22 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %25 = load %struct.platform_device*, %struct.platform_device** %24, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %28, align 8
  %30 = call i32 @platform_device_add(%struct.platform_device* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %20
  %34 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %35 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 (i32, i8*, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i8* %37, i32 %38)
  %40 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  %41 = load %struct.platform_device*, %struct.platform_device** %40, align 8
  %42 = call i32 @platform_device_put(%struct.platform_device* %41)
  %43 = load %struct.platform_device**, %struct.platform_device*** %6, align 8
  store %struct.platform_device* null, %struct.platform_device** %43, align 8
  br label %44

44:                                               ; preds = %14, %33, %20
  ret void
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, ...) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
