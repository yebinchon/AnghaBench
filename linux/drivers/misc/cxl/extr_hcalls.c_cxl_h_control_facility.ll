; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_control_facility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_control_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL9_BUFSIZE = common dso_local global i32 0, align 4
@H_CONTROL_CA_FACILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [81 x i8] c"cxl_h_control_facility(%#.16llx, %s(%#llx, %#llx, %#llx, %#llx, R4: %#lx)): %li\0A\00", align 1
@H_CONTROL_CA_FACILITY_COLLECT_VPD = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"Unexpected return code: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64, i64, i64*)* @cxl_h_control_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cxl_h_control_facility(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store i64 %0, i64* %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %20 = load i32, i32* @PLPAR_HCALL9_BUFSIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i64, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i64, i64* %18, align 8
  %25 = load i32, i32* @H_CONTROL_CA_FACILITY, align 4
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %10, align 8
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %12, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* %14, align 8
  %32 = call i32 @CXL_H9_WAIT_UNTIL_DONE(i64 %24, i64* %23, i32 %25, i64 %26, i64 %27, i64 %28, i64 %29, i64 %30, i64 %31)
  %33 = load i64, i64* %18, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @OP_STR_CONTROL_ADAPTER(i64 %35)
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* %12, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %14, align 8
  %41 = getelementptr inbounds i64, i64* %23, i64 0
  %42 = load i64, i64* %41, align 16
  %43 = load i64, i64* %18, align 8
  %44 = call i32 @_PRINT_MSG(i64 %33, i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %36, i64 %37, i64 %38, i64 %39, i64 %40, i64 %42, i64 %43)
  %45 = load i64, i64* %9, align 8
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @OP_STR_CONTROL_ADAPTER(i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* %12, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %14, align 8
  %52 = getelementptr inbounds i64, i64* %23, i64 0
  %53 = load i64, i64* %52, align 16
  %54 = load i64, i64* %18, align 8
  %55 = call i32 @trace_cxl_hcall_control_facility(i64 %45, i32 %47, i64 %48, i64 %49, i64 %50, i64 %51, i64 %53, i64 %54)
  %56 = load i64, i64* %18, align 8
  switch i64 %56, label %72 [
    i64 128, label %57
    i64 132, label %66
    i64 136, label %66
    i64 133, label %66
    i64 134, label %66
    i64 130, label %66
    i64 138, label %69
    i64 131, label %69
    i64 135, label %69
    i64 129, label %69
    i64 137, label %69
  ]

57:                                               ; preds = %7
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @H_CONTROL_CA_FACILITY_COLLECT_VPD, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = getelementptr inbounds i64, i64* %23, i64 0
  %63 = load i64, i64* %62, align 16
  %64 = load i64*, i64** %15, align 8
  store i64 %63, i64* %64, align 8
  br label %65

65:                                               ; preds = %61, %57
  store i64 0, i64* %8, align 8
  store i32 1, i32* %19, align 4
  br label %77

66:                                               ; preds = %7, %7, %7, %7, %7
  %67 = load i64, i64* @EINVAL, align 8
  %68 = sub nsw i64 0, %67
  store i64 %68, i64* %8, align 8
  store i32 1, i32* %19, align 4
  br label %77

69:                                               ; preds = %7, %7, %7, %7, %7
  %70 = load i64, i64* @EBUSY, align 8
  %71 = sub nsw i64 0, %70
  store i64 %71, i64* %8, align 8
  store i32 1, i32* %19, align 4
  br label %77

72:                                               ; preds = %7
  %73 = load i64, i64* %18, align 8
  %74 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %73)
  %75 = load i64, i64* @EINVAL, align 8
  %76 = sub nsw i64 0, %75
  store i64 %76, i64* %8, align 8
  store i32 1, i32* %19, align 4
  br label %77

77:                                               ; preds = %72, %69, %66, %65
  %78 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i64, i64* %8, align 8
  ret i64 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @CXL_H9_WAIT_UNTIL_DONE(i64, i64*, i32, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @_PRINT_MSG(i64, i8*, i64, i32, i64, i64, i64, i64, i64, i64) #2

declare dso_local i32 @OP_STR_CONTROL_ADAPTER(i64) #2

declare dso_local i32 @trace_cxl_hcall_control_facility(i64, i32, i64, i64, i64, i64, i64, i64) #2

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
