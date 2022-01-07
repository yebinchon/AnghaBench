; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_fetch_utf_firmware_api_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_testmode.c_ath10k_tm_fetch_utf_firmware_api_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8* }
%struct.ath10k_fw_file = type { %struct.TYPE_6__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ATH10K_FW_UTF_FILE = common dso_local global i8* null, align 8
@ATH10K_DBG_TESTMODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"testmode fw request '%s': %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"failed to retrieve utf firmware '%s': %d\0A\00", align 1
@ATH10K_FW_WMI_OP_VERSION_10_1 = common dso_local global i32 0, align 4
@ATH10K_FW_HTT_OP_VERSION_10_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*, %struct.ath10k_fw_file*)* @ath10k_tm_fetch_utf_firmware_api_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_tm_fetch_utf_firmware_api_1(%struct.ath10k* %0, %struct.ath10k_fw_file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ath10k*, align 8
  %5 = alloca %struct.ath10k_fw_file*, align 8
  %6 = alloca [100 x i8], align 16
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %4, align 8
  store %struct.ath10k_fw_file* %1, %struct.ath10k_fw_file** %5, align 8
  %8 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %9 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %10 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i8*, i8** %12, align 8
  %14 = load i8*, i8** @ATH10K_FW_UTF_FILE, align 8
  %15 = call i32 @snprintf(i8* %8, i32 100, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %14)
  %16 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %17 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %16, i32 0, i32 0
  %18 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %19 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %20 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @firmware_request_nowarn(%struct.TYPE_6__** %17, i8* %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %24 = load i32, i32* @ATH10K_DBG_TESTMODE, align 4
  %25 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ath10k_dbg(%struct.ath10k* %23, i32 %24, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %25, i32 %26)
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %2
  %31 = load %struct.ath10k*, %struct.ath10k** %4, align 8
  %32 = getelementptr inbounds [100 x i8], [100 x i8]* %6, i64 0, i64 0
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ath10k_warn(%struct.ath10k* %31, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  store i32 %35, i32* %3, align 4
  br label %57

36:                                               ; preds = %2
  %37 = load i32, i32* @ATH10K_FW_WMI_OP_VERSION_10_1, align 4
  %38 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %39 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @ATH10K_FW_HTT_OP_VERSION_10_1, align 4
  %41 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %42 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %44 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %49 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %51 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.ath10k_fw_file*, %struct.ath10k_fw_file** %5, align 8
  %56 = getelementptr inbounds %struct.ath10k_fw_file, %struct.ath10k_fw_file* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 8
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %36, %30
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i32 @firmware_request_nowarn(%struct.TYPE_6__**, i8*, i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i8*, i32) #1

declare dso_local i32 @ath10k_warn(%struct.ath10k*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
