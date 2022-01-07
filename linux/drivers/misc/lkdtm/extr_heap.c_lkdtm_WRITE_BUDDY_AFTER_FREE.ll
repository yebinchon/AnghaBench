; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_WRITE_BUDDY_AFTER_FREE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_heap.c_lkdtm_WRITE_BUDDY_AFTER_FREE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Unable to allocate free page\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"Writing to the buddy page before free\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"Attempting bad write to the buddy page after free\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_WRITE_BUDDY_AFTER_FREE() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @GFP_KERNEL, align 4
  %3 = call i64 @__get_free_page(i32 %2)
  store i64 %3, i64* %1, align 8
  %4 = load i64, i64* %1, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %8, label %6

6:                                                ; preds = %0
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %27

8:                                                ; preds = %0
  %9 = call i32 @pr_info(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %10 = load i64, i64* %1, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i32 @memset(i8* %11, i32 3, i32 %12)
  %14 = load i64, i64* %1, align 8
  %15 = call i32 @free_page(i64 %14)
  %16 = call i32 (...) @schedule()
  %17 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  %18 = load i64, i64* %1, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = call i32 @memset(i8* %19, i32 120, i32 %20)
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64 @__get_free_page(i32 %22)
  store i64 %23, i64* %1, align 8
  %24 = load i64, i64* %1, align 8
  %25 = call i32 @free_page(i64 %24)
  %26 = call i32 (...) @schedule()
  br label %27

27:                                               ; preds = %8, %6
  ret void
}

declare dso_local i64 @__get_free_page(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
