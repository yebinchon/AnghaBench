; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_read_eraseblock_by_2pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_read_eraseblock_by_2pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@pgsize = common dso_local global i32 0, align 4
@pgcnt = common dso_local global i32 0, align 4
@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@iobuf = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_eraseblock_by_2pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eraseblock_by_2pages(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  %10 = load i32, i32* @pgsize, align 4
  %11 = mul nsw i32 %10, 2
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @pgcnt, align 4
  %14 = sdiv i32 %13, 2
  store i32 %14, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = mul i64 %16, %19
  store i64 %20, i64* %8, align 8
  %21 = load i8*, i8** @iobuf, align 8
  store i8* %21, i8** %9, align 8
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %44, %1
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %47

26:                                               ; preds = %22
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %4, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @mtdtest_read(%struct.TYPE_3__* %27, i64 %28, i32 %30, i8* %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %26
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %8, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %8, align 8
  %41 = load i64, i64* %4, align 8
  %42 = load i8*, i8** %9, align 8
  %43 = getelementptr i8, i8* %42, i64 %41
  store i8* %43, i8** %9, align 8
  br label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %22

47:                                               ; preds = %22
  %48 = load i32, i32* @pgcnt, align 4
  %49 = srem i32 %48, 2
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %47
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @pgsize, align 4
  %55 = load i8*, i8** %9, align 8
  %56 = call i32 @mtdtest_read(%struct.TYPE_3__* %52, i64 %53, i32 %54, i8* %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %51, %47
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %57, %35
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @mtdtest_read(%struct.TYPE_3__*, i64, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
