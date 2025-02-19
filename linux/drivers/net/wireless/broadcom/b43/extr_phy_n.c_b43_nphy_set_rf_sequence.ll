; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_set_rf_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_set_rf_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32, i32*, i32*, i32)* @b43_nphy_set_rf_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_set_rf_sequence(%struct.b43_wldev* %0, i32 %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.b43_phy_n*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.b43_phy_n*, %struct.b43_phy_n** %18, align 8
  store %struct.b43_phy_n* %19, %struct.b43_phy_n** %11, align 8
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %21 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %23, 3
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 31, i32 15
  store i32 %26, i32* %13, align 4
  %27 = load i32, i32* %7, align 4
  %28 = shl i32 %27, 4
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = add nsw i32 %29, 128
  store i32 %30, i32* %15, align 4
  %31 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %5
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %37 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %5
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %40 = load i32, i32* %14, align 4
  %41 = call i32 @B43_NTAB8(i32 7, i32 %40)
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %39, i32 %41, i32 %42, i32* %43)
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %46 = load i32, i32* %15, align 4
  %47 = call i32 @B43_NTAB8(i32 7, i32 %46)
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %9, align 8
  %50 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %45, i32 %47, i32 %48, i32* %49)
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %69, %38
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 16
  br i1 %54, label %55, label %72

55:                                               ; preds = %52
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %57 = load i32, i32* %14, align 4
  %58 = load i32, i32* %12, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 @B43_NTAB8(i32 7, i32 %59)
  %61 = load i32, i32* %13, align 4
  %62 = call i32 @b43_ntab_write(%struct.b43_wldev* %56, i32 %60, i32 %61)
  %63 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %12, align 4
  %66 = add nsw i32 %64, %65
  %67 = call i32 @B43_NTAB8(i32 7, i32 %66)
  %68 = call i32 @b43_ntab_write(%struct.b43_wldev* %63, i32 %67, i32 1)
  br label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %52

72:                                               ; preds = %52
  %73 = load %struct.b43_phy_n*, %struct.b43_phy_n** %11, align 8
  %74 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %72
  %78 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %79 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %78, i32 0)
  br label %80

80:                                               ; preds = %77, %72
  ret void
}

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB8(i32, i32) #1

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
