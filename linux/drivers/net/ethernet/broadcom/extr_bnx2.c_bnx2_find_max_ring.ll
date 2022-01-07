; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_find_max_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bnx2.c_bnx2_find_max_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BNX2_MAX_RX_DESC_CNT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @bnx2_find_max_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bnx2_find_max_ring(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  store i64 1, i64* %6, align 8
  br label %7

7:                                                ; preds = %11, %2
  %8 = load i64, i64* %3, align 8
  %9 = load i64, i64* @BNX2_MAX_RX_DESC_CNT, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %17

11:                                               ; preds = %7
  %12 = load i64, i64* @BNX2_MAX_RX_DESC_CNT, align 8
  %13 = load i64, i64* %3, align 8
  %14 = sub nsw i64 %13, %12
  store i64 %14, i64* %3, align 8
  %15 = load i64, i64* %6, align 8
  %16 = add nsw i64 %15, 1
  store i64 %16, i64* %6, align 8
  br label %7

17:                                               ; preds = %7
  %18 = load i64, i64* %4, align 8
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %24, %17
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = and i64 %20, %21
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i64, i64* %5, align 8
  %26 = ashr i64 %25, 1
  store i64 %26, i64* %5, align 8
  br label %19

27:                                               ; preds = %19
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = shl i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %34

34:                                               ; preds = %31, %27
  %35 = load i64, i64* %5, align 8
  ret i64 %35
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
