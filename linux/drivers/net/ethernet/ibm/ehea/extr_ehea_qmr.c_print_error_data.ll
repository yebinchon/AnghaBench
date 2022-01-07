; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_print_error_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_qmr.c_print_error_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_DATA_TYPE = common dso_local global i32 0, align 4
@ERROR_DATA_LENGTH = common dso_local global i32 0, align 4
@EHEA_PAGESIZE = common dso_local global i32 0, align 4
@EHEA_AER_RESTYPE_QP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"QP (resource=%llX) state: AER=0x%llX, AERR=0x%llX, port=%llX\0A\00", align 1
@EHEA_AER_RESTYPE_CQ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"CQ (resource=%llX) state: AER=0x%llX\0A\00", align 1
@EHEA_AER_RESTYPE_EQ = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"EQ (resource=%llX) state: AER=0x%llX\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"error data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*)* @print_error_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_error_data(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64* %0, i64** %2, align 8
  %6 = load i32, i32* @ERROR_DATA_TYPE, align 4
  %7 = load i64*, i64** %2, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 2
  %9 = load i64, i64* %8, align 8
  %10 = call i8* @EHEA_BMASK_GET(i32 %6, i64 %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %4, align 8
  %12 = load i64*, i64** %2, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @ERROR_DATA_LENGTH, align 4
  %16 = load i64*, i64** %2, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  %18 = load i64, i64* %17, align 8
  %19 = call i8* @EHEA_BMASK_GET(i32 %15, i64 %18)
  %20 = ptrtoint i8* %19 to i32
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load i32, i32* @EHEA_PAGESIZE, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @EHEA_PAGESIZE, align 4
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %24, %1
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @EHEA_AER_RESTYPE_QP, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = load i64*, i64** %2, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 6
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %2, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 12
  %37 = load i64, i64* %36, align 8
  %38 = load i64*, i64** %2, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 22
  %40 = load i64, i64* %39, align 8
  %41 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0), i64 %31, i64 %34, i64 %37, i64 %40)
  br label %64

42:                                               ; preds = %26
  %43 = load i64, i64* %4, align 8
  %44 = load i64, i64* @EHEA_AER_RESTYPE_CQ, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i64, i64* %5, align 8
  %48 = load i64*, i64** %2, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 6
  %50 = load i64, i64* %49, align 8
  %51 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %47, i64 %50)
  br label %63

52:                                               ; preds = %42
  %53 = load i64, i64* %4, align 8
  %54 = load i64, i64* @EHEA_AER_RESTYPE_EQ, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i64, i64* %5, align 8
  %58 = load i64*, i64** %2, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 6
  %60 = load i64, i64* %59, align 8
  %61 = call i32 (i8*, i64, i64, ...) @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i64 %57, i64 %60)
  br label %62

62:                                               ; preds = %56, %52
  br label %63

63:                                               ; preds = %62, %46
  br label %64

64:                                               ; preds = %63, %30
  %65 = load i64*, i64** %2, align 8
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ehea_dump(i64* %65, i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i8* @EHEA_BMASK_GET(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i64, i64, ...) #1

declare dso_local i32 @ehea_dump(i64*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
