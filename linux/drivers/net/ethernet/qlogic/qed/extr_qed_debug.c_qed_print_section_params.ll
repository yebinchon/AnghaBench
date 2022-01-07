; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_print_section_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_print_section_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"fw-timestamp\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%s: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64*, i64, i8*, i64*)* @qed_print_section_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_print_section_params(i64* %0, i64 %1, i8* %2, i64* %3) #0 {
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i64* %0, i64** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %52, %4
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* %6, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %19, label %55

19:                                               ; preds = %15
  store i64 0, i64* %14, align 8
  %20 = load i64*, i64** %5, align 8
  %21 = load i64, i64* %10, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = call i64 @qed_read_param(i64* %22, i8** %12, i8** %13, i64* %14)
  %24 = load i64, i64* %10, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %10, align 8
  %26 = load i8*, i8** %13, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = load i8*, i8** %7, align 8
  %30 = load i64, i64* %11, align 8
  %31 = call i32 @qed_get_buf_ptr(i8* %29, i64 %30)
  %32 = load i8*, i8** %12, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = call i64 (i32, i8*, ...) @sprintf(i32 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %32, i8* %33)
  %35 = load i64, i64* %11, align 8
  %36 = add nsw i64 %35, %34
  store i64 %36, i64* %11, align 8
  br label %51

37:                                               ; preds = %19
  %38 = load i8*, i8** %12, align 8
  %39 = call i64 @strcmp(i8* %38, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load i8*, i8** %7, align 8
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @qed_get_buf_ptr(i8* %42, i64 %43)
  %45 = load i8*, i8** %12, align 8
  %46 = load i64, i64* %14, align 8
  %47 = call i64 (i32, i8*, ...) @sprintf(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %45, i64 %46)
  %48 = load i64, i64* %11, align 8
  %49 = add nsw i64 %48, %47
  store i64 %49, i64* %11, align 8
  br label %50

50:                                               ; preds = %41, %37
  br label %51

51:                                               ; preds = %50, %28
  br label %52

52:                                               ; preds = %51
  %53 = load i64, i64* %9, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %9, align 8
  br label %15

55:                                               ; preds = %15
  %56 = load i8*, i8** %7, align 8
  %57 = load i64, i64* %11, align 8
  %58 = call i32 @qed_get_buf_ptr(i8* %56, i64 %57)
  %59 = call i64 (i32, i8*, ...) @sprintf(i32 %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %60 = load i64, i64* %11, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %11, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64*, i64** %8, align 8
  store i64 %62, i64* %63, align 8
  %64 = load i64, i64* %10, align 8
  ret i64 %64
}

declare dso_local i64 @qed_read_param(i64*, i8**, i8**, i64*) #1

declare dso_local i64 @sprintf(i32, i8*, ...) #1

declare dso_local i32 @qed_get_buf_ptr(i8*, i64) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
