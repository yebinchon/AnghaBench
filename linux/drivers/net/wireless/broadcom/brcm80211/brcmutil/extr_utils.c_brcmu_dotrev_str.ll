; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_dotrev_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmutil/extr_utils.c_brcmu_dotrev_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BRCMU_DOTREV_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"%d.%d.%d.%d\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"%d.%d.%d\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%d.%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @brcmu_dotrev_str(i32 %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [4 x i32], align 16
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %2
  %10 = load i8*, i8** %5, align 8
  %11 = load i32, i32* @BRCMU_DOTREV_LEN, align 4
  %12 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %10, i32 %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %3, align 8
  br label %70

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 255
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  store i32 %17, i32* %18, align 16
  %19 = load i32, i32* %4, align 4
  %20 = ashr i32 %19, 16
  %21 = and i32 %20, 255
  %22 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %4, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  store i32 %25, i32* %26, align 8
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, 255
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  store i32 %28, i32* %29, align 4
  %30 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %14
  %34 = load i8*, i8** %5, align 8
  %35 = load i32, i32* @BRCMU_DOTREV_LEN, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %37 = load i32, i32* %36, align 16
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %41 = load i32, i32* %40, align 8
  %42 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %37, i32 %39, i32 %41, i32 %43)
  br label %68

45:                                               ; preds = %14
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %45
  %50 = load i8*, i8** %5, align 8
  %51 = load i32, i32* @BRCMU_DOTREV_LEN, align 4
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %53 = load i32, i32* %52, align 16
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %50, i32 %51, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %53, i32 %55, i32 %57)
  br label %67

59:                                               ; preds = %45
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* @BRCMU_DOTREV_LEN, align 4
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %63 = load i32, i32* %62, align 16
  %64 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %60, i32 %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %59, %49
  br label %68

68:                                               ; preds = %67, %33
  %69 = load i8*, i8** %5, align 8
  store i8* %69, i8** %3, align 8
  br label %70

70:                                               ; preds = %68, %9
  %71 = load i8*, i8** %3, align 8
  ret i8* %71
}

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
