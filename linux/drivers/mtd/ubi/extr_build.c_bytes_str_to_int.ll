; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_bytes_str_to_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_build.c_bytes_str_to_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"UBI error: incorrect bytes count: \22%s\22\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @bytes_str_to_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bytes_str_to_int(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call i64 @simple_strtoul(i8* %6, i8** %4, i32 0)
  store i64 %7, i64* %5, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @INT_MAX, align 8
  %14 = icmp uge i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11, %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %57

20:                                               ; preds = %11
  %21 = load i8*, i8** %4, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %49 [
    i32 71, label %24
    i32 77, label %27
    i32 75, label %30
    i32 0, label %48
  ]

24:                                               ; preds = %20
  %25 = load i64, i64* %5, align 8
  %26 = mul i64 %25, 1024
  store i64 %26, i64* %5, align 8
  br label %27

27:                                               ; preds = %20, %24
  %28 = load i64, i64* %5, align 8
  %29 = mul i64 %28, 1024
  store i64 %29, i64* %5, align 8
  br label %30

30:                                               ; preds = %20, %27
  %31 = load i64, i64* %5, align 8
  %32 = mul i64 %31, 1024
  store i64 %32, i64* %5, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 105
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 2
  %41 = load i8, i8* %40, align 1
  %42 = sext i8 %41 to i32
  %43 = icmp eq i32 %42, 66
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i8*, i8** %4, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 2
  store i8* %46, i8** %4, align 8
  br label %47

47:                                               ; preds = %44, %38, %30
  br label %48

48:                                               ; preds = %20, %47
  br label %54

49:                                               ; preds = %20
  %50 = load i8*, i8** %3, align 8
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i8* %50)
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %57

54:                                               ; preds = %48
  %55 = load i64, i64* %5, align 8
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %54, %49, %15
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
