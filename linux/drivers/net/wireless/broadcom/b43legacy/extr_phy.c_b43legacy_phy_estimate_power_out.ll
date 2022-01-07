; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_estimate_power_out.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_phy.c_b43legacy_phy_estimate_power_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i64, i32, i64*, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.b43legacy_wldev*, i64)* @b43legacy_phy_estimate_power_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @b43legacy_phy_estimate_power_out(%struct.b43legacy_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43legacy_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %5, align 8
  store i64 0, i64* %6, align 8
  %10 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %11 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %7, align 8
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* %7, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %7, align 8
  %16 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %17 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* %7, align 8
  %20 = sub i64 %19, %18
  store i64 %20, i64* %7, align 8
  %21 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %22 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %33 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %2, %2
  %25 = load i64, i64* %7, align 8
  %26 = call i64 @clamp_val(i64 %25, i32 0, i32 63)
  store i64 %26, i64* %7, align 8
  %27 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %28 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %27, i32 0, i32 2
  %29 = load i64*, i64** %28, align 8
  %30 = load i64, i64* %7, align 8
  %31 = getelementptr inbounds i64, i64* %29, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  br label %35

33:                                               ; preds = %2
  %34 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %35

35:                                               ; preds = %33, %24
  %36 = load i64, i64* %6, align 8
  ret i64 %36
}

declare dso_local i64 @clamp_val(i64, i32, i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
