; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_report_corrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_report_corrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@mtd = common dso_local global %struct.TYPE_2__* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"verify fails on %d pages, %d bytes/%d bits\0A\00", align 1
@.str.1 = private unnamed_addr constant [99 x i8] c"The following is a list of all differences between what was read from flash and what was expected\0A\00", align 1
@.str.2 = private unnamed_addr constant [91 x i8] c"-----------------------------------------------------------------------------------------\0A\00", align 1
@.str.3 = private unnamed_addr constant [71 x i8] c"Page %zd has %d bytes/%d bits failing verify, starting at offset 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @report_corrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @report_corrupt(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i32, i32* @pgcnt, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @pgcnt, align 4
  %20 = load i32, i32* @pgsize, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  store i64 %22, i64* %12, align 8
  br label %23

23:                                               ; preds = %18, %2
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %40, %23
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %12, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load i8*, i8** %4, align 8
  %31 = load i8*, i8** %3, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @pgsize, align 4
  %34 = call i32 @countdiffs(i8* %30, i8* %31, i32 %32, i32 %33, i32* %6, i32* %7)
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %36, %29
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* @pgsize, align 4
  %42 = load i32, i32* %5, align 4
  %43 = add nsw i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %24

44:                                               ; preds = %24
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %96, %44
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = load i64, i64* %12, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %100

55:                                               ; preds = %50
  %56 = call i32 (...) @cond_resched()
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  %57 = load i8*, i8** %4, align 8
  %58 = load i8*, i8** %3, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @pgsize, align 4
  %61 = call i32 @countdiffs(i8* %57, i8* %58, i32 %59, i32 %60, i32* %6, i32* %7)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %96

65:                                               ; preds = %55
  %66 = call i32 @printk(i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.2, i64 0, i64 0))
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %12, align 8
  %71 = sub i64 %69, %70
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = add i64 %71, %73
  %75 = load i32, i32* @pgsize, align 4
  %76 = sext i32 %75 to i64
  %77 = udiv i64 %74, %76
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %9, align 4
  %81 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.3, i64 0, i64 0), i64 %77, i32 %78, i32 %79, i32 %80)
  %82 = load i32, i32* %9, align 4
  %83 = and i32 %82, -8
  store i32 %83, i32* %10, align 4
  %84 = load i32, i32* %9, align 4
  %85 = load i32, i32* %6, align 4
  %86 = add nsw i32 %84, %85
  %87 = or i32 %86, 7
  %88 = add nsw i32 %87, 1
  %89 = load i32, i32* %10, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %11, align 4
  %91 = load i8*, i8** %3, align 8
  %92 = load i8*, i8** %4, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @print_bufs(i8* %91, i8* %92, i32 %93, i32 %94)
  br label %96

96:                                               ; preds = %65, %64
  %97 = load i32, i32* @pgsize, align 4
  %98 = load i32, i32* %5, align 4
  %99 = add nsw i32 %98, %97
  store i32 %99, i32* %5, align 4
  br label %50

100:                                              ; preds = %50
  ret void
}

declare dso_local i32 @countdiffs(i8*, i8*, i32, i32, i32*, i32*) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @print_bufs(i8*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
