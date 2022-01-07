; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_ADD_ZERO.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_ADD_ZERO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"attempting safe refcount_add_not_zero() from zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Good: zero detected\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Correctly stayed at zero\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Fail: refcount went past zero\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Fail: Zero not detected!?\0A\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"attempting bad refcount_add() from zero\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_REFCOUNT_ADD_ZERO() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @REFCOUNT_INIT(i32 0)
  store i32 %2, i32* %1, align 4
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @refcount_add_not_zero(i32 3, i32* %1)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %15, label %6

6:                                                ; preds = %0
  %7 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %8 = call i64 @refcount_read(i32* %1)
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %6
  %11 = call i32 @pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %14

12:                                               ; preds = %6
  %13 = call i32 @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  br label %14

14:                                               ; preds = %12, %10
  br label %17

15:                                               ; preds = %0
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  br label %17

17:                                               ; preds = %15, %14
  %18 = call i32 @pr_info(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %19 = call i32 @refcount_add(i32 3, i32* %1)
  %20 = call i32 @check_from_zero(i32* %1)
  ret void
}

declare dso_local i32 @REFCOUNT_INIT(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @refcount_add_not_zero(i32, i32*) #1

declare dso_local i64 @refcount_read(i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @refcount_add(i32, i32*) #1

declare dso_local i32 @check_from_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
