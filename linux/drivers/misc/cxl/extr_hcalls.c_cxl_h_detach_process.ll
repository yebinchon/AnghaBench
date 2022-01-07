; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_detach_process.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_detach_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_DETACH_CA_PROCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"cxl_h_detach_process(%#.16llx, 0x%.8llx): %li\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected return code: %lx\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cxl_h_detach_process(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i64, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i32, i32* @H_DETACH_CA_PROCESS, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @CXL_H_WAIT_UNTIL_DONE(i64 %14, i64* %13, i32 %15, i32 %16, i32 %17)
  %19 = load i64, i64* %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i64, i64* %8, align 8
  %23 = call i32 @_PRINT_MSG(i64 %19, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @trace_cxl_hcall_detach(i32 %24, i32 %25, i64 %26)
  %28 = load i64, i64* %8, align 8
  switch i64 %28, label %36 [
    i64 128, label %29
    i64 131, label %30
    i64 134, label %33
    i64 130, label %33
    i64 132, label %33
    i64 129, label %33
    i64 133, label %33
  ]

29:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %41

30:                                               ; preds = %2
  %31 = load i64, i64* @EINVAL, align 8
  %32 = sub nsw i64 0, %31
  store i64 %32, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %41

33:                                               ; preds = %2, %2, %2, %2, %2
  %34 = load i64, i64* @EBUSY, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load i64, i64* %8, align 8
  %38 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %37)
  %39 = load i64, i64* @EINVAL, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %3, align 8
  store i32 1, i32* %9, align 4
  br label %41

41:                                               ; preds = %36, %33, %30, %29
  %42 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %42)
  %43 = load i64, i64* %3, align 8
  ret i64 %43
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CXL_H_WAIT_UNTIL_DONE(i64, i64*, i32, i32, i32) #2

declare dso_local i32 @_PRINT_MSG(i64, i8*, i32, i32, i64) #2

declare dso_local i32 @trace_cxl_hcall_detach(i32, i32, i64) #2

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
