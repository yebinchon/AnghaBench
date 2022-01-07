; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_verify_all_eraseblocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/tests/extr_oobtest.c_verify_all_eraseblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [27 x i8] c"verifying all eraseblocks\0A\00", align 1
@ebcnt = common dso_local global i32 0, align 4
@bbt = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"verified up to eraseblock %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"verified %u eraseblocks\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @verify_all_eraseblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_all_eraseblocks() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %0
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @ebcnt, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = load i64*, i64** @bbt, align 8
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i64, i64* %10, i64 %12
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  br label %38

17:                                               ; preds = %9
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @verify_eraseblock(i32 %18)
  store i32 %19, i32* %2, align 4
  %20 = load i32, i32* %2, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  store i32 %23, i32* %1, align 4
  br label %44

24:                                               ; preds = %17
  %25 = load i32, i32* %3, align 4
  %26 = urem i32 %25, 256
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* %3, align 4
  %30 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %28, %24
  %32 = call i32 (...) @mtdtest_relax()
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %2, align 4
  store i32 %36, i32* %1, align 4
  br label %44

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37, %16
  %39 = load i32, i32* %3, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  %42 = load i32, i32* %3, align 4
  %43 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  store i32 0, i32* %1, align 4
  br label %44

44:                                               ; preds = %41, %35, %22
  %45 = load i32, i32* %1, align 4
  ret i32 %45
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @verify_eraseblock(i32) #1

declare dso_local i32 @mtdtest_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
