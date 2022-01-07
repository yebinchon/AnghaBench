; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i32 }

@B43_OFDMTAB_DIRECTION_WRITE = common dso_local global i64 0, align 8
@B43_PHY_OTABLECTL = common dso_local global i32 0, align 4
@B43_PHY_OTABLEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_ofdmtab_write16(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy_g*, align 8
  %10 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %13, align 8
  store %struct.b43_phy_g* %14, %struct.b43_phy_g** %9, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %7, align 4
  %17 = add nsw i32 %15, %16
  store i32 %17, i32* %10, align 4
  %18 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  %19 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @B43_OFDMTAB_DIRECTION_WRITE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %30, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 %24, 1
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %23, %4
  %31 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %32 = load i32, i32* @B43_PHY_OTABLECTL, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @b43_phy_write(%struct.b43_wldev* %31, i32 %32, i32 %33)
  %35 = load i64, i64* @B43_OFDMTAB_DIRECTION_WRITE, align 8
  %36 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  %37 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %30, %23
  %39 = load i32, i32* %10, align 4
  %40 = load %struct.b43_phy_g*, %struct.b43_phy_g** %9, align 8
  %41 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %43 = load i32, i32* @B43_PHY_OTABLEI, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @b43_phy_write(%struct.b43_wldev* %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
