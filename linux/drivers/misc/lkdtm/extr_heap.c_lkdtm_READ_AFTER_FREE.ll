; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_READ_AFTER_FREE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_READ_AFTER_FREE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Unable to allocate base memory.\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate val memory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Value in memory before free: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Attempting bad read from freed memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Memory correctly poisoned (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Memory was not poisoned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_READ_AFTER_FREE() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 1024, i64* %4, align 8
  %6 = load i64, i64* %4, align 8
  %7 = udiv i64 %6, 4
  %8 = udiv i64 %7, 2
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i64 %9, i32 %10)
  store i32* %11, i32** %1, align 8
  %12 = load i32*, i32** %1, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %16, label %14

14:                                               ; preds = %0
  %15 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %57

16:                                               ; preds = %0
  %17 = load i64, i64* %4, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i32* @kmalloc(i64 %17, i32 %18)
  store i32* %19, i32** %2, align 8
  %20 = load i32*, i32** %2, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %16
  %23 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32*, i32** %1, align 8
  %25 = call i32 @kfree(i32* %24)
  br label %57

26:                                               ; preds = %16
  %27 = load i32*, i32** %2, align 8
  store i32 305419896, i32* %27, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %28, align 4
  %30 = load i32*, i32** %1, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  store i32 %29, i32* %32, align 4
  %33 = load i32*, i32** %1, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i32, i32* %33, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32*, i32** %1, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %41 = load i32*, i32** %1, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %3, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32*, i32** %2, align 8
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %45, %47
  br i1 %48, label %49, label %53

49:                                               ; preds = %26
  %50 = load i32, i32* %3, align 4
  %51 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %50)
  %52 = call i32 (...) @BUG()
  br label %53

53:                                               ; preds = %49, %26
  %54 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %55 = load i32*, i32** %2, align 8
  %56 = call i32 @kfree(i32* %55)
  br label %57

57:                                               ; preds = %53, %22, %14
  ret void
}

declare dso_local i32* @kmalloc(i64, i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
