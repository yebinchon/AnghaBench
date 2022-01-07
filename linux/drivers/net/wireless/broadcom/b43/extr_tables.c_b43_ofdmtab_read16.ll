; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables.c_b43_ofdmtab_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i64, i32 }

@B43_OFDMTAB_DIRECTION_READ = common dso_local global i64 0, align 8
@B43_PHY_OTABLECTL = common dso_local global i32 0, align 4
@B43_PHY_OTABLEI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_ofdmtab_read16(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_phy_g*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.b43_phy_g*, %struct.b43_phy_g** %11, align 8
  store %struct.b43_phy_g* %12, %struct.b43_phy_g** %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %6, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %8, align 4
  %16 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %17 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @B43_OFDMTAB_DIRECTION_READ, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = sub nsw i32 %22, 1
  %24 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %25 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %21, %3
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %30 = load i32, i32* @B43_PHY_OTABLECTL, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load i64, i64* @B43_OFDMTAB_DIRECTION_READ, align 8
  %34 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %35 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %34, i32 0, i32 0
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %28, %21
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.b43_phy_g*, %struct.b43_phy_g** %7, align 8
  %39 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 8
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load i32, i32* @B43_PHY_OTABLEI, align 4
  %42 = call i32 @b43_phy_read(%struct.b43_wldev* %40, i32 %41)
  ret i32 %42
}

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
