; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_qdiv_roundup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_qdiv_roundup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @wlc_lcnphy_qdiv_roundup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlc_lcnphy_qdiv_roundup(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* %5, align 4
  %13 = sdiv i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* %5, align 4
  %16 = srem i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = ashr i32 %19, 1
  %21 = load i32, i32* %10, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %45, %3
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %6, align 4
  %26 = icmp ne i32 %24, 0
  br i1 %26, label %27, label %46

27:                                               ; preds = %23
  %28 = load i32, i32* %7, align 4
  %29 = shl i32 %28, 1
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sge i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = sub nsw i32 %36, %37
  %39 = shl i32 %38, 1
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %39, %40
  store i32 %41, i32* %8, align 4
  br label %45

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %42, %33
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %50, %46
  %54 = load i32, i32* %7, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
