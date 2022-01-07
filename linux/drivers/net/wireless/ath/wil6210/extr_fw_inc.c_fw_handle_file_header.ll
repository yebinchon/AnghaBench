; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_fw_handle_file_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_fw_handle_file_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_fw_record_file_header = type { i64, i32, i32 }

@.str = private unnamed_addr constant [35 x i8] c"file header length incorrect: %zu\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"new file, ver. %d, %i bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@WIL_FW_VERSION_PREFIX = common dso_local global i32 0, align 4
@WIL_FW_VERSION_PREFIX_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i8*, i64)* @fw_handle_file_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_handle_file_header(%struct.wil6210_priv* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wil_fw_record_file_header*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.wil_fw_record_file_header*
  store %struct.wil_fw_record_file_header* %10, %struct.wil_fw_record_file_header** %8, align 8
  %11 = load i64, i64* %7, align 8
  %12 = icmp ne i64 %11, 16
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32 @wil_err_fw(%struct.wil6210_priv* %14, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %54

19:                                               ; preds = %3
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %21 = load %struct.wil_fw_record_file_header*, %struct.wil_fw_record_file_header** %8, align 8
  %22 = getelementptr inbounds %struct.wil_fw_record_file_header, %struct.wil_fw_record_file_header* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wil_fw_record_file_header*, %struct.wil_fw_record_file_header** %8, align 8
  %25 = getelementptr inbounds %struct.wil_fw_record_file_header, %struct.wil_fw_record_file_header* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26)
  %28 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %29 = load %struct.wil_fw_record_file_header*, %struct.wil_fw_record_file_header** %8, align 8
  %30 = getelementptr inbounds %struct.wil_fw_record_file_header, %struct.wil_fw_record_file_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @wil_hex_dump_fw(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %28, i32 16, i32 1, i64 %31, i32 8, i32 1)
  %33 = load %struct.wil_fw_record_file_header*, %struct.wil_fw_record_file_header** %8, align 8
  %34 = getelementptr inbounds %struct.wil_fw_record_file_header, %struct.wil_fw_record_file_header* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @WIL_FW_VERSION_PREFIX, align 4
  %37 = load i64, i64* @WIL_FW_VERSION_PREFIX_LEN, align 8
  %38 = call i32 @memcmp(i64 %35, i32 %36, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %19
  %41 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %42 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.wil_fw_record_file_header*, %struct.wil_fw_record_file_header** %8, align 8
  %45 = getelementptr inbounds %struct.wil_fw_record_file_header, %struct.wil_fw_record_file_header* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @WIL_FW_VERSION_PREFIX_LEN, align 8
  %48 = add nsw i64 %46, %47
  %49 = load i64, i64* @WIL_FW_VERSION_PREFIX_LEN, align 8
  %50 = sub i64 8, %49
  %51 = call i32 @min(i64 %50, i32 3)
  %52 = call i32 @memcpy(i32 %43, i64 %48, i32 %51)
  br label %53

53:                                               ; preds = %40, %19
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @wil_err_fw(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @wil_dbg_fw(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @wil_hex_dump_fw(i8*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i32 @memcmp(i64, i32, i64) #1

declare dso_local i32 @memcpy(i32, i64, i32) #1

declare dso_local i32 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
