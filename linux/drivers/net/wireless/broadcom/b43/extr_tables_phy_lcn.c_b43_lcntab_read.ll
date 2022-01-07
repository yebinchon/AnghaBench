; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_lcntab_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_phy_lcn.c_b43_lcntab_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LCNTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATALO = common dso_local global i32 0, align 4
@B43_PHY_LCN_TABLE_DATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_lcntab_read(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @B43_LCNTAB_TYPEMASK, align 4
  %9 = and i32 %7, %8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* @B43_LCNTAB_TYPEMASK, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp sgt i32 %14, 65535
  %16 = zext i1 %15 to i32
  %17 = call i32 @B43_WARN_ON(i32 %16)
  %18 = load i32, i32* %5, align 4
  switch i32 %18, label %50 [
    i32 128, label %19
    i32 130, label %28
    i32 129, label %36
  ]

19:                                               ; preds = %2
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @b43_phy_write(%struct.b43_wldev* %20, i32 %21, i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %26 = call i32 @b43_phy_read(%struct.b43_wldev* %24, i32 %25)
  %27 = and i32 %26, 255
  store i32 %27, i32* %6, align 4
  br label %52

28:                                               ; preds = %2
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @b43_phy_write(%struct.b43_wldev* %29, i32 %30, i32 %31)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %35 = call i32 @b43_phy_read(%struct.b43_wldev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  br label %52

36:                                               ; preds = %2
  %37 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %38 = load i32, i32* @B43_PHY_LCN_TABLE_ADDR, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @b43_phy_write(%struct.b43_wldev* %37, i32 %38, i32 %39)
  %41 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %42 = load i32, i32* @B43_PHY_LCN_TABLE_DATALO, align 4
  %43 = call i32 @b43_phy_read(%struct.b43_wldev* %41, i32 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* @B43_PHY_LCN_TABLE_DATAHI, align 4
  %46 = call i32 @b43_phy_read(%struct.b43_wldev* %44, i32 %45)
  %47 = shl i32 %46, 16
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %52

50:                                               ; preds = %2
  %51 = call i32 @B43_WARN_ON(i32 1)
  store i32 0, i32* %6, align 4
  br label %52

52:                                               ; preds = %50, %36, %28, %19
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
