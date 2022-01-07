; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_set_debug_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/extr_device.c_hl_device_set_debug_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.hl_device*)* }

@.str = private unnamed_addr constant [67 x i8] c"Failed to disable debug mode because device was not in debug mode\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [69 x i8] c"Failed to enable debug mode because device is already in debug mode\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hl_device_set_debug_mode(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %7 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %33, label %11

11:                                               ; preds = %2
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %11
  %17 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %18 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @EFAULT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %48

23:                                               ; preds = %11
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 3
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.hl_device*)*, i32 (%struct.hl_device*)** %27, align 8
  %29 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %30 = call i32 %28(%struct.hl_device* %29)
  %31 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %32 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %48

33:                                               ; preds = %2
  %34 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %35 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %40 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EFAULT, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %48

45:                                               ; preds = %33
  %46 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %47 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %48

48:                                               ; preds = %45, %38, %23, %16
  %49 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %50 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %49, i32 0, i32 1
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
