; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_refcount.c_lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"attempting bad refcount_sub_and_test() below zero\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"Weird: refcount_sub_and_test() reported zero\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_REFCOUNT_SUB_AND_TEST_NEGATIVE() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @REFCOUNT_INIT(i32 3)
  store i32 %2, i32* %1, align 4
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %4 = call i64 @refcount_sub_and_test(i32 5, i32* %1)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %0
  %7 = call i32 @pr_warn(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %0
  %9 = call i32 @check_negative(i32* %1, i32 3)
  ret void
}

declare dso_local i32 @REFCOUNT_INIT(i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i64 @refcount_sub_and_test(i32, i32*) #1

declare dso_local i32 @pr_warn(i8*) #1

declare dso_local i32 @check_negative(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
