; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_update_tx_cal_ladder.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_update_tx_cal_ladder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_6__ = type { i64, i64 }
%struct.b43_wldev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }

@ladder_lo = common dso_local global %struct.TYPE_5__* null, align 8
@ladder_iq = common dso_local global %struct.TYPE_6__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i64)* @b43_nphy_update_tx_cal_ladder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_nphy_update_tx_cal_ladder(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.b43_phy_n*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.b43_phy_n*, %struct.b43_phy_n** %12, align 8
  store %struct.b43_phy_n* %13, %struct.b43_phy_n** %5, align 8
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %5, align 8
  %15 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %9, align 8
  %17 = load i64, i64* %4, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i64, i64* %9, align 8
  %21 = ashr i64 %20, 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %19, %2
  %23 = load i64, i64* %9, align 8
  %24 = and i64 %23, 255
  store i64 %24, i64* %9, align 8
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %78, %22
  %26 = load i32, i32* %6, align 4
  %27 = icmp slt i32 %26, 18
  br i1 %27, label %28, label %81

28:                                               ; preds = %25
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ladder_lo, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* %9, align 8
  %36 = mul nsw i64 %34, %35
  %37 = sdiv i64 %36, 100
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = and i64 %38, 255
  %40 = shl i64 %39, 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** @ladder_lo, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = or i64 %40, %46
  store i64 %47, i64* %8, align 8
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @B43_NTAB16(i32 15, i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @b43_ntab_write(%struct.b43_wldev* %48, i32 %50, i64 %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ladder_iq, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %9, align 8
  %60 = mul nsw i64 %58, %59
  %61 = sdiv i64 %60, 100
  store i64 %61, i64* %7, align 8
  %62 = load i64, i64* %7, align 8
  %63 = and i64 %62, 255
  %64 = shl i64 %63, 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** @ladder_iq, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = or i64 %64, %70
  store i64 %71, i64* %8, align 8
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 32
  %75 = call i32 @B43_NTAB16(i32 15, i32 %74)
  %76 = load i64, i64* %8, align 8
  %77 = call i32 @b43_ntab_write(%struct.b43_wldev* %72, i32 %75, i64 %76)
  br label %78

78:                                               ; preds = %28
  %79 = load i32, i32* %6, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %6, align 4
  br label %25

81:                                               ; preds = %25
  ret void
}

declare dso_local i32 @b43_ntab_write(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @B43_NTAB16(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
