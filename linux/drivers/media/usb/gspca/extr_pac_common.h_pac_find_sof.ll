; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac_common.h_pac_find_sof.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_pac_common.h_pac_find_sof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@D_FRAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"SOF found, bytes to analyze: %u - Frame starts at byte #%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.gspca_dev*, i32*, i8*, i32)* @pac_find_sof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @pac_find_sof(%struct.gspca_dev* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gspca_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %96, %4
  %12 = load i32, i32* %10, align 4
  %13 = load i32, i32* %9, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %99

15:                                               ; preds = %11
  %16 = load i32*, i32** %7, align 8
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %93 [
    i32 0, label %18
    i32 1, label %29
    i32 2, label %42
    i32 3, label %55
    i32 4, label %68
  ]

18:                                               ; preds = %15
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i8, i8* %19, i64 %21
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 255
  br i1 %25, label %26, label %28

26:                                               ; preds = %18
  %27 = load i32*, i32** %7, align 8
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %26, %18
  br label %95

29:                                               ; preds = %15
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 255
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i32*, i32** %7, align 8
  store i32 2, i32* %38, align 4
  br label %41

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  store i32 0, i32* %40, align 4
  br label %41

41:                                               ; preds = %39, %37
  br label %95

42:                                               ; preds = %15
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i8, i8* %43, i64 %45
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  switch i32 %48, label %52 [
    i32 0, label %49
    i32 255, label %51
  ]

49:                                               ; preds = %42
  %50 = load i32*, i32** %7, align 8
  store i32 3, i32* %50, align 4
  br label %54

51:                                               ; preds = %42
  br label %54

52:                                               ; preds = %42
  %53 = load i32*, i32** %7, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %51, %49
  br label %95

55:                                               ; preds = %15
  %56 = load i8*, i8** %8, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i8, i8* %56, i64 %58
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 255
  br i1 %62, label %63, label %65

63:                                               ; preds = %55
  %64 = load i32*, i32** %7, align 8
  store i32 4, i32* %64, align 4
  br label %67

65:                                               ; preds = %55
  %66 = load i32*, i32** %7, align 8
  store i32 0, i32* %66, align 4
  br label %67

67:                                               ; preds = %65, %63
  br label %95

68:                                               ; preds = %15
  %69 = load i8*, i8** %8, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %69, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  switch i32 %74, label %90 [
    i32 150, label %75
    i32 255, label %88
  ]

75:                                               ; preds = %68
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %6, align 8
  %77 = load i32, i32* @D_FRAM, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = add nsw i32 %79, 1
  %81 = call i32 @gspca_dbg(%struct.gspca_dev* %76, i32 %77, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %80)
  %82 = load i32*, i32** %7, align 8
  store i32 0, i32* %82, align 4
  %83 = load i8*, i8** %8, align 8
  %84 = load i32, i32* %10, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8, i8* %83, i64 %85
  %87 = getelementptr inbounds i8, i8* %86, i64 1
  store i8* %87, i8** %5, align 8
  br label %100

88:                                               ; preds = %68
  %89 = load i32*, i32** %7, align 8
  store i32 2, i32* %89, align 4
  br label %92

90:                                               ; preds = %68
  %91 = load i32*, i32** %7, align 8
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %90, %88
  br label %95

93:                                               ; preds = %15
  %94 = load i32*, i32** %7, align 8
  store i32 0, i32* %94, align 4
  br label %95

95:                                               ; preds = %93, %92, %67, %54, %41, %28
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %10, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %10, align 4
  br label %11

99:                                               ; preds = %11
  store i8* null, i8** %5, align 8
  br label %100

100:                                              ; preds = %99, %75
  %101 = load i8*, i8** %5, align 8
  ret i8* %101
}

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
