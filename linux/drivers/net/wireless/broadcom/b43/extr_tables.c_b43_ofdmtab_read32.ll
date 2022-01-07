; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_read32.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_read32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i32 }

@B43_OFDMTAB_DIRECTION_READ = common dso_local global i64 0, align 8
@B43_PHY_OTABLECTL = common dso_local global i32 0, align 4
@B43_PHY_OTABLEQ = common dso_local global i32 0, align 4
@B43_PHY_OTABLEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_ofdmtab_read32(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_phy_g*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %11 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %9, align 4
  %17 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %18 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @B43_OFDMTAB_DIRECTION_READ, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %29, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %9, align 4
  %24 = sub nsw i32 %23, 1
  %25 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %26 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %24, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %22, %3
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %31 = load i32, i32* @B43_PHY_OTABLECTL, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @b43_phy_write(%struct.b43_wldev* %30, i32 %31, i32 %32)
  %34 = load i64, i64* @B43_OFDMTAB_DIRECTION_READ, align 8
  %35 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %36 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %35, i32 0, i32 0
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %29, %22
  %38 = load i32, i32* %9, align 4
  %39 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %40 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %42 = load i32, i32* @B43_PHY_OTABLEQ, align 4
  %43 = call i32 @b43_phy_read(%struct.b43_wldev* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = shl i32 %44, 16
  store i32 %45, i32* %8, align 4
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = load i32, i32* @B43_PHY_OTABLEI, align 4
  %48 = call i32 @b43_phy_read(%struct.b43_wldev* %46, i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  ret i32 %51
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
