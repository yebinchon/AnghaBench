; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_block2mtd_setup2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_block2mtd.c_block2mtd_setup2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_SIZE = common dso_local global i64 0, align 8
@MTD_DEFAULT_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"parameter too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"no argument\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"device name too long\0A\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"illegal erase size\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @block2mtd_setup2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @block2mtd_setup2(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [180 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca [2 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds [180 x i8], [180 x i8]* %4, i64 0, i64 0
  store i8* %12, i8** %5, align 8
  %13 = load i64, i64* @PAGE_SIZE, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* @MTD_DEFAULT_TIMEOUT, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i8*, i8** %3, align 8
  %16 = call i32 @strnlen(i8* %15, i32 180)
  %17 = sext i32 %16 to i64
  %18 = icmp uge i64 %17, 180
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

21:                                               ; preds = %1
  %22 = load i8*, i8** %5, align 8
  %23 = load i8*, i8** %3, align 8
  %24 = call i32 @strcpy(i8* %22, i8* %23)
  %25 = load i8*, i8** %5, align 8
  %26 = call i32 @kill_final_newline(i8* %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %35, %21
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 %33
  store i8* %31, i8** %34, align 8
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %27

38:                                               ; preds = %27
  %39 = load i8*, i8** %5, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %43

41:                                               ; preds = %38
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

43:                                               ; preds = %38
  %44 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %45 = load i8*, i8** %44, align 16
  %46 = icmp ne i8* %45, null
  br i1 %46, label %49, label %47

47:                                               ; preds = %43
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

49:                                               ; preds = %43
  %50 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 0
  %51 = load i8*, i8** %50, align 16
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i32 @strlen(i8* %52)
  %54 = add nsw i32 %53, 1
  %55 = icmp sgt i32 %54, 80
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

58:                                               ; preds = %49
  %59 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %60 = load i8*, i8** %59, align 8
  %61 = icmp ne i8* %60, null
  br i1 %61, label %62, label %71

62:                                               ; preds = %58
  %63 = getelementptr inbounds [2 x i8*], [2 x i8*]* %6, i64 0, i64 1
  %64 = load i8*, i8** %63, align 8
  %65 = call i32 @parse_num(i64* %8, i8* %64)
  store i32 %65, i32* %11, align 4
  %66 = load i32, i32* %11, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %62
  %69 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %76

70:                                               ; preds = %62
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i8*, i8** %7, align 8
  %73 = load i64, i64* %8, align 8
  %74 = load i64, i64* %9, align 8
  %75 = call i32 @add_device(i8* %72, i64 %73, i64 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %71, %68, %56, %47, %41, %19
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @kill_final_newline(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @parse_num(i64*, i8*) #1

declare dso_local i32 @add_device(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
