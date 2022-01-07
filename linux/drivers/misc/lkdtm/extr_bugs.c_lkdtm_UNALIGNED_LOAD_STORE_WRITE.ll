; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_UNALIGNED_LOAD_STORE_WRITE.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lkdtm/extr_bugs.c_lkdtm_UNALIGNED_LOAD_STORE_WRITE.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lkdtm_UNALIGNED_LOAD_STORE_WRITE.data = internal global [5 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lkdtm_UNALIGNED_LOAD_STORE_WRITE() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  store i32 305419896, i32* %2, align 4
  store i32* getelementptr inbounds ([5 x i32], [5 x i32]* @lkdtm_UNALIGNED_LOAD_STORE_WRITE.data, i64 0, i64 1), i32** %1, align 8
  %3 = load i32*, i32** %1, align 8
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  store i32 -2023406815, i32* %2, align 4
  br label %7

7:                                                ; preds = %6, %0
  %8 = load i32, i32* %2, align 4
  %9 = load i32*, i32** %1, align 8
  store i32 %8, i32* %9, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
