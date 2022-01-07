; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_fetch_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_fetch_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { %struct.TYPE_10__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, i32, i32 }
%struct.TYPE_9__ = type { i32, i64 }
%struct.TYPE_8__ = type { %struct.ath10k_fw_components }
%struct.ath10k_fw_components = type { %struct.TYPE_11__, i32, i32 }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%s-%s-%d.bin\00", align 1
@ATH10K_FW_UTF_FILE_BASE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"%s-%d.bin\00", align 1
@ATH10K_DBG_TESTMODE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"testmode using fw utf api 2\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"failed to fetch utf firmware binary: %d\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"testmode using utf api 1\00", align 1
@.str.5 = private unnamed_addr constant [75 x i8] c"utf.bin didn't contain otp binary, taking it from the normal mode firmware\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_tm_fetch_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_tm_fetch_firmware(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_fw_components*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  store i32 2, i32* %7, align 4
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %22 [
    i32 129, label %12
    i32 128, label %12
  ]

12:                                               ; preds = %1, %1
  %13 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %14 = load i32, i32* @ATH10K_FW_UTF_FILE_BASE, align 4
  %15 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %16 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @ath10k_bus_str(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %13, i32 100, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %19, i32 %20)
  br label %27

22:                                               ; preds = %1
  %23 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %24 = load i32, i32* @ATH10K_FW_UTF_FILE_BASE, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i8*, i32, i8*, i32, i32, ...) @scnprintf(i8* %23, i32 100, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %22, %12
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %30 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %31 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %32, i32 0, i32 0
  %34 = call i32 @ath10k_core_fetch_firmware_api_n(%struct.ath10k* %28, i8* %29, %struct.TYPE_11__* %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %27
  %38 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %39 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %40 = call i32 @ath10k_dbg(%struct.ath10k* %38, i32 %39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %59

41:                                               ; preds = %27
  %42 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %43 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %44 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %45, i32 0, i32 0
  %47 = call i32 @ath10k_tm_fetch_utf_firmware_api_1(%struct.ath10k* %42, %struct.TYPE_11__* %46)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %41
  %51 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @ath10k_err(%struct.ath10k* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %100

55:                                               ; preds = %41
  %56 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %57 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %58 = call i32 @ath10k_dbg(%struct.ath10k* %56, i32 %57, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %55, %37
  %60 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %61 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store %struct.ath10k_fw_components* %62, %struct.ath10k_fw_components** %4, align 8
  %63 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %64 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %4, align 8
  %68 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 4
  %69 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %70 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %4, align 8
  %74 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %4, align 8
  %76 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %99, label %80

80:                                               ; preds = %59
  %81 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %82 = call i32 @ath10k_info(%struct.ath10k* %81, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.5, i64 0, i64 0))
  %83 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %84 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %4, align 8
  %89 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %89, i32 0, i32 1
  store i64 %87, i64* %90, align 8
  %91 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %92 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.ath10k_fw_components*, %struct.ath10k_fw_components** %4, align 8
  %97 = getelementptr inbounds %struct.ath10k_fw_components, %struct.ath10k_fw_components* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %99

99:                                               ; preds = %80, %59
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %50
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @scnprintf(i8*, i32, i8*, i32, i32, ...) #1

declare dso_local i32 @ath10k_bus_str(i32) #1

declare dso_local i32 @ath10k_core_fetch_firmware_api_n(%struct.ath10k*, i8*, %struct.TYPE_11__*) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*) #1

declare dso_local i32 @ath10k_tm_fetch_utf_firmware_api_1(%struct.ath10k*, %struct.TYPE_11__*) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32) #1

declare dso_local i32 @ath10k_info(%struct.ath10k*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
