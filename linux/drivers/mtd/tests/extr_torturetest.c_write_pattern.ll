; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_write_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_torturetest.c_write_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@pgsize = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"error %d while writing EB %d, written %zd bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"written only %zd bytes of %zd, but no error reported\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @write_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_pattern(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  store i32 %14, i32* %8, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  store i64 %18, i64* %9, align 8
  %19 = load i32, i32* @pgcnt, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %2
  %22 = load i32, i32* %4, align 4
  %23 = add nsw i32 %22, 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  %28 = load i32, i32* @pgcnt, align 4
  %29 = load i32, i32* @pgsize, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sub nsw i32 %27, %30
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @pgcnt, align 4
  %33 = load i32, i32* @pgsize, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %9, align 8
  br label %36

36:                                               ; preds = %21, %2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %38 = load i32, i32* %8, align 4
  %39 = load i64, i64* %9, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = call i32 @mtd_write(%struct.TYPE_3__* %37, i32 %38, i64 %39, i64* %7, i8* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %36
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load i64, i64* %7, align 8
  %48 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %45, i32 %46, i64 %47)
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %61

50:                                               ; preds = %36
  %51 = load i64, i64* %7, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %50
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @pr_info(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i64 %55, i64 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  br label %61

60:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %44
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mtd_write(%struct.TYPE_3__*, i32, i64, i64*, i8*) #1

declare dso_local i32 @pr_err(i8*, i32, i32, i64) #1

declare dso_local i32 @pr_info(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
