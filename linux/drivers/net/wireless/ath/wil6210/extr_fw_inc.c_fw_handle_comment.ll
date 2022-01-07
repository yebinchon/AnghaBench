; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_fw_handle_comment.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_fw_handle_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil_fw_record_comment_hdr = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"magic is WIL_FW_CAPABILITIES_MAGIC\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"magic is WIL_BRD_FILE_MAGIC\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"magic is WIL_FW_CONCURRENCY_MAGIC\0A\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wil6210_priv*, i8*, i64)* @fw_handle_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fw_handle_comment(%struct.wil6210_priv* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.wil_fw_record_comment_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.wil_fw_record_comment_hdr*
  store %struct.wil_fw_record_comment_hdr* %12, %struct.wil_fw_record_comment_hdr** %8, align 8
  store i32 0, i32* %10, align 4
  %13 = load i64, i64* %7, align 8
  %14 = icmp ult i64 %13, 4
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %50

16:                                               ; preds = %3
  %17 = load %struct.wil_fw_record_comment_hdr*, %struct.wil_fw_record_comment_hdr** %8, align 8
  %18 = getelementptr inbounds %struct.wil_fw_record_comment_hdr, %struct.wil_fw_record_comment_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le32_to_cpu(i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  switch i32 %21, label %43 [
    i32 129, label %22
    i32 130, label %29
    i32 128, label %36
  ]

22:                                               ; preds = %16
  %23 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %24 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %23, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %25 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @fw_handle_capabilities(%struct.wil6210_priv* %25, i8* %26, i64 %27)
  store i32 %28, i32* %10, align 4
  br label %48

29:                                               ; preds = %16
  %30 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %31 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = call i32 @fw_handle_brd_file(%struct.wil6210_priv* %32, i8* %33, i64 %34)
  store i32 %35, i32* %10, align 4
  br label %48

36:                                               ; preds = %16
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %38 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %37, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %39 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %40 = load i8*, i8** %6, align 8
  %41 = load i64, i64* %7, align 8
  %42 = call i32 @fw_handle_concurrency(%struct.wil6210_priv* %39, i8* %40, i64 %41)
  store i32 %42, i32* %10, align 4
  br label %48

43:                                               ; preds = %16
  %44 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %45 = load i8*, i8** %6, align 8
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @wil_hex_dump_fw(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0), i32 %44, i32 16, i32 1, i8* %45, i64 %46, i32 1)
  br label %48

48:                                               ; preds = %43, %36, %29, %22
  %49 = load i32, i32* %10, align 4
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %48, %15
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wil_dbg_fw(%struct.wil6210_priv*, i8*) #1

declare dso_local i32 @fw_handle_capabilities(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @fw_handle_brd_file(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @fw_handle_concurrency(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @wil_hex_dump_fw(i8*, i32, i32, i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
