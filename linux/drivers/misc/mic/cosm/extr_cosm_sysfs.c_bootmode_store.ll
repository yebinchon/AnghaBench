; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_bootmode_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/cosm/extr_cosm_sysfs.c_bootmode_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.cosm_device = type { i8*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"linux\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"flash\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bootmode_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bootmode_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cosm_device*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.cosm_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.cosm_device* %12, %struct.cosm_device** %10, align 8
  %13 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %14 = icmp ne %struct.cosm_device* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub i64 0, %16
  store i64 %17, i64* %5, align 8
  br label %85

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i32 @sysfs_streq(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @sysfs_streq(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* @EINVAL, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %5, align 8
  br label %85

29:                                               ; preds = %22, %18
  %30 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %31 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %30, i32 0, i32 1
  %32 = call i32 @mutex_lock(i32* %31)
  %33 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %34 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @kfree(i8* %35)
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i8* @kmalloc(i64 %38, i32 %39)
  %41 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %42 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %41, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %44 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %29
  %48 = load i64, i64* @ENOMEM, align 8
  %49 = sub i64 0, %48
  store i64 %49, i64* %9, align 8
  br label %80

50:                                               ; preds = %29
  %51 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %52 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i8*, i8** %8, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @strncpy(i8* %53, i8* %54, i64 %55)
  %57 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %58 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %73

66:                                               ; preds = %50
  %67 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %68 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %67, i32 0, i32 0
  %69 = load i8*, i8** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = sub i64 %70, 1
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  store i8 0, i8* %72, align 1
  br label %79

73:                                               ; preds = %50
  %74 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %75 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 0, i8* %78, align 1
  br label %79

79:                                               ; preds = %73, %66
  br label %80

80:                                               ; preds = %79, %47
  %81 = load %struct.cosm_device*, %struct.cosm_device** %10, align 8
  %82 = getelementptr inbounds %struct.cosm_device, %struct.cosm_device* %81, i32 0, i32 1
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i64, i64* %9, align 8
  store i64 %84, i64* %5, align 8
  br label %85

85:                                               ; preds = %80, %26, %15
  %86 = load i64, i64* %5, align 8
  ret i64 %86
}

declare dso_local %struct.cosm_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @strncpy(i8*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
