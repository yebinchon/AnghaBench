; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_lpphy.c_b43_lptab_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_tables_lpphy.c_b43_lptab_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_LPTAB_TYPEMASK = common dso_local global i32 0, align 4
@B43_LPPHY_TABLE_ADDR = common dso_local global i32 0, align 4
@B43_LPPHY_TABLEDATALO = common dso_local global i32 0, align 4
@B43_LPPHY_TABLEDATAHI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_lptab_write(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @B43_LPTAB_TYPEMASK, align 4
  %10 = and i32 %8, %9
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* @B43_LPTAB_TYPEMASK, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 65535
  %17 = zext i1 %16 to i32
  %18 = call i32 @B43_WARN_ON(i32 %17)
  %19 = load i32, i32* %7, align 4
  switch i32 %19, label %58 [
    i32 128, label %20
    i32 130, label %32
    i32 129, label %44
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %21, -256
  %23 = call i32 @B43_WARN_ON(i32 %22)
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %25 = load i32, i32* @B43_LPPHY_TABLE_ADDR, align 4
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @b43_phy_write(%struct.b43_wldev* %24, i32 %25, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %29 = load i32, i32* @B43_LPPHY_TABLEDATALO, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @b43_phy_write(%struct.b43_wldev* %28, i32 %29, i32 %30)
  br label %60

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = and i32 %33, -65536
  %35 = call i32 @B43_WARN_ON(i32 %34)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %37 = load i32, i32* @B43_LPPHY_TABLE_ADDR, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @b43_phy_write(%struct.b43_wldev* %36, i32 %37, i32 %38)
  %40 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %41 = load i32, i32* @B43_LPPHY_TABLEDATALO, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @b43_phy_write(%struct.b43_wldev* %40, i32 %41, i32 %42)
  br label %60

44:                                               ; preds = %3
  %45 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %46 = load i32, i32* @B43_LPPHY_TABLE_ADDR, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @b43_phy_write(%struct.b43_wldev* %45, i32 %46, i32 %47)
  %49 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %50 = load i32, i32* @B43_LPPHY_TABLEDATAHI, align 4
  %51 = load i32, i32* %6, align 4
  %52 = ashr i32 %51, 16
  %53 = call i32 @b43_phy_write(%struct.b43_wldev* %49, i32 %50, i32 %52)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %55 = load i32, i32* @B43_LPPHY_TABLEDATALO, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @b43_phy_write(%struct.b43_wldev* %54, i32 %55, i32 %56)
  br label %60

58:                                               ; preds = %3
  %59 = call i32 @B43_WARN_ON(i32 1)
  br label %60

60:                                               ; preds = %58, %44, %32, %20
  ret void
}

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_phy_write(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
