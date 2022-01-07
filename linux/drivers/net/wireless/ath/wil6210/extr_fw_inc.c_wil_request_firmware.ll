; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_wil_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_fw_inc.c_wil_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32*, i64 }
%struct.firmware = type { i64, i8* }

@.str = private unnamed_addr constant [34 x i8] c"Failed to load firmware %s rc %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Loading <%s>, %zu bytes\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Loading <%s> failed, rc %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wil_request_firmware(%struct.wil6210_priv* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.firmware*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %15 = call i32 @wil_to_dev(%struct.wil6210_priv* %14)
  %16 = call i32 @request_firmware(%struct.firmware** %10, i8* %13, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %3
  %20 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @wil_err_fw(%struct.wil6210_priv* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %90

25:                                               ; preds = %3
  %26 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.firmware*, %struct.firmware** %10, align 8
  %29 = getelementptr inbounds %struct.firmware, %struct.firmware* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wil_dbg_fw(%struct.wil6210_priv* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* %27, i64 %30)
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %33 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %32, i32 0, i32 1
  store i64 0, i64* %33, align 8
  %34 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %35 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = call i32 @kfree(i32* %36)
  %38 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %39 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %38, i32 0, i32 0
  store i32* null, i32** %39, align 8
  %40 = load %struct.firmware*, %struct.firmware** %10, align 8
  %41 = getelementptr inbounds %struct.firmware, %struct.firmware* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %11, align 8
  %43 = load %struct.firmware*, %struct.firmware** %10, align 8
  %44 = getelementptr inbounds %struct.firmware, %struct.firmware* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %12, align 8
  br label %46

46:                                               ; preds = %68, %25
  %47 = load i64, i64* %11, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %77

49:                                               ; preds = %46
  %50 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @wil_fw_verify(%struct.wil6210_priv* %50, i8* %51, i64 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %8, align 4
  br label %78

58:                                               ; preds = %49
  %59 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %60 = load i8*, i8** %12, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @wil_fw_process(%struct.wil6210_priv* %59, i8* %60, i32 %61, i32 %62)
  store i32 %63, i32* %8, align 4
  %64 = load i32, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %78

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = load i64, i64* %11, align 8
  %72 = sub i64 %71, %70
  store i64 %72, i64* %11, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i8*, i8** %12, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr i8, i8* %74, i64 %75
  store i8* %76, i8** %12, align 8
  br label %46

77:                                               ; preds = %46
  br label %78

78:                                               ; preds = %77, %66, %56
  %79 = load %struct.firmware*, %struct.firmware** %10, align 8
  %80 = call i32 @release_firmware(%struct.firmware* %79)
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @wil_err_fw(%struct.wil6210_priv* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %86)
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %88, %19
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_err_fw(%struct.wil6210_priv*, i8*, i8*, i32) #1

declare dso_local i32 @wil_dbg_fw(%struct.wil6210_priv*, i8*, i8*, i64) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @wil_fw_verify(%struct.wil6210_priv*, i8*, i64) #1

declare dso_local i32 @wil_fw_process(%struct.wil6210_priv*, i8*, i32, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
