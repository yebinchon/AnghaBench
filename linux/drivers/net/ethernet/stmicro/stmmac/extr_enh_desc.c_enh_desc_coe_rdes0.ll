; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_coe_rdes0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_enh_desc.c_enh_desc_coe_rdes0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@good_frame = common dso_local global i32 0, align 4
@llc_snap = common dso_local global i32 0, align 4
@csum_none = common dso_local global i32 0, align 4
@discard_frame = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @enh_desc_coe_rdes0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enh_desc_coe_rdes0(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* @good_frame, align 4
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 %10, 2
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 1
  %14 = or i32 %11, %13
  %15 = load i32, i32* %6, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %16, 7
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @llc_snap, align 4
  store i32 %21, i32* %7, align 4
  br label %58

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 4
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = load i32, i32* @good_frame, align 4
  store i32 %26, i32* %7, align 4
  br label %57

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = icmp eq i32 %28, 5
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i32, i32* @csum_none, align 4
  store i32 %31, i32* %7, align 4
  br label %56

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 6
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* @csum_none, align 4
  store i32 %36, i32* %7, align 4
  br label %55

37:                                               ; preds = %32
  %38 = load i32, i32* %8, align 4
  %39 = icmp eq i32 %38, 7
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i32, i32* @csum_none, align 4
  store i32 %41, i32* %7, align 4
  br label %54

42:                                               ; preds = %37
  %43 = load i32, i32* %8, align 4
  %44 = icmp eq i32 %43, 1
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32, i32* @discard_frame, align 4
  store i32 %46, i32* %7, align 4
  br label %53

47:                                               ; preds = %42
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 3
  br i1 %49, label %50, label %52

50:                                               ; preds = %47
  %51 = load i32, i32* @discard_frame, align 4
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %50, %47
  br label %53

53:                                               ; preds = %52, %45
  br label %54

54:                                               ; preds = %53, %40
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %30
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %20
  %59 = load i32, i32* %7, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
