; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_tssi_power_lt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_gphy_tssi_power_lt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_gphy_tssi_power_lt_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_tssi_power_lt_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy_g*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %6 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %7 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.b43_phy_g*, %struct.b43_phy_g** %8, align 8
  store %struct.b43_phy_g* %9, %struct.b43_phy_g** %3, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %24, %1
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %11, 32
  br i1 %12, label %13, label %27

13:                                               ; preds = %10
  %14 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %17 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %14, i32 15392, i32 %15, i64 %22)
  br label %24

24:                                               ; preds = %13
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %10

27:                                               ; preds = %10
  store i32 32, i32* %4, align 4
  br label %28

28:                                               ; preds = %43, %27
  %29 = load i32, i32* %4, align 4
  %30 = icmp slt i32 %29, 64
  br i1 %30, label %31, label %46

31:                                               ; preds = %28
  %32 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sub nsw i32 %33, 32
  %35 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %36 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %37, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @b43_ofdmtab_write16(%struct.b43_wldev* %32, i32 15360, i32 %34, i64 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %4, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %4, align 4
  br label %28

46:                                               ; preds = %28
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %77, %46
  %48 = load i32, i32* %4, align 4
  %49 = icmp slt i32 %48, 64
  br i1 %49, label %50, label %80

50:                                               ; preds = %47
  %51 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %52 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %5, align 4
  %59 = load %struct.b43_phy_g*, %struct.b43_phy_g** %3, align 8
  %60 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %61, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = trunc i64 %66 to i32
  %68 = shl i32 %67, 8
  %69 = load i32, i32* %5, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %5, align 4
  %71 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sdiv i32 %72, 2
  %74 = add nsw i32 896, %73
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @b43_phy_write(%struct.b43_wldev* %71, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %50
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 2
  store i32 %79, i32* %4, align 4
  br label %47

80:                                               ; preds = %47
  ret void
}

declare dso_local i32 @b43_ofdmtab_write16(%struct.b43_wldev*, i32, i32, i64) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
