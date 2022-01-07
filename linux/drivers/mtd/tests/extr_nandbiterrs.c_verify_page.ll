; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_verify_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_nandbiterrs.c_verify_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"verify_page\0A\00", align 1
@mtd = common dso_local global %struct.TYPE_2__* null, align 8
@rbuffer = common dso_local global i64* null, align 8
@seed = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"Error: page offset %u, expected %02x, got %02x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @verify_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_page(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %10

10:                                               ; preds = %8, %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %45, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mtd, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %48

17:                                               ; preds = %11
  %18 = load i64*, i64** @rbuffer, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = load i64, i64* @seed, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i64 @hash(i64 %26)
  %28 = icmp ne i64 %22, %27
  br i1 %28, label %29, label %44

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = zext i32 %31 to i64
  %33 = load i64, i64* @seed, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i64 @hash(i64 %34)
  %36 = load i64*, i64** @rbuffer, align 8
  %37 = load i32, i32* %4, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i64, i64* %36, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %30, i64 %35, i64 %40)
  %42 = load i32, i32* %5, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %29, %17
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %4, align 4
  %47 = add i32 %46, 1
  store i32 %47, i32* %4, align 4
  br label %11

48:                                               ; preds = %11
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load i32, i32* @EIO, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %55

54:                                               ; preds = %48
  store i32 0, i32* %2, align 4
  br label %55

55:                                               ; preds = %54, %51
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @hash(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
