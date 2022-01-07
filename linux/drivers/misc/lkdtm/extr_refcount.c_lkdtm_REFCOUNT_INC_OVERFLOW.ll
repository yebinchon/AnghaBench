; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_INC_OVERFLOW.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_INC_OVERFLOW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFCOUNT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"attempting good refcount_inc() without overflow\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"attempting bad refcount_inc() overflow\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_REFCOUNT_INC_OVERFLOW() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @REFCOUNT_MAX, align 8
  %3 = sub nsw i64 %2, 1
  %4 = call i32 @REFCOUNT_INIT(i64 %3)
  store i32 %4, i32* %1, align 4
  %5 = call i32 @pr_info(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @refcount_dec(i32* %1)
  %7 = call i32 @refcount_inc(i32* %1)
  %8 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %9 = call i32 @refcount_inc(i32* %1)
  %10 = call i32 @refcount_inc(i32* %1)
  %11 = call i32 @overflow_check(i32* %1)
  ret void
}

declare dso_local i32 @REFCOUNT_INIT(i64) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @refcount_dec(i32*) #1

declare dso_local i32 @refcount_inc(i32*) #1

declare dso_local i32 @overflow_check(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
