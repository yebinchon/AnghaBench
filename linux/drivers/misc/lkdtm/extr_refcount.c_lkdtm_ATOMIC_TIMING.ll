; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_ATOMIC_TIMING.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_ATOMIC_TIMING.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"atomic timing: out of sync up/down cycle: %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"atomic timing: done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_ATOMIC_TIMING() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @ATOMIC_INIT(i32 1)
  store i32 %3, i32* %2, align 4
  store i32 0, i32* %1, align 4
  br label %4

4:                                                ; preds = %11, %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @INT_MAX, align 4
  %7 = sub nsw i32 %6, 1
  %8 = icmp ult i32 %5, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %4
  %10 = call i32 @atomic_inc(i32* %2)
  br label %11

11:                                               ; preds = %9
  %12 = load i32, i32* %1, align 4
  %13 = add i32 %12, 1
  store i32 %13, i32* %1, align 4
  br label %4

14:                                               ; preds = %4
  %15 = load i32, i32* @INT_MAX, align 4
  store i32 %15, i32* %1, align 4
  br label %16

16:                                               ; preds = %24, %14
  %17 = load i32, i32* %1, align 4
  %18 = icmp ugt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %16
  %20 = call i64 @atomic_dec_and_test(i32* %2)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  br label %27

23:                                               ; preds = %19
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %1, align 4
  %26 = add i32 %25, -1
  store i32 %26, i32* %1, align 4
  br label %16

27:                                               ; preds = %22, %16
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 1
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %1, align 4
  %32 = sub i32 %31, 1
  %33 = call i32 @pr_err(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %36

34:                                               ; preds = %27
  %35 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @ATOMIC_INIT(i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
