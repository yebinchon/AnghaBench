; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_get_module_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman.c_get_module_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMAN_INTR_TYPE_ERR = common dso_local global i32 0, align 4
@FMAN_EV_ERR_MAC0 = common dso_local global i32 0, align 4
@FMAN_EV_MAC0 = common dso_local global i32 0, align 4
@FMAN_EV_CNT = common dso_local global i32 0, align 4
@FMAN_EV_FMAN_CTRL_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @get_module_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_module_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %35 [
    i32 128, label %9
    i32 129, label %22
    i32 130, label %33
  ]

9:                                                ; preds = %3
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @FMAN_INTR_TYPE_ERR, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = load i32, i32* @FMAN_EV_ERR_MAC0, align 4
  %15 = load i32, i32* %5, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  br label %21

17:                                               ; preds = %9
  %18 = load i32, i32* @FMAN_EV_MAC0, align 4
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %17, %13
  br label %37

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @FMAN_INTR_TYPE_ERR, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = load i32, i32* @FMAN_EV_CNT, align 4
  store i32 %27, i32* %7, align 4
  br label %32

28:                                               ; preds = %22
  %29 = load i32, i32* @FMAN_EV_FMAN_CTRL_0, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %26
  br label %37

33:                                               ; preds = %3
  %34 = load i32, i32* @FMAN_EV_CNT, align 4
  store i32 %34, i32* %7, align 4
  br label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @FMAN_EV_CNT, align 4
  store i32 %36, i32* %7, align 4
  br label %37

37:                                               ; preds = %35, %33, %32, %21
  %38 = load i32, i32* %7, align 4
  ret i32 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
