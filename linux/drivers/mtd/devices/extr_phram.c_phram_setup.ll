; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_phram.c_phram_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_phram.c_phram_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"parameter too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"too many arguments\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"not enough arguments\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"illegal start address\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"illegal device length\0A\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"%s device: %#llx at %#llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @phram_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phram_setup(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [104 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %12 = getelementptr inbounds [104 x i8], [104 x i8]* %4, i64 0, i64 0
  store i8* %12, i8** %5, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strnlen(i8* %13, i32 104)
  %15 = sext i32 %14 to i64
  %16 = icmp uge i64 %15, 104
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = call i32 @parse_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %1
  %20 = load i8*, i8** %5, align 8
  %21 = load i8*, i8** %3, align 8
  %22 = call i32 @strcpy(i8* %20, i8* %21)
  %23 = load i8*, i8** %5, align 8
  %24 = call i32 @kill_final_newline(i8* %23)
  store i32 0, i32* %10, align 4
  br label %25

25:                                               ; preds = %33, %19
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 3
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = call i8* @strsep(i8** %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 %31
  store i8* %29, i8** %32, align 8
  br label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %10, align 4
  br label %25

36:                                               ; preds = %25
  %37 = load i8*, i8** %5, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %39, label %41

39:                                               ; preds = %36
  %40 = call i32 @parse_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %41

41:                                               ; preds = %39, %36
  %42 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %43 = load i8*, i8** %42, align 16
  %44 = icmp ne i8* %43, null
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = call i32 @parse_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  br label %47

47:                                               ; preds = %45, %41
  %48 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %49 = load i8*, i8** %48, align 16
  %50 = call i32 @parse_name(i8** %7, i8* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %2, align 4
  br label %92

55:                                               ; preds = %47
  %56 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @parse_num64(i32* %8, i8* %57)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %55
  %62 = load i8*, i8** %7, align 8
  %63 = call i32 @kfree(i8* %62)
  %64 = call i32 @parse_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %65

65:                                               ; preds = %61, %55
  %66 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 2
  %67 = load i8*, i8** %66, align 16
  %68 = call i32 @parse_num64(i32* %9, i8* %67)
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %11, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load i8*, i8** %7, align 8
  %73 = call i32 @kfree(i8* %72)
  %74 = call i32 @parse_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  br label %75

75:                                               ; preds = %71, %65
  %76 = load i8*, i8** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i32 @register_device(i8* %76, i32 %77, i32 %78)
  store i32 %79, i32* %11, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %75
  %83 = load i8*, i8** %7, align 8
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %8, align 4
  %86 = call i32 @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i8* %83, i32 %84, i32 %85)
  br label %90

87:                                               ; preds = %75
  %88 = load i8*, i8** %7, align 8
  %89 = call i32 @kfree(i8* %88)
  br label %90

90:                                               ; preds = %87, %82
  %91 = load i32, i32* %11, align 4
  store i32 %91, i32* %2, align 4
  br label %92

92:                                               ; preds = %90, %53
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @strnlen(i8*, i32) #1

declare dso_local i32 @parse_err(i8*) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @kill_final_newline(i8*) #1

declare dso_local i8* @strsep(i8**, i8*) #1

declare dso_local i32 @parse_name(i8**, i8*) #1

declare dso_local i32 @parse_num64(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @register_device(i8*, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
