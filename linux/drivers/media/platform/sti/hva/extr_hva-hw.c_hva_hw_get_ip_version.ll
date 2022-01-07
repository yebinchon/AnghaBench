; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_get_ip_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-hw.c_hva_hw_get_ip_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_dev = type { i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"%s     failed to get pm_runtime\0A\00", align 1
@HVA_PREFIX = common dso_local global i32 0, align 4
@EFAULT = common dso_local global i64 0, align 8
@HVA_HIF_REG_VERSION = common dso_local global i64 0, align 8
@VERSION_ID_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"%s     IP hardware version 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"%s     unknown IP hardware version 0x%lx\0A\00", align 1
@HVA_VERSION_UNKNOWN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.hva_dev*)* @hva_hw_get_ip_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @hva_hw_get_ip_version(%struct.hva_dev* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.hva_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i64, align 8
  store %struct.hva_dev* %0, %struct.hva_dev** %3, align 8
  %6 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %7 = call %struct.device* @hva_to_dev(%struct.hva_dev* %6)
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i64 @pm_runtime_get_sync(%struct.device* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = load i32, i32* @HVA_PREFIX, align 4
  %14 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %12, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %13)
  %15 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %16 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %15, i32 0, i32 1
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i64, i64* @EFAULT, align 8
  %19 = sub i64 0, %18
  store i64 %19, i64* %2, align 8
  br label %45

20:                                               ; preds = %1
  %21 = load %struct.hva_dev*, %struct.hva_dev** %3, align 8
  %22 = getelementptr inbounds %struct.hva_dev, %struct.hva_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @HVA_HIF_REG_VERSION, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i64 @readl_relaxed(i64 %25)
  %27 = load i64, i64* @VERSION_ID_MASK, align 8
  %28 = and i64 %26, %27
  store i64 %28, i64* %5, align 8
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @pm_runtime_put_autosuspend(%struct.device* %29)
  %31 = load i64, i64* %5, align 8
  switch i64 %31, label %37 [
    i64 128, label %32
  ]

32:                                               ; preds = %20
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = load i32, i32* @HVA_PREFIX, align 4
  %35 = load i64, i64* %5, align 8
  %36 = call i32 @dev_dbg(%struct.device* %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %34, i64 %35)
  br label %43

37:                                               ; preds = %20
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load i32, i32* @HVA_PREFIX, align 4
  %40 = load i64, i64* %5, align 8
  %41 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %39, i64 %40)
  %42 = load i64, i64* @HVA_VERSION_UNKNOWN, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %2, align 8
  br label %45

45:                                               ; preds = %43, %11
  %46 = load i64, i64* %2, align 8
  ret i64 %46
}

declare dso_local %struct.device* @hva_to_dev(%struct.hva_dev*) #1

declare dso_local i64 @pm_runtime_get_sync(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @pm_runtime_put_autosuspend(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
