; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_wil_request_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_wil_request_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.firmware = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Failed to load brd %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Loading <%s>, %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Loading <%s> failed, rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_request_board(%struct.wil6210_priv* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.firmware*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %11 = call i32 @wil_to_dev(%struct.wil6210_priv* %10)
  %12 = call i32 @request_firmware(%struct.firmware** %8, i8* %9, i32 %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = call i32 (%struct.wil6210_priv*, i8*, i8*, ...) @wil_err_fw(%struct.wil6210_priv* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %58

20:                                               ; preds = %2
  %21 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = load %struct.firmware*, %struct.firmware** %8, align 8
  %24 = getelementptr inbounds %struct.firmware, %struct.firmware* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %22, i32 %25)
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %28 = load %struct.firmware*, %struct.firmware** %8, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.firmware*, %struct.firmware** %8, align 8
  %32 = getelementptr inbounds %struct.firmware, %struct.firmware* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @wil_fw_verify(%struct.wil6210_priv* %27, i32 %30, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  store i32 %38, i32* %6, align 4
  br label %46

39:                                               ; preds = %20
  %40 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %41 = load %struct.firmware*, %struct.firmware** %8, align 8
  %42 = getelementptr inbounds %struct.firmware, %struct.firmware* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @wil_brd_process(%struct.wil6210_priv* %40, i32 %43, i32 %44)
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %39, %37
  %47 = load %struct.firmware*, %struct.firmware** %8, align 8
  %48 = call i32 @release_firmware(%struct.firmware* %47)
  %49 = load i32, i32* %6, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.wil6210_priv*, %struct.wil6210_priv** %4, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i32, i32* %6, align 4
  %55 = call i32 (%struct.wil6210_priv*, i8*, i8*, ...) @wil_err_fw(%struct.wil6210_priv* %52, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %46
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %15
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err_fw(%struct.wil6210_priv*, i8*, i8*, ...) #1

declare dso_local i32 @wil_dbg_fw(%struct.wil6210_priv*, i8*, i8*, i32) #1

declare dso_local i32 @wil_fw_verify(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @wil_brd_process(%struct.wil6210_priv*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
