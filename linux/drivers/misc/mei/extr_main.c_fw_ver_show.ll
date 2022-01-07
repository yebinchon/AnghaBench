; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_fw_ver_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mei/extr_main.c_fw_ver_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mei_device = type { %struct.mei_fw_version* }
%struct.mei_fw_version = type { i32, i32, i32, i32, i32 }

@MEI_MAX_FW_VER_BLOCKS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%u:%u.%u.%u.%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @fw_ver_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_ver_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mei_device*, align 8
  %8 = alloca %struct.mei_fw_version*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.mei_device* @dev_get_drvdata(%struct.device* %11)
  store %struct.mei_device* %12, %struct.mei_device** %7, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.mei_device*, %struct.mei_device** %7, align 8
  %14 = getelementptr inbounds %struct.mei_device, %struct.mei_device* %13, i32 0, i32 0
  %15 = load %struct.mei_fw_version*, %struct.mei_fw_version** %14, align 8
  store %struct.mei_fw_version* %15, %struct.mei_fw_version** %8, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %61, %3
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MEI_MAX_FW_VER_BLOCKS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %64

20:                                               ; preds = %16
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8, i8* %21, i64 %23
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.mei_fw_version*, %struct.mei_fw_version** %8, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %28, i64 %30
  %32 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mei_fw_version*, %struct.mei_fw_version** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %34, i64 %36
  %38 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.mei_fw_version*, %struct.mei_fw_version** %8, align 8
  %41 = load i32, i32* %10, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %40, i64 %42
  %44 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.mei_fw_version*, %struct.mei_fw_version** %8, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %46, i64 %48
  %50 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.mei_fw_version*, %struct.mei_fw_version** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %52, i64 %54
  %56 = getelementptr inbounds %struct.mei_fw_version, %struct.mei_fw_version* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @scnprintf(i8* %24, i32 %27, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %39, i32 %45, i32 %51, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %20
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %16

64:                                               ; preds = %16
  %65 = load i32, i32* %9, align 4
  ret i32 %65
}

declare dso_local %struct.mei_device* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
