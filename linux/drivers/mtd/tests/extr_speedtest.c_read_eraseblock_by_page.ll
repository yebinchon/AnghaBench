; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_read_eraseblock_by_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_speedtest.c_read_eraseblock_by_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@mtd = common dso_local global %struct.TYPE_3__* null, align 8
@iobuf = common dso_local global i8* null, align 8
@pgcnt = common dso_local global i32 0, align 4
@pgsize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @read_eraseblock_by_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_eraseblock_by_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %4, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = mul nsw i32 %7, %10
  store i32 %11, i32* %5, align 4
  %12 = load i8*, i8** @iobuf, align 8
  store i8* %12, i8** %6, align 8
  store i32 0, i32* %3, align 4
  br label %13

13:                                               ; preds = %35, %1
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @pgcnt, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %13
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mtd, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i64, i64* @pgsize, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @mtdtest_read(%struct.TYPE_3__* %18, i32 %19, i64 %20, i8* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %38

26:                                               ; preds = %17
  %27 = load i64, i64* @pgsize, align 8
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %27
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  %32 = load i64, i64* @pgsize, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr i8, i8* %33, i64 %32
  store i8* %34, i8** %6, align 8
  br label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %13

38:                                               ; preds = %25, %13
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @mtdtest_read(%struct.TYPE_3__*, i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
