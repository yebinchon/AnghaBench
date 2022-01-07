; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_phy_modify_rx_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar5008_phy.c_ar5008_hw_phy_modify_rx_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32)* @ar5008_hw_phy_modify_rx_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5008_hw_phy_modify_rx_buffer(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @ath9k_hw_reverse_bits(i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sdiv i32 %21, 8
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = srem i32 %24, 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %16, align 4
  br label %27

27:                                               ; preds = %40, %5
  %28 = load i32, i32* %16, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %84

30:                                               ; preds = %27
  %31 = load i32, i32* %15, align 4
  %32 = load i32, i32* %16, align 4
  %33 = add nsw i32 %31, %32
  %34 = icmp sgt i32 %33, 8
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %40

36:                                               ; preds = %30
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %16, align 4
  %39 = add nsw i32 %37, %38
  br label %40

40:                                               ; preds = %36, %35
  %41 = phi i32 [ 8, %35 ], [ %39, %36 ]
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = shl i32 1, %42
  %44 = sub nsw i32 %43, 1
  %45 = load i32, i32* %15, align 4
  %46 = shl i32 1, %45
  %47 = sub nsw i32 %46, 1
  %48 = xor i32 %44, %47
  %49 = load i32, i32* %10, align 4
  %50 = mul nsw i32 %49, 8
  %51 = shl i32 %48, %50
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %12, align 4
  %53 = xor i32 %52, -1
  %54 = load i32*, i32** %6, align 8
  %55 = load i32, i32* %13, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %53
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %15, align 4
  %62 = shl i32 %60, %61
  %63 = load i32, i32* %10, align 4
  %64 = mul nsw i32 %63, 8
  %65 = shl i32 %62, %64
  %66 = load i32, i32* %12, align 4
  %67 = and i32 %65, %66
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* %13, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %68, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %67
  store i32 %73, i32* %71, align 4
  %74 = load i32, i32* %15, align 4
  %75 = sub nsw i32 8, %74
  %76 = load i32, i32* %16, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %16, align 4
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %15, align 4
  %80 = sub nsw i32 8, %79
  %81 = ashr i32 %78, %80
  store i32 %81, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %82 = load i32, i32* %13, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %13, align 4
  br label %27

84:                                               ; preds = %27
  ret void
}

declare dso_local i32 @ath9k_hw_reverse_bits(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
