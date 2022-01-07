; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_sysfs_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_media-dev.c_fimc_md_sysfs_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fimc_md = type { i32, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"vid-dev\0A\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"sub-dev\0A\00", align 1
@FIMC_MAX_DEVS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @fimc_md_sysfs_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fimc_md_sysfs_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.fimc_md*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.fimc_md* @dev_get_drvdata(%struct.device* %13)
  store %struct.fimc_md* %14, %struct.fimc_md** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @strcmp(i8* %20, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, i32* %11, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %5, align 8
  br label %61

26:                                               ; preds = %23
  br label %27

27:                                               ; preds = %26, %18
  %28 = load i32, i32* %11, align 4
  %29 = load %struct.fimc_md*, %struct.fimc_md** %10, align 8
  %30 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  store i32 0, i32* %12, align 4
  br label %31

31:                                               ; preds = %56, %27
  %32 = load i32, i32* %12, align 4
  %33 = load i32, i32* @FIMC_MAX_DEVS, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %59

35:                                               ; preds = %31
  %36 = load %struct.fimc_md*, %struct.fimc_md** %10, align 8
  %37 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %36, i32 0, i32 1
  %38 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %37, align 8
  %39 = load i32, i32* %12, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = icmp ne %struct.TYPE_4__* %42, null
  br i1 %43, label %44, label %55

44:                                               ; preds = %35
  %45 = load i32, i32* %11, align 4
  %46 = load %struct.fimc_md*, %struct.fimc_md** %10, align 8
  %47 = getelementptr inbounds %struct.fimc_md, %struct.fimc_md* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %48, i64 %50
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  store i32 %45, i32* %54, align 4
  br label %55

55:                                               ; preds = %44, %35
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %31

59:                                               ; preds = %31
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %5, align 8
  br label %61

61:                                               ; preds = %59, %24
  %62 = load i64, i64* %5, align 8
  ret i64 %62
}

declare dso_local %struct.fimc_md* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
