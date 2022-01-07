; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_read_device_fw_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/habanalabs/goya/extr_goya.c_goya_read_device_fw_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hl_device = type { i32, i64*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8*, i8* }

@mmUBOOT_VER_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"U-Boot\00", align 1
@mmPREBOOT_VER_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"Preboot\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Undefined FW component: %d\0A\00", align 1
@SRAM_BASE_ADDR = common dso_local global i64 0, align 8
@SRAM_SIZE = common dso_local global i64 0, align 8
@VERSION_MAX_LEN = common dso_local global i64 0, align 8
@SRAM_CFG_BAR_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [40 x i8] c"%s version offset (0x%x) is above SRAM\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"unavailable\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hl_device*, i32)* @goya_read_device_fw_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goya_read_device_fw_version(%struct.hl_device* %0, i32 %1) #0 {
  %3 = alloca %struct.hl_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store %struct.hl_device* %0, %struct.hl_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %23 [
    i32 128, label %9
    i32 129, label %16
  ]

9:                                                ; preds = %2
  %10 = load i32, i32* @mmUBOOT_VER_OFFSET, align 4
  %11 = call i64 @RREG32(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %13 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  store i8* %15, i8** %7, align 8
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  br label %29

16:                                               ; preds = %2
  %17 = load i32, i32* @mmPREBOOT_VER_OFFSET, align 4
  %18 = call i64 @RREG32(i32 %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %20 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i8*, i8** %21, align 8
  store i8* %22, i8** %7, align 8
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8** %5, align 8
  br label %29

23:                                               ; preds = %2
  %24 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %25 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @dev_warn(i32 %26, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %27)
  br label %60

29:                                               ; preds = %16, %9
  %30 = load i64, i64* @SRAM_BASE_ADDR, align 8
  %31 = xor i64 %30, -1
  %32 = load i64, i64* %6, align 8
  %33 = and i64 %32, %31
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = load i64, i64* @SRAM_SIZE, align 8
  %36 = load i64, i64* @VERSION_MAX_LEN, align 8
  %37 = sub nsw i64 %35, %36
  %38 = icmp slt i64 %34, %37
  br i1 %38, label %39, label %51

39:                                               ; preds = %29
  %40 = load i8*, i8** %7, align 8
  %41 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %42 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @SRAM_CFG_BAR_ID, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @VERSION_MAX_LEN, align 8
  %50 = call i32 @memcpy_fromio(i8* %40, i64 %48, i64 %49)
  br label %60

51:                                               ; preds = %29
  %52 = load %struct.hl_device*, %struct.hl_device** %3, align 8
  %53 = getelementptr inbounds %struct.hl_device, %struct.hl_device* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %6, align 8
  %57 = call i32 @dev_err(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i8* %55, i64 %56)
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @strcpy(i8* %58, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %23, %51, %39
  ret void
}

declare dso_local i64 @RREG32(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @memcpy_fromio(i8*, i64, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i64) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
