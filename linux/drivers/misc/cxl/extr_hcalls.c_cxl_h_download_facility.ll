; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_download_facility.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_hcalls.c_cxl_h_download_facility.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PLPAR_HCALL_BUFSIZE = common dso_local global i32 0, align 4
@H_DOWNLOAD_CA_FACILITY = common dso_local global i32 0, align 4
@CXL_HCALL_TIMEOUT_DOWNLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Warning: Giving up waiting for CXL hcall %#x after %u msec\0A\00", align 1
@.str.1 = private unnamed_addr constant [64 x i8] c"cxl_h_download_facility(%#.16llx, %s(%#llx, %#llx), %#lx): %li\0A\00", align 1
@EINVAL = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Unexpected return code: %lx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, i64, i64, i64*)* @cxl_h_download_facility to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cxl_h_download_facility(i64 %0, i64 %1, i64 %2, i64 %3, i64* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64* %4, i64** %11, align 8
  %19 = load i32, i32* @PLPAR_HCALL_BUFSIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %12, align 8
  %22 = alloca i64, i64 %20, align 16
  store i64 %20, i64* %13, align 8
  store i32 0, i32* %15, align 4
  store i64 0, i64* %16, align 8
  %23 = load i64*, i64** %11, align 8
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i64*, i64** %11, align 8
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %16, align 8
  br label %29

29:                                               ; preds = %26, %5
  %30 = mul nuw i64 8, %20
  %31 = trunc i64 %30 to i32
  %32 = call i32 @memset(i64* %22, i32 0, i32 %31)
  br label %33

33:                                               ; preds = %71, %29
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* @H_DOWNLOAD_CA_FACILITY, align 4
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %16, align 8
  %41 = call i64 @plpar_hcall(i32 %35, i64* %22, i64 %36, i64 %37, i64 %38, i64 %39, i64 %40)
  store i64 %41, i64* %17, align 8
  %42 = getelementptr inbounds i64, i64* %22, i64 0
  %43 = load i64, i64* %42, align 16
  store i64 %43, i64* %16, align 8
  %44 = load i64, i64* %17, align 8
  %45 = icmp ne i64 %44, 136
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i64, i64* %17, align 8
  %48 = call i32 @H_IS_LONG_BUSY(i64 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %46
  br label %72

51:                                               ; preds = %46, %34
  %52 = load i64, i64* %17, align 8
  %53 = icmp ne i64 %52, 136
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i64, i64* %17, align 8
  %56 = call i32 @get_longbusy_msecs(i64 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %15, align 4
  %59 = add i32 %58, %57
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = load i32, i32* @CXL_HCALL_TIMEOUT_DOWNLOAD, align 4
  %62 = icmp ugt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %54
  %64 = load i32, i32* @H_DOWNLOAD_CA_FACILITY, align 4
  %65 = sext i32 %64 to i64
  %66 = load i32, i32* %15, align 4
  %67 = call i32 (i32, i8*, i64, ...) @WARN(i32 1, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %65, i32 %66)
  store i64 136, i64* %17, align 8
  br label %72

68:                                               ; preds = %54
  %69 = load i32, i32* %14, align 4
  %70 = call i32 @msleep(i32 %69)
  br label %71

71:                                               ; preds = %68, %51
  br label %33

72:                                               ; preds = %63, %50
  %73 = load i64, i64* %17, align 8
  %74 = load i64, i64* %7, align 8
  %75 = load i64, i64* %8, align 8
  %76 = call i32 @OP_STR_DOWNLOAD_ADAPTER(i64 %75)
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %22, i64 0
  %80 = load i64, i64* %79, align 16
  %81 = load i64, i64* %17, align 8
  %82 = call i32 @_PRINT_MSG(i64 %73, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %74, i32 %76, i64 %77, i64 %78, i64 %80, i64 %81)
  %83 = load i64, i64* %7, align 8
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @OP_STR_DOWNLOAD_ADAPTER(i64 %84)
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %10, align 8
  %88 = getelementptr inbounds i64, i64* %22, i64 0
  %89 = load i64, i64* %88, align 16
  %90 = load i64, i64* %17, align 8
  %91 = call i32 @trace_cxl_hcall_download_facility(i64 %83, i32 %85, i64 %86, i64 %87, i64 %89, i64 %90)
  %92 = load i64, i64* %17, align 8
  switch i64 %92, label %104 [
    i64 128, label %93
    i64 132, label %94
    i64 134, label %94
    i64 130, label %94
    i64 137, label %94
    i64 138, label %97
    i64 131, label %97
    i64 133, label %97
    i64 129, label %97
    i64 136, label %97
    i64 135, label %100
  ]

93:                                               ; preds = %72
  store i64 0, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %109

94:                                               ; preds = %72, %72, %72, %72
  %95 = load i64, i64* @EINVAL, align 8
  %96 = sub nsw i64 0, %95
  store i64 %96, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %109

97:                                               ; preds = %72, %72, %72, %72, %72
  %98 = load i64, i64* @EBUSY, align 8
  %99 = sub nsw i64 0, %98
  store i64 %99, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %109

100:                                              ; preds = %72
  %101 = getelementptr inbounds i64, i64* %22, i64 0
  %102 = load i64, i64* %101, align 16
  %103 = load i64*, i64** %11, align 8
  store i64 %102, i64* %103, align 8
  store i64 1, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %109

104:                                              ; preds = %72
  %105 = load i64, i64* %17, align 8
  %106 = call i32 (i32, i8*, i64, ...) @WARN(i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %105)
  %107 = load i64, i64* @EINVAL, align 8
  %108 = sub nsw i64 0, %107
  store i64 %108, i64* %6, align 8
  store i32 1, i32* %18, align 4
  br label %109

109:                                              ; preds = %104, %100, %97, %94, %93
  %110 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i64, i64* %6, align 8
  ret i64 %111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i64*, i32, i32) #2

declare dso_local i64 @plpar_hcall(i32, i64*, i64, i64, i64, i64, i64) #2

declare dso_local i32 @H_IS_LONG_BUSY(i64) #2

declare dso_local i32 @get_longbusy_msecs(i64) #2

declare dso_local i32 @WARN(i32, i8*, i64, ...) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @_PRINT_MSG(i64, i8*, i64, i32, i64, i64, i64, i64) #2

declare dso_local i32 @OP_STR_DOWNLOAD_ADAPTER(i64) #2

declare dso_local i32 @trace_cxl_hcall_download_facility(i64, i32, i64, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
