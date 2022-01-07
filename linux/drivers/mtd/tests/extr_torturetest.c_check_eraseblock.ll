; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_check_eraseblock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_check_eraseblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@check_buf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"single bit flip occurred at EB %d MTD reported that it was fixed.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"error %d while reading EB %d, read %zd\0A\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"failed to read %zd bytes from EB %d, read only %zd, but no error reported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"read wrong data from EB %d\0A\00", align 1
@RETRIES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [32 x i8] c"re-try reading data from EB %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"retried %d times, still errors, give-up\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [37 x i8] c"only attempt number %d was OK (!!!)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @check_eraseblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_eraseblock(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = mul nsw i32 %11, %14
  store i32 %15, i32* %9, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  store i64 %19, i64* %10, align 8
  %20 = load i32, i32* @pgcnt, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %37

22:                                               ; preds = %2
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = load i32, i32* @pgcnt, align 4
  %30 = load i32, i32* @pgsize, align 4
  %31 = mul nsw i32 %29, %30
  %32 = sub nsw i32 %28, %31
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* @pgcnt, align 4
  %34 = load i32, i32* @pgsize, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %22, %2
  br label %38

38:                                               ; preds = %88, %37
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i64, i64* %10, align 8
  %42 = load i32, i32* @check_buf, align 4
  %43 = call i32 @mtd_read(%struct.TYPE_3__* %39, i32 %40, i64 %41, i64* %8, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = call i64 @mtd_is_bitflip(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %38
  %48 = load i32, i32* %4, align 4
  %49 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32 %48)
  br label %60

50:                                               ; preds = %38
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %4, align 4
  %56 = load i64, i64* %8, align 8
  %57 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %54, i32 %55, i64 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %104

59:                                               ; preds = %50
  br label %60

60:                                               ; preds = %59, %47
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* %10, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %60
  %65 = load i64, i64* %10, align 8
  %66 = trunc i64 %65 to i32
  %67 = load i32, i32* %4, align 4
  %68 = load i64, i64* %8, align 8
  %69 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i32 %66, i32 %67, i64 %68)
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %104

72:                                               ; preds = %60
  %73 = load i8*, i8** %5, align 8
  %74 = load i32, i32* @check_buf, align 4
  %75 = load i64, i64* %10, align 8
  %76 = call i64 @memcmp(i8* %73, i32 %74, i64 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %72
  %79 = load i32, i32* %4, align 4
  %80 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @check_buf, align 4
  %82 = load i8*, i8** %5, align 8
  %83 = call i32 @report_corrupt(i32 %81, i8* %82)
  %84 = load i32, i32* %7, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %7, align 4
  %86 = load i32, i32* @RETRIES, align 4
  %87 = icmp slt i32 %84, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %78
  %89 = call i32 (...) @yield()
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %90)
  br label %38

92:                                               ; preds = %78
  %93 = load i32, i32* @RETRIES, align 4
  %94 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0), i32 %93)
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %104

97:                                               ; preds = %72
  %98 = load i32, i32* %7, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %97
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %100, %97
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %92, %64, %53
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @mtd_read(%struct.TYPE_3__*, i32, i64, i64*, i32) #1

declare dso_local i64 @mtd_is_bitflip(i32) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

declare dso_local i64 @memcmp(i8*, i32, i64) #1

declare dso_local i32 @report_corrupt(i32, i8*) #1

declare dso_local i32 @yield(...) #1

declare dso_local i32 @pr_info(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
