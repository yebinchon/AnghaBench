; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_parse_hex_line.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/as102/extr_as102_fw.c_parse_hex_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"invalid firmware file\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*, i32*, i8*)* @parse_hex_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_hex_line(i8* %0, i8* %1, i8* %2, i32* %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8, align 1
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32* %3, i32** %10, align 8
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %15 = load i8*, i8** %7, align 8
  %16 = getelementptr inbounds i8, i8* %15, i32 1
  store i8* %16, i8** %7, align 8
  %17 = load i8, i8* %15, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp ne i32 %18, 58
  br i1 %19, label %20, label %24

20:                                               ; preds = %5
  %21 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EFAULT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %92

24:                                               ; preds = %5
  %25 = load i8*, i8** %7, align 8
  store i8* %25, i8** %13, align 8
  br label %26

26:                                               ; preds = %85, %24
  %27 = load i8*, i8** %13, align 8
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp ne i32 %29, 10
  br i1 %30, label %31, label %88

31:                                               ; preds = %26
  %32 = load i8*, i8** %13, align 8
  %33 = call i32 @atohx(i8* %14, i8* %32)
  %34 = load i32, i32* %12, align 4
  switch i32 %34, label %75 [
    i32 0, label %35
    i32 1, label %39
    i32 2, label %43
    i32 3, label %47
    i32 4, label %56
    i32 5, label %56
  ]

35:                                               ; preds = %31
  %36 = load i8, i8* %14, align 1
  %37 = zext i8 %36 to i32
  %38 = load i32*, i32** %10, align 8
  store i32 %37, i32* %38, align 4
  br label %82

39:                                               ; preds = %31
  %40 = load i8, i8* %14, align 1
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 2
  store i8 %40, i8* %42, align 1
  br label %82

43:                                               ; preds = %31
  %44 = load i8, i8* %14, align 1
  %45 = load i8*, i8** %8, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 3
  store i8 %44, i8* %46, align 1
  br label %82

47:                                               ; preds = %31
  %48 = load i8, i8* %14, align 1
  %49 = zext i8 %48 to i32
  %50 = icmp eq i32 %49, 4
  br i1 %50, label %51, label %53

51:                                               ; preds = %47
  %52 = load i8*, i8** %11, align 8
  store i8 1, i8* %52, align 1
  br label %55

53:                                               ; preds = %47
  %54 = load i8*, i8** %11, align 8
  store i8 0, i8* %54, align 1
  br label %55

55:                                               ; preds = %53, %51
  br label %82

56:                                               ; preds = %31, %31
  %57 = load i8*, i8** %11, align 8
  %58 = load i8, i8* %57, align 1
  %59 = icmp ne i8 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load i8, i8* %14, align 1
  %62 = load i8*, i8** %8, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sub nsw i32 %63, 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i8, i8* %62, i64 %65
  store i8 %61, i8* %66, align 1
  br label %74

67:                                               ; preds = %56
  %68 = load i8, i8* %14, align 1
  %69 = load i8*, i8** %9, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i8, i8* %69, i64 %72
  store i8 %68, i8* %73, align 1
  br label %74

74:                                               ; preds = %67, %60
  br label %82

75:                                               ; preds = %31
  %76 = load i8, i8* %14, align 1
  %77 = load i8*, i8** %9, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %78, 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i8, i8* %77, i64 %80
  store i8 %76, i8* %81, align 1
  br label %82

82:                                               ; preds = %75, %74, %55, %43, %39, %35
  %83 = load i32, i32* %12, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %82
  %86 = load i8*, i8** %13, align 8
  %87 = getelementptr inbounds i8, i8* %86, i64 2
  store i8* %87, i8** %13, align 8
  br label %26

88:                                               ; preds = %26
  %89 = load i32, i32* %12, align 4
  %90 = mul nsw i32 %89, 2
  %91 = add nsw i32 %90, 2
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %20
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atohx(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
