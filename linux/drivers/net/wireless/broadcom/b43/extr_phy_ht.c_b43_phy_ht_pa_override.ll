; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_pa_override.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_ht.c_b43_phy_ht_pa_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_ht* }
%struct.b43_phy_ht = type { i32* }

@b43_phy_ht_pa_override.regs = internal constant [3 x i32] [i32 130, i32 129, i32 128], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_pa_override to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_pa_override(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_phy_ht*, align 8
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %9, align 8
  store %struct.b43_phy_ht* %10, %struct.b43_phy_ht** %5, align 8
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %35

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %31, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %34

17:                                               ; preds = %14
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %19 = load i32, i32* %6, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_pa_override.regs, i64 0, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %24 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @b43_phy_write(%struct.b43_wldev* %18, i32 %22, i32 %29)
  br label %31

31:                                               ; preds = %17
  %32 = load i32, i32* %6, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %14

34:                                               ; preds = %14
  br label %70

35:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %36

36:                                               ; preds = %52, %35
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 3
  br i1 %38, label %39, label %55

39:                                               ; preds = %36
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_pa_override.regs, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @b43_phy_read(%struct.b43_wldev* %40, i32 %44)
  %46 = load %struct.b43_phy_ht*, %struct.b43_phy_ht** %5, align 8
  %47 = getelementptr inbounds %struct.b43_phy_ht, %struct.b43_phy_ht* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %39
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %36

55:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %66, %55
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 3
  br i1 %58, label %59, label %69

59:                                               ; preds = %56
  %60 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [3 x i32], [3 x i32]* @b43_phy_ht_pa_override.regs, i64 0, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @b43_phy_write(%struct.b43_wldev* %60, i32 %64, i32 1024)
  br label %66

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %56

69:                                               ; preds = %56
  br label %70

70:                                               ; preds = %69, %34
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
