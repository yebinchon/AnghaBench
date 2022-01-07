; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wil_crash_dump.c_wil_fw_core_dump.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wil_crash_dump.c_wil_fw_core_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"fail to get fw dump size\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"fw core dumped, size %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_fw_core_dump(%struct.wil6210_priv* %0) #0 {
  %2 = alloca %struct.wil6210_priv*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %2, align 8
  %5 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %6 = call i64 @wil_fw_get_crash_dump_bounds(%struct.wil6210_priv* %5, i32* %4, i32* null)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %10 = call i32 @wil_err(%struct.wil6210_priv* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %36

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  %13 = call i8* @vzalloc(i32 %12)
  store i8* %13, i8** %3, align 8
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %11
  br label %36

17:                                               ; preds = %11
  %18 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i64 @wil_fw_copy_crash_dump(%struct.wil6210_priv* %18, i8* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %17
  %24 = load i8*, i8** %3, align 8
  %25 = call i32 @vfree(i8* %24)
  br label %36

26:                                               ; preds = %17
  %27 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %28 = call i32 @wil_to_dev(%struct.wil6210_priv* %27)
  %29 = load i8*, i8** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @dev_coredumpv(i32 %28, i8* %29, i32 %30, i32 %31)
  %33 = load %struct.wil6210_priv*, %struct.wil6210_priv** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @wil_info(%struct.wil6210_priv* %33, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %26, %23, %16, %8
  ret void
}

declare dso_local i64 @wil_fw_get_crash_dump_bounds(%struct.wil6210_priv*, i32*, i32*) #1

declare dso_local i32 @wil_err(%struct.wil6210_priv*, i8*) #1

declare dso_local i8* @vzalloc(i32) #1

declare dso_local i64 @wil_fw_copy_crash_dump(%struct.wil6210_priv*, i8*, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @dev_coredumpv(i32, i8*, i32, i32) #1

declare dso_local i32 @wil_to_dev(%struct.wil6210_priv*) #1

declare dso_local i32 @wil_info(%struct.wil6210_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
