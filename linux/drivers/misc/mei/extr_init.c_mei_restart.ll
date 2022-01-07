; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_restart.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_init.c_mei_restart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mei_device = type { i64, i32, i32, i32, i64 }

@MEI_DEV_POWER_UP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MEI_DEV_DISABLED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"device disabled = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mei_restart(%struct.mei_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mei_device*, align 8
  %4 = alloca i32, align 4
  store %struct.mei_device* %0, %struct.mei_device** %3, align 8
  %5 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %6 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %5, i32 0, i32 3
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %9 = load i32, i32* @MEI_DEV_POWER_UP, align 4
  %10 = call i32 @mei_set_devstate(%struct.mei_device* %8, i32 %9)
  %11 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %12 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %11, i32 0, i32 4
  store i64 0, i64* %12, align 8
  %13 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %14 = call i32 @mei_reset(%struct.mei_device* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %16 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %15, i32 0, i32 3
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %24 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MEI_DEV_DISABLED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %22, %1
  %29 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %30 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %44

36:                                               ; preds = %22
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.mei_device*, %struct.mei_device** %3, align 8
  %41 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %40, i32 0, i32 1
  %42 = call i32 @schedule_work(i32* %41)
  br label %43

43:                                               ; preds = %39, %36
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %43, %28
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mei_set_devstate(%struct.mei_device*, i32) #1

declare dso_local i32 @mei_reset(%struct.mei_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
