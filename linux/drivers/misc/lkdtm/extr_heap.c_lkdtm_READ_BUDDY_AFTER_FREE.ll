; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_READ_BUDDY_AFTER_FREE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_READ_BUDDY_AFTER_FREE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to allocate free page\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate val memory.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Value in memory before free: %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Attempting to read from freed memory\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Memory correctly poisoned (%x)\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Buddy page was not poisoned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_READ_BUDDY_AFTER_FREE() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i64 @__get_free_page(i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %0
  %10 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %50

11:                                               ; preds = %0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kmalloc(i32 1024, i32 %12)
  store i32* %13, i32** %3, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %11
  %17 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @free_page(i64 %18)
  br label %50

20:                                               ; preds = %11
  %21 = load i64, i64* %1, align 8
  %22 = inttoptr i64 %21 to i32*
  store i32* %22, i32** %4, align 8
  %23 = load i32*, i32** %3, align 8
  store i32 305419896, i32* %23, align 4
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  %32 = load i64, i64* %1, align 8
  %33 = call i32 @free_page(i64 %32)
  %34 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %35 = load i32*, i32** %4, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %2, align 4
  %38 = load i32, i32* %2, align 4
  %39 = load i32*, i32** %3, align 8
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %38, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %20
  %43 = load i32, i32* %2, align 4
  %44 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %43)
  %45 = call i32 (...) @BUG()
  br label %46

46:                                               ; preds = %42, %20
  %47 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @kfree(i32* %48)
  br label %50

50:                                               ; preds = %46, %16, %9
  ret void
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
