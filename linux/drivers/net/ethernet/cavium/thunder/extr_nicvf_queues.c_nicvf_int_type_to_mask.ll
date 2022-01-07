; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_int_type_to_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_queues.c_nicvf_int_type_to_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NICVF_INTR_CQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_SQ_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_RBDR_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_PKT_DROP_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_TCP_TIMER_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_MBOX_SHIFT = common dso_local global i64 0, align 8
@NICVF_INTR_QS_ERR_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32)* @nicvf_int_type_to_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nicvf_int_type_to_mask(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  switch i32 %6, label %37 [
    i32 134, label %7
    i32 129, label %13
    i32 130, label %19
    i32 132, label %25
    i32 128, label %28
    i32 133, label %31
    i32 131, label %34
  ]

7:                                                ; preds = %2
  %8 = load i32, i32* %4, align 4
  %9 = zext i32 %8 to i64
  %10 = shl i64 1, %9
  %11 = load i64, i64* @NICVF_INTR_CQ_SHIFT, align 8
  %12 = shl i64 %10, %11
  store i64 %12, i64* %5, align 8
  br label %38

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = zext i32 %14 to i64
  %16 = shl i64 1, %15
  %17 = load i64, i64* @NICVF_INTR_SQ_SHIFT, align 8
  %18 = shl i64 %16, %17
  store i64 %18, i64* %5, align 8
  br label %38

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = shl i64 1, %21
  %23 = load i64, i64* @NICVF_INTR_RBDR_SHIFT, align 8
  %24 = shl i64 %22, %23
  store i64 %24, i64* %5, align 8
  br label %38

25:                                               ; preds = %2
  %26 = load i64, i64* @NICVF_INTR_PKT_DROP_SHIFT, align 8
  %27 = shl i64 1, %26
  store i64 %27, i64* %5, align 8
  br label %38

28:                                               ; preds = %2
  %29 = load i64, i64* @NICVF_INTR_TCP_TIMER_SHIFT, align 8
  %30 = shl i64 1, %29
  store i64 %30, i64* %5, align 8
  br label %38

31:                                               ; preds = %2
  %32 = load i64, i64* @NICVF_INTR_MBOX_SHIFT, align 8
  %33 = shl i64 1, %32
  store i64 %33, i64* %5, align 8
  br label %38

34:                                               ; preds = %2
  %35 = load i64, i64* @NICVF_INTR_QS_ERR_SHIFT, align 8
  %36 = shl i64 1, %35
  store i64 %36, i64* %5, align 8
  br label %38

37:                                               ; preds = %2
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %37, %34, %31, %28, %25, %19, %13, %7
  %39 = load i64, i64* %5, align 8
  ret i64 %39
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
