; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_state_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_state_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cosm_device = type { i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"boot\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"shutdown\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @state_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @state_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cosm_device*, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.device*, %struct.device** %6, align 8
  %13 = call %struct.cosm_device* @dev_get_drvdata(%struct.device* %12)
  store %struct.cosm_device* %13, %struct.cosm_device** %10, align 8
  %14 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %15 = icmp ne %struct.cosm_device* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i64, i64* @EINVAL, align 8
  %18 = sub i64 0, %17
  store i64 %18, i64* %5, align 8
  br label %52

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i64 @sysfs_streq(i8* %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %25 = call i32 @cosm_start(%struct.cosm_device* %24)
  store i32 %25, i32* %11, align 4
  br label %44

26:                                               ; preds = %19
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @sysfs_streq(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %32 = call i32 @cosm_reset(%struct.cosm_device* %31)
  store i32 %32, i32* %11, align 4
  br label %44

33:                                               ; preds = %26
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @sysfs_streq(i8* %34, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %39 = call i32 @cosm_shutdown(%struct.cosm_device* %38)
  store i32 %39, i32* %11, align 4
  br label %44

40:                                               ; preds = %33
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %37, %30, %23
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %9, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i64, i64* %9, align 8
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %50, %16
  %53 = load i64, i64* %5, align 8
  ret i64 %53
}

declare dso_local %struct.cosm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @cosm_start(%struct.cosm_device*) #1

declare dso_local i32 @cosm_reset(%struct.cosm_device*) #1

declare dso_local i32 @cosm_shutdown(%struct.cosm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
