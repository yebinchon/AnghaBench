; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_get_txgain_dac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_get_txgain_dac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @b43legacy_get_txgain_dac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43legacy_get_txgain_dac(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 63
  %6 = zext i1 %5 to i32
  %7 = call i32 @B43legacy_WARN_ON(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = icmp sge i32 %8, 54
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = sub nsw i32 %11, 53
  store i32 %12, i32* %3, align 4
  br label %57

13:                                               ; preds = %1
  %14 = load i32, i32* %2, align 4
  %15 = icmp sge i32 %14, 49
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i32, i32* %2, align 4
  %18 = sub nsw i32 %17, 42
  store i32 %18, i32* %3, align 4
  br label %56

19:                                               ; preds = %13
  %20 = load i32, i32* %2, align 4
  %21 = icmp sge i32 %20, 44
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load i32, i32* %2, align 4
  %24 = sub nsw i32 %23, 37
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %19
  %26 = load i32, i32* %2, align 4
  %27 = icmp sge i32 %26, 32
  br i1 %27, label %28, label %31

28:                                               ; preds = %25
  %29 = load i32, i32* %2, align 4
  %30 = sub nsw i32 %29, 32
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %25
  %32 = load i32, i32* %2, align 4
  %33 = icmp sge i32 %32, 25
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i32, i32* %2, align 4
  %36 = sub nsw i32 %35, 20
  store i32 %36, i32* %3, align 4
  br label %53

37:                                               ; preds = %31
  %38 = load i32, i32* %2, align 4
  %39 = icmp sge i32 %38, 20
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* %2, align 4
  %42 = sub nsw i32 %41, 13
  store i32 %42, i32* %3, align 4
  br label %52

43:                                               ; preds = %37
  %44 = load i32, i32* %2, align 4
  %45 = icmp sge i32 %44, 12
  br i1 %45, label %46, label %49

46:                                               ; preds = %43
  %47 = load i32, i32* %2, align 4
  %48 = sub nsw i32 %47, 8
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %43
  %50 = load i32, i32* %2, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %49, %46
  br label %52

52:                                               ; preds = %51, %40
  br label %53

53:                                               ; preds = %52, %34
  br label %54

54:                                               ; preds = %53, %28
  br label %55

55:                                               ; preds = %54, %22
  br label %56

56:                                               ; preds = %55, %16
  br label %57

57:                                               ; preds = %56, %10
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
