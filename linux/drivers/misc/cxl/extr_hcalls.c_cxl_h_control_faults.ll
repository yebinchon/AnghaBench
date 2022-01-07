; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_control_faults.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_control_faults.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_CONTROL_CA_FAULTS = common dso_local global i32 0, align 4
@H_CONTROL_CA_FAULTS_RESPOND_PSL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [66 x i8] c"cxl_h_control_faults(%#.16llx, 0x%llx, %#llx, %#llx): %li (%#lx)\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected return code: %lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cxl_h_control_faults(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i64, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = mul nuw i64 8, %15
  %19 = trunc i64 %18 to i32
  %20 = call i32 @memset(i64* %17, i32 0, i32 %19)
  %21 = load i32, i32* @H_CONTROL_CA_FAULTS, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* @H_CONTROL_CA_FAULTS_RESPOND_PSL, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i64 @plpar_hcall(i32 %21, i64* %17, i32 %22, i32 %23, i32 %24, i32 %25, i32 %26)
  store i64 %27, i64* %12, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i64, i64* %12, align 8
  %34 = getelementptr inbounds i64, i64* %17, i64 0
  %35 = load i64, i64* %34, align 16
  %36 = call i32 @_PRINT_MSG(i64 %28, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30, i32 %31, i32 %32, i64 %33, i64 %35)
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %9, align 4
  %41 = getelementptr inbounds i64, i64* %17, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = load i64, i64* %12, align 8
  %44 = call i32 @trace_cxl_hcall_control_faults(i32 %37, i32 %38, i32 %39, i32 %40, i64 %42, i64 %43)
  %45 = load i64, i64* %12, align 8
  switch i64 %45, label %56 [
    i64 128, label %46
    i64 130, label %47
    i64 132, label %50
    i64 129, label %50
    i64 134, label %50
    i64 133, label %53
    i64 131, label %53
  ]

46:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %61

47:                                               ; preds = %4
  %48 = load i64, i64* @EINVAL, align 8
  %49 = sub nsw i64 0, %48
  store i64 %49, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %61

50:                                               ; preds = %4, %4, %4
  %51 = load i64, i64* @EBUSY, align 8
  %52 = sub nsw i64 0, %51
  store i64 %52, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %61

53:                                               ; preds = %4, %4
  %54 = load i64, i64* @EINVAL, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %61

56:                                               ; preds = %4
  %57 = load i64, i64* %12, align 8
  %58 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %57)
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub nsw i64 0, %59
  store i64 %60, i64* %5, align 8
  store i32 1, i32* %13, align 4
  br label %61

61:                                               ; preds = %56, %53, %50, %47, %46
  %62 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %62)
  %63 = load i64, i64* %5, align 8
  ret i64 %63
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @plpar_hcall(i32, i64*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @_PRINT_MSG(i64, i8*, i32, i32, i32, i32, i64, i64) #2

declare dso_local i32 @trace_cxl_hcall_control_faults(i32, i32, i32, i32, i64, i64) #2

declare dso_local i32 @WARN(i32, i8*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
