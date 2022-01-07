; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_erasetest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_pagetest.c_erasetest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [11 x i8] c"erasetest\0A\00", align 1
@ebcnt = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@mtd = common dso_local global %struct.TYPE_5__* null, align 8
@.str.1 = private unnamed_addr constant [18 x i8] c"erasing block %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"writing 1st page of block %d\0A\00", align 1
@rnd_state = common dso_local global i32 0, align 4
@writebuf = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"reading 1st page of block %d\0A\00", align 1
@twopages = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [44 x i8] c"verifying 1st page of block %d is all 0xff\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"verifying all 0xff failed at %d\0A\00", align 1
@errcnt = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [14 x i8] c"erasetest ok\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @erasetest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @erasetest() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i32 0, i32* %2, align 4
  store i32 1, i32* %5, align 4
  %7 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  store i64 0, i64* %6, align 8
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %29, %0
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @ebcnt, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %19

12:                                               ; preds = %8
  %13 = load i64*, i64** @bbt, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br label %19

19:                                               ; preds = %12, %8
  %20 = phi i1 [ false, %8 ], [ %18, %12 ]
  br i1 %20, label %21, label %32

21:                                               ; preds = %19
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %6, align 8
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %3, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %8

32:                                               ; preds = %19
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__* %35, i32 %36)
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i32, i32* %2, align 4
  store i32 %41, i32* %1, align 4
  br label %112

42:                                               ; preds = %32
  %43 = load i32, i32* %4, align 4
  %44 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @writebuf, align 4
  %46 = load i32, i32* @pgsize, align 4
  %47 = call i32 @prandom_bytes_state(i32* @rnd_state, i32 %45, i32 %46)
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* @pgsize, align 4
  %51 = load i32, i32* @writebuf, align 4
  %52 = call i32 @mtdtest_write(%struct.TYPE_5__* %48, i64 %49, i32 %50, i32 %51)
  store i32 %52, i32* %2, align 4
  %53 = load i32, i32* %2, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* %2, align 4
  store i32 %56, i32* %1, align 4
  br label %112

57:                                               ; preds = %42
  %58 = load i32, i32* %4, align 4
  %59 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__* %60, i32 %61)
  store i32 %62, i32* %2, align 4
  %63 = load i32, i32* %2, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %57
  %66 = load i32, i32* %2, align 4
  store i32 %66, i32* %1, align 4
  br label %112

67:                                               ; preds = %57
  %68 = load i32, i32* %4, align 4
  %69 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** @mtd, align 8
  %71 = load i64, i64* %6, align 8
  %72 = load i32, i32* @pgsize, align 4
  %73 = load i32*, i32** @twopages, align 8
  %74 = call i32 @mtdtest_read(%struct.TYPE_5__* %70, i64 %71, i32 %72, i32* %73)
  store i32 %74, i32* %2, align 4
  %75 = load i32, i32* %2, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = load i32, i32* %2, align 4
  store i32 %78, i32* %1, align 4
  br label %112

79:                                               ; preds = %67
  %80 = load i32, i32* %4, align 4
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %99, %79
  %83 = load i32, i32* %3, align 4
  %84 = load i32, i32* @pgsize, align 4
  %85 = icmp slt i32 %83, %84
  br i1 %85, label %86, label %102

86:                                               ; preds = %82
  %87 = load i32*, i32** @twopages, align 8
  %88 = load i32, i32* %3, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 255
  br i1 %92, label %93, label %98

93:                                               ; preds = %86
  %94 = load i32, i32* %3, align 4
  %95 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @errcnt, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* @errcnt, align 4
  store i32 0, i32* %5, align 4
  br label %102

98:                                               ; preds = %86
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %3, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %3, align 4
  br label %82

102:                                              ; preds = %93, %82
  %103 = load i32, i32* %5, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %102
  %106 = load i32, i32* %2, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %105
  %109 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %105, %102
  %111 = load i32, i32* %2, align 4
  store i32 %111, i32* %1, align 4
  br label %112

112:                                              ; preds = %110, %77, %65, %55, %40
  %113 = load i32, i32* %1, align 4
  ret i32 %113
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @mtdtest_erase_eraseblock(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @prandom_bytes_state(i32*, i32, i32) #1

declare dso_local i32 @mtdtest_write(%struct.TYPE_5__*, i64, i32, i32) #1

declare dso_local i32 @mtdtest_read(%struct.TYPE_5__*, i64, i32, i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
