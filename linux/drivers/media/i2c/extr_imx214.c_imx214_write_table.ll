; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_write_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_imx214.c_imx214_write_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx214 = type { i32, i32 }
%struct.reg_8 = type { i64, i32 }

@MAX_CMD = common dso_local global i32 0, align 4
@IMX214_TABLE_END = common dso_local global i64 0, align 8
@IMX214_TABLE_WAIT_MS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"write_table error: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.imx214*, %struct.reg_8*)* @imx214_write_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imx214_write_table(%struct.imx214* %0, %struct.reg_8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.imx214*, align 8
  %5 = alloca %struct.reg_8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.imx214* %0, %struct.imx214** %4, align 8
  store %struct.reg_8* %1, %struct.reg_8** %5, align 8
  %11 = load i32, i32* @MAX_CMD, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i32, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  br label %15

15:                                               ; preds = %96, %2
  %16 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %17 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IMX214_TABLE_END, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %15
  %22 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %23 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IMX214_TABLE_WAIT_MS, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %29 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = mul nsw i32 %30, 1000
  %32 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %33 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = mul nsw i32 %34, 1000
  %36 = add nsw i32 %35, 500
  %37 = call i32 @usleep_range(i32 %31, i32 %36)
  br label %96

38:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %69, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MAX_CMD, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %72

43:                                               ; preds = %39
  %44 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %44, i64 %46
  %48 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %51 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %50, i64 0
  %52 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %53, %55
  %57 = icmp ne i64 %49, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %72

59:                                               ; preds = %43
  %60 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %60, i64 %62
  %64 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %14, i64 %67
  store i32 %65, i32* %68, align 4
  br label %69

69:                                               ; preds = %59
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %39

72:                                               ; preds = %58, %39
  %73 = load %struct.imx214*, %struct.imx214** %4, align 8
  %74 = getelementptr inbounds %struct.imx214, %struct.imx214* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %77 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @regmap_bulk_write(i32 %75, i64 %78, i32* %14, i32 %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %72
  %84 = load %struct.imx214*, %struct.imx214** %4, align 8
  %85 = getelementptr inbounds %struct.imx214, %struct.imx214* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* %9, align 4
  store i32 %89, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %100

90:                                               ; preds = %72
  %91 = load i32, i32* %8, align 4
  %92 = sub nsw i32 %91, 1
  %93 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %93, i64 %94
  store %struct.reg_8* %95, %struct.reg_8** %5, align 8
  br label %96

96:                                               ; preds = %90, %27
  %97 = load %struct.reg_8*, %struct.reg_8** %5, align 8
  %98 = getelementptr inbounds %struct.reg_8, %struct.reg_8* %97, i32 1
  store %struct.reg_8* %98, %struct.reg_8** %5, align 8
  br label %15

99:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %100

100:                                              ; preds = %99, %83
  %101 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @regmap_bulk_write(i32, i64, i32*, i32) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
