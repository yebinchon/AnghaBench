; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_countdiffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_countdiffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32, i32*, i32*)* @countdiffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @countdiffs(i8* %0, i8* %1, i32 %2, i32 %3, i32* %4, i32* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %13, align 4
  br label %17

17:                                               ; preds = %40, %6
  %18 = load i32, i32* %13, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* %10, align 4
  %21 = add i32 %19, %20
  %22 = icmp ult i32 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %17
  %24 = load i8*, i8** %7, align 8
  %25 = load i32, i32* %13, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %13, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %29, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %23
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %15, align 4
  br label %43

39:                                               ; preds = %23
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %13, align 4
  %42 = add i32 %41, 1
  store i32 %42, i32* %13, align 4
  br label %17

43:                                               ; preds = %37, %17
  br label %44

44:                                               ; preds = %97, %43
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %46, %47
  %49 = icmp ult i32 %45, %48
  br i1 %49, label %50, label %100

50:                                               ; preds = %44
  %51 = load i8*, i8** %7, align 8
  %52 = load i32, i32* %13, align 4
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds i8, i8* %51, i64 %53
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i8, i8* %57, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %56, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %50
  %65 = load i32*, i32** %11, align 8
  %66 = load i32, i32* %65, align 4
  %67 = add i32 %66, 1
  store i32 %67, i32* %65, align 4
  store i32 1, i32* %14, align 4
  br label %68

68:                                               ; preds = %93, %64
  %69 = load i32, i32* %14, align 4
  %70 = icmp ult i32 %69, 256
  br i1 %70, label %71, label %96

71:                                               ; preds = %68
  %72 = load i8*, i8** %7, align 8
  %73 = load i32, i32* %13, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = load i32, i32* %14, align 4
  %79 = and i32 %77, %78
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %13, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i8, i8* %80, i64 %82
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = load i32, i32* %14, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %79, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %71
  %90 = load i32*, i32** %12, align 8
  %91 = load i32, i32* %90, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %89, %71
  %94 = load i32, i32* %14, align 4
  %95 = shl i32 %94, 1
  store i32 %95, i32* %14, align 4
  br label %68

96:                                               ; preds = %68
  br label %97

97:                                               ; preds = %96, %50
  %98 = load i32, i32* %13, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %13, align 4
  br label %44

100:                                              ; preds = %44
  %101 = load i32, i32* %15, align 4
  ret i32 %101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
